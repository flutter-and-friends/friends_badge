/// The badge's BLE image-transfer protocol (Nordic UART Service flavor).
///
/// Reconstructed from the vendor Android app; `docs/badge-ble-protocol.md`
/// is the authoritative reference and cites the decompiled sources
/// (`WriteActivity.java`, `BaseTxManager.java`, `HexUtils.java`,
/// `ImgUtil.java`, `CRC32Utils.java`) for every rule encoded here.
library;

import 'dart:typed_data';

import 'package:friends_badge/src/utils/color_palette.dart';
import 'package:friends_badge/src/utils/get_checksum.dart';

/// MTU to negotiate after connecting.
///
/// Image packets are single GATT writes of up to [badgeMaxPacketSize]
/// bytes. At the stack default of MTU 23 only 20 bytes fit per write and
/// the write is rejected, so the negotiation must complete (and the
/// negotiated value must be checked) before any image data is sent.
const int badgeMtu = 247;

/// Largest packet on the wire: 7 header bytes + 220 payload.
const int badgeMaxPacketSize = 227;

/// Minimum negotiated MTU that can carry [badgeMaxPacketSize] bytes
/// (MTU - 3 bytes of ATT overhead).
const int badgeMinMtuForImageTransfer = badgeMaxPacketSize + 3;

/// Payload bytes per image-data packet for 1bpp planes (BW, BWR).
const int chunkSize1Bpp = 220;

/// Payload bytes per image-data packet for the 2bpp BWYR plane.
const int chunkSize2Bpp = 210;

/// Frame opener shared by every packet in both directions.
const int frameStartByte = 0xa5;

/// Commands. The legacy names in the decompiled code are stolen from a
/// cabinet-lock app (`CmdCenter.java`); the mapping to badge function is
/// unambiguous.
enum BleCommand {
  /// `A5 00 11 11` — begins a transfer. The badge answers with an ACK
  /// whose status byte must be `responseOkStatus` before any image data
  /// is sent, and whose echo is required to be waited on.
  start(0x11),

  /// `A5 LEN 12 PP OH OL payload CHK` — one image-data chunk. Never ACKed.
  imageData(0x12),

  /// `A5 00 13 13` — asks the badge for its CRC-32 of the received data.
  crcQuery(0x13),

  /// `A5 00 14 14` — refresh (flush the received image to the display).
  refresh(0x14);

  const BleCommand(this.value);

  final int value;

  static BleCommand? fromValue(int value) {
    for (final command in BleCommand.values) {
      if (command.value == value) {
        return command;
      }
    }
    return null;
  }
}

/// The start-ACK status byte declared "card recognized" by the vendor app;
/// any other value means the badge refuses the transfer ("unknown card").
const int responseOkStatus = 0x00;

/// How many full start→data→CRC sequences may run: the first attempt plus
/// two restarts after a CRC mismatch (the vendor aborts once its failure
/// counter reaches 2 on a response arriving — 3 attempts total).
const int maxTransferAttempts = 3;

/// A failed GATT write is retried exactly once before giving up
/// (the vendor collects failed packets and resent one batch).
const int maxWriteAttemptsPerPacket = 2;

// Vendor pacing, all observed in the decompiled app. Tolerance of tighter
// or looser gaps is unknown — these values are the only proven-good ones.
// (BaseTxManager.java / WriteActivity.java line numbers in the protocol doc.)

/// Pause between MTU/negotiation and enabling notifications.
const Duration preNotifyDelay = Duration(milliseconds: 200);

/// Pause before the start command is sent once notifications are on.
const Duration startCommandDelay = Duration(milliseconds: 300);

/// Pause before every single GATT write.
const Duration preWriteDelay = Duration(milliseconds: 50);

/// Pause after every image-data packet.
const Duration postWriteDelay = Duration(milliseconds: 30);

/// Pause after the refresh ACK before disconnecting, so the badge can
/// settle (the vendor schedules its disconnect the same way).
const Duration postRefreshDelay = Duration(seconds: 2);

/// Upper bound for waiting on one badge response frame.
const Duration responseTimeout = Duration(seconds: 5);

/// One image-data slice: offset is plane-relative, big-endian on the wire.
typedef ImageChunk = ({int offset, Uint8List payload});

/// Splits [plane] into offset-tagged chunks of the given size.
List<ImageChunk> chunkImagePlane(Uint8List plane, int chunkSize) {
  final chunks = <ImageChunk>[];
  for (var offset = 0; offset < plane.length; offset += chunkSize) {
    final end = offset + chunkSize > plane.length
        ? plane.length
        : offset + chunkSize;
    final payload = Uint8List.sublistView(plane, offset, end);
    chunks.add((offset: offset, payload: payload));
  }
  return chunks;
}

/// Payload chunk size used for a palette's planes.
int chunkSizeFor(ColorPalette palette) => switch (palette) {
  ColorPalette.blackWhiteYellowRed => chunkSize2Bpp,
  _ => chunkSize1Bpp,
};

/// Number of image planes actually transferred for a palette. (The
/// converter may produce two arrays for BW — the red-overlay array is
/// vendor parity but never transferred.)
int expectedPlaneCount(ColorPalette palette) => switch (palette) {
  ColorPalette.blackWhiteRed => 2,
  _ => 1,
};

/// Builds a full image-data frame.
///
/// Layout: `A5 | LEN | 0x12 | PP | OH | OL | payload | CHK` where LEN is
/// `3 + payload.length` (plane + two offset bytes + payload) and CHK =
/// `(LEN + 0x12 + PP + OH + OL + Σ payload) & 0xFF`. The offset is written
/// big-endian — `HexUtils.intToBytes` in the vendor code.
Uint8List buildImageDataChunkFrame({
  required int planeIndex,
  required int offset,
  required List<int> payload,
}) {
  assert(offset >= 0 && offset <= 0xffff, 'offset must fit in two bytes');
  assert(planeIndex >= 0 && planeIndex <= 0xff);

  final frame = <int>[
    frameStartByte,
    3 + payload.length,
    BleCommand.imageData.value,
    planeIndex,
    (offset >> 8) & 0xff,
    offset & 0xff,
    ...payload,
  ];
  return Uint8List.fromList([...frame, getChecksum(frame)]);
}

/// Builds an empty-data command frame, e.g. `A5 00 11 11` for start.
/// The checksum of an empty command degenerates to the command byte.
Uint8List buildCommandFrame(BleCommand command) {
  final frame = [frameStartByte, 0, command.value];
  return Uint8List.fromList([...frame, getChecksum(frame)]);
}

/// Result of parsing a badge response frame.
sealed class BadgeResponse {
  const BadgeResponse();
}

/// Reply to [BleCommand.start]: `A5 01 11 <status> <chk>` (frame layout
/// inferred — the vendor handler only consumes the command and status).
class StartAck extends BadgeResponse {
  const StartAck({required this.status});

  /// `responseOkStatus` means the badge accepted the transfer. Any other
  /// value is the vendor app's "unknown card" path.
  final int status;
}

/// Reply to [BleCommand.crcQuery]:
/// `A5 05 13 <status?> <crc32, big-endian> <chk>` (layout inferred — see
/// the protocol doc's device-capture checklist).
class CrcResponse extends BadgeResponse {
  const CrcResponse({required this.crc32});

  /// The badge's CRC-32 of everything it received, big-endian.
  final int crc32;
}

/// Reply to [BleCommand.refresh]: any frame whose command byte is `0x14`.
class RefreshAck extends BadgeResponse {
  const RefreshAck();
}

/// Parses one notification frame; returns `null` for anything the handler
/// should ignore (e.g. `0x12` echoes, which the firmware never sends).
BadgeResponse? parseBadgeResponse(List<int> frame) {
  if (frame.length < 4 || frame[0] != frameStartByte) {
    return null;
  }
  switch (BleCommand.fromValue(frame[2])) {
    case BleCommand.start:
      return StartAck(status: frame[3]);
    case BleCommand.crcQuery:
      if (frame.length < 8) {
        return null;
      }
      final crc32 =
          (frame[4] << 24) | (frame[5] << 16) | (frame[6] << 8) | frame[7];
      return CrcResponse(crc32: crc32);
    case BleCommand.refresh:
      return const RefreshAck();
    case BleCommand.imageData:
    case null:
      return null;
  }
}

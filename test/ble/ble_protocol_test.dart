import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:friends_badge/src/utils/ble_protocol.dart';
import 'package:friends_badge/src/utils/color_palette.dart';

Uint8List _zeros(int length) => Uint8List(length);

void main() {
  group('empty command frames', () {
    test('start is A5 00 11 11', () {
      expect(buildCommandFrame(BleCommand.start), [0xA5, 0x00, 0x11, 0x11]);
    });

    test('CRC query is A5 00 13 13', () {
      expect(buildCommandFrame(BleCommand.crcQuery), [0xA5, 0x00, 0x13, 0x13]);
    });

    test('refresh is A5 00 14 14', () {
      expect(buildCommandFrame(BleCommand.refresh), [0xA5, 0x00, 0x14, 0x14]);
    });
  });

  group('image data frames', () {
    test('checksum arithmetic on a known small packet', () {
      // A5 07 12 00 00 00 11 22 33 44 C3 — CHK sums LEN + CMD + plane +
      // offsets + payload bytes and is masked to 8 bits:
      // (0x07 + 0x12 + 0 + 0 + 0 + 0x11 + 0x22 + 0x33 + 0x44) & 0xFF = 0xC3.
      final frame = buildImageDataChunkFrame(
        planeIndex: 0,
        offset: 0,
        payload: [0x11, 0x22, 0x33, 0x44],
      );
      expect(frame, [
        0xA5, 0x07, 0x12, 0x00, 0x00, 0x00, //
        0x11, 0x22, 0x33, 0x44,
        0xC3,
      ]);
    });

    test('offset is written big-endian', () {
      // 0x00DC = 220 decimal, chunk 1 of a plane: HexUtils.intToBytes
      // writes [hi, lo] = [0x00, 0xDC].
      final frame = buildImageDataChunkFrame(
        planeIndex: 0,
        offset: 0x00DC,
        payload: const [],
      );
      expect(frame.sublist(4, 6), [0x00, 0xDC]);
      expect(frame, [0xA5, 0x03, 0x12, 0x00, 0x00, 0xDC, 0xF1]);
    });

    test('plane index byte carries the palette plane', () {
      final frame = buildImageDataChunkFrame(
        planeIndex: 1,
        offset: 0x3020,
        payload: const [],
      );
      expect(frame[3], 0x01);
      expect(frame.sublist(4, 6), [0x30, 0x20]);
    });

    test('a full 1bpp packet is 227 bytes (LEN 0xDF)', () {
      final frame = buildImageDataChunkFrame(
        planeIndex: 0,
        offset: 0,
        payload: _zeros(chunkSize1Bpp),
      );
      expect(frame.length, badgeMaxPacketSize);
      expect(frame[1], 0xDF);
      // CHK = (0xDF + 0x12 + 0 + 0 + 0) & 0xFF (zero payload).
      expect(frame.last, 0xF1);
    });

    test('a full 2bpp packet is 217 bytes (payload 210, LEN 0xD5)', () {
      final frame = buildImageDataChunkFrame(
        planeIndex: 0,
        offset: 0,
        payload: _zeros(chunkSize2Bpp),
      );
      expect(frame.length, chunkSize2Bpp + 7);
      expect(frame[1], 0xD5);
      expect(frame.length, lessThan(badgeMaxPacketSize));
    });
  });

  group('plane chunking', () {
    test('a 12480-byte 1bpp plane -> 57 packets, last holds 160 bytes', () {
      final chunks = chunkImagePlane(_zeros(12480), chunkSize1Bpp);
      expect(chunks, hasLength(57));
      for (final chunk in chunks.take(56)) {
        expect(chunk.payload.length, 220);
      }
      expect(chunks.last.payload.length, 160);
      expect(chunks.last.offset, 12320); // 56 * 220 == 0x3020
      expect(chunks.first.offset, 0);
    });

    test('a 24960-byte 2bpp plane -> 119 packets, last holds 180 bytes', () {
      final chunks = chunkImagePlane(_zeros(24960), chunkSize2Bpp);
      expect(chunks, hasLength(119));
      expect(chunks.last.payload.length, 24960 - 118 * 210);
      expect(chunks.last.offset, 118 * 210);
    });
  });

  group('palette-driven protocol parameters', () {
    test('chunk sizes', () {
      expect(
        chunkSizeFor(ColorPalette.blackWhiteYellowRed),
        chunkSize2Bpp,
      );
      expect(chunkSizeFor(ColorPalette.blackWhite), chunkSize1Bpp);
      expect(chunkSizeFor(ColorPalette.blackWhiteRed), chunkSize1Bpp);
    });

    test('plane counts', () {
      expect(expectedPlaneCount(ColorPalette.blackWhiteRed), 2);
      expect(expectedPlaneCount(ColorPalette.blackWhiteYellowRed), 1);
      expect(expectedPlaneCount(ColorPalette.blackWhite), 1);
    });
  });

  group('response parsing', () {
    test('start ACK with OK status', () {
      // A5 01 11 00 12 (inferred layout, vendor handler consumes cmd+status).
      final response = parseBadgeResponse([0xA5, 0x01, 0x11, 0x00, 0x12]);
      expect(response, isA<StartAck>());
      expect((response! as StartAck).status, responseOkStatus);
    });

    test('start ACK with a failure status code', () {
      final response = parseBadgeResponse([0xA5, 0x01, 0x11, 0x07, 0x19]);
      final startAck = response;
      expect(startAck, isA<StartAck>());
      expect((startAck! as StartAck).status, isNot(responseOkStatus));
    });

    test('CRC response is decoded as a big-endian uint32', () {
      // A5 05 13 00 <FD A4 11 40> CHK — CHK =
      // (0x05+0x13+0x00+0xFD+0xA4+0x11+0x40) & 0xFF = 0x0A.
      final response = parseBadgeResponse(
        [0xA5, 0x05, 0x13, 0x00, 0xFD, 0xA4, 0x11, 0x40, 0x0A],
      );
      expect(response, isA<CrcResponse>());
      expect((response! as CrcResponse).crc32, 0xFDA41140);
    });

    test('refresh ACK', () {
      expect(
        parseBadgeResponse([0xA5, 0x00, 0x14, 0x14]),
        isA<RefreshAck>(),
      );
    });

    test('non-frame and unhandled frames are ignored', () {
      expect(parseBadgeResponse([0x00, 0x01]), isNull);
      // A 0x12 echo would fall through unhandled, as in the vendor app.
      expect(
        parseBadgeResponse([0xA5, 0x07, 0x12, 0x00, 0x00, 0x00]),
        isNull,
      );
      // Truncated CRC response.
      expect(parseBadgeResponse([0xA5, 0x05, 0x13, 0x00, 0xFD]), isNull);
    });
  });
}

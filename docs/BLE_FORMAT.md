# BLE Data Format for Badge Communication

This document summarizes the BLE protocol used to write images to the badge.
**The canonical, byte-exact protocol reference is
[badge-ble-protocol.md](badge-ble-protocol.md)** — it carries the full
reconstruction (with decompile evidence and device-validation status) and is
kept as the single source of truth; devices-verified 2026-09-05.

> **Correction history:** an earlier version of this document described a
> `0xBB … 0x7E` packet envelope with an address byte and per-octet sum
> checksum. That framing does **not** match the vendor implementation and was
> removed. The correct framing is below.

## GATT Service and Characteristics

Nordic UART Service (NUS) pattern:

- **Service UUID:** `6e400001-b5a3-f393-e0a9-e50e24dcca9e`
- **Write Characteristic UUID:** `6e400002-b5a3-f393-e0a9-e50e24dcca9e`
- **Notify Characteristic UUID:** `6e400003-b5a3-f393-e0a9-e50e24dcca9e`

Image packets are sent as single GATT writes of up to **227 bytes** — the app
must request **MTU 247** (and confirm the negotiated value) before
transferring; the vendor app never requests a higher priority and never
splits packets at application level.

## Packet Format

All frames: `A5 | LEN | CMD | DATA[LEN] | CHK`

| Field | Meaning |
|:------|:--------|
| `A5` | frame start marker |
| `LEN` | byte count of DATA (bytes after CMD, excluding A5/LEN/CMD/CHK); for image chunks LEN = 3 + n |
| `CMD` | command byte (see below) |
| `DATA` | payload; for image chunks: plane index, 2-byte BIG-endian offset, n payload bytes |
| `CHK` | `(LEN + CMD + Σ DATA) & 0xFF` |

## Commands

| Command | Value | Meaning |
|:------------------------|:------|:--------|
| Start transfer | `0x11` | `A5 00 11 11`; badge ACKs with status byte — must be `0x00` before any data is sent |
| Image data chunk | `0x12` | plane byte + big-endian u16 plane-relative offset + payload (≤220 B BW/BWR, ≤210 B BWYR, 2bpp) |
| CRC query | `0x13` | `A5 00 13 13`; badge replies with CRC-32 (big-endian) of the image planes |
| Refresh / display | `0x14` | `A5 00 14 14`; commit and redraw; final frame of the sequence |

There are **no per-chunk ACKs**: integrity is enforced by the per-packet
checksum plus a whole-image CRC (`0x13`), with automatic restart on mismatch.

The vendor's `CmdCenter` constant names (e.g. `CMD_getCabinetLockStatus`) are
inherited from an unrelated cabinet-lock firmware and are misleading — the
semantic meanings above are the real ones for the badge.

## Communication Flow (as implemented and device-verified)

1. Connect (GATT) → request MTU 247 → confirm negotiated MTU.
2. Enable notifications on the notify characteristic (**before** any command).
3. Send `0x11` start; await ACK with status `0x00` (else abort).
4. Send image chunks (`0x12`), paced ≈ 80 ms apart (vendor: 50 ms pre- / 30 ms
   post-write); resend a failed chunk once.
5. Send `0x13` CRC query; compare with locally computed CRC (custom variant:
   poly `0xEDB88320`, MSB-first, init 0, no reflection, no final XOR — see
   canonical doc §4); restart whole transfer on mismatch (≤2 retries).
6. Send `0x14` refresh; await echo; settle ~2 s; disconnect.

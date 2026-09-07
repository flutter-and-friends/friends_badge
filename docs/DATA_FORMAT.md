# Common Data Format for Badge Communication

This document outlines the common data format used for communication between the mobile application
and the smart badge, for both NFC and BLE.

The **canonical protocol reference is [badge-ble-protocol.md](badge-ble-protocol.md)** (BLE,
device-verified), with the NFC path in [NFC_FORMAT.md](NFC_FORMAT.md).

## Final Image Data Format

The final image data sent to the badge is a **raw, uncompressed bitmap**: a byte array where each
bit (or pair of bits) represents a pixel, ordered **column-major**. There is no header, no
dimensions field, and no compression — the badge is driven by chunk offsets and assumes the fixed
dimensions of the badge model (3.7″ active badges: **240×416**).

Details that matter if you reimplement packing (all vendor-observed, device-validated over BLE):

| Mode | Bits per pixel | Pixel test (gray = 0.3R + 0.59G + 0.11B) | Packing |
|:-----|:---------------|:------------------------------------------|:--------|
| BW | 1 | bit = **1 if gray ≤ 95** (1 = black) | column-major, **8-column groups with rows reversed**: `byteidx = (x/8)*height + (height-1-y)`; MSB = leftmost column |
| BWR | 1 (two planes: plane 0 black-plane, plane 1 red-plane) | plane 0 **INVERTED vs BW**: bit = **1 if gray > 95** (1 = white); plane 1: bit = 1 iff R > 95 ∧ G < 95 ∧ B < 95 (red) | same packing as BW, sent as plane 0 then plane 1 |
| BWYR | 2 | 0 = black (gray ≤ 95), 1 = white, 3 = red (R > 95 ∧ G < 95 ∧ B < 95), 2 = yellow (R > 95 ∧ G > 95 ∧ B < 95) | `byteidx = (x/4)*height + y` (**no** row reversal); leftmost pixel in the top 2 bits |

Payload/chunk sizes at 240×416: 1 bpp = 12 480 B/plane (57 chunks of ≤220 B); 2 bpp = 24 960 B
(119 chunks of 210 B). The trailing whole-image CRC (BLE) uses a custom CRC-32 variant — see the
canonical doc; a standard crc32 will not match.

Pixels reach this format via fit-inside scaling onto the exact badge dimensions plus palette
quantization with two-row error-diffusion dithering (see [NOTES.md](NOTES.md)). This byte array is
then chunked and sent using the NFC or BLE protocol.

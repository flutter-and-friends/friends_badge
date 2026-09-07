# Gemini Agent Context

This file provides context for the Gemini agent working on the `friends_badge` project.

## Project Goal

The main goal is to port an existing Android application for programming e-paper badges to a
reusable Flutter package. An example application will also be developed to demonstrate the package's
usage.

## Current Status

The port is **working end-to-end over BLE** (device-verified 2026-09-05). Key references:

- **[docs/badge-ble-protocol.md](docs/badge-ble-protocol.md)** — canonical, byte-exact BLE protocol
  (reconstructed from the decompiled vendor APK, cross-verified, device-validated). Always consult
  this before touching transport or image-encoding code.
- **[docs/DATA_FORMAT.md](docs/DATA_FORMAT.md)** — image bit-packing spec (column-major, per-palette
  polarity, BWYR 2bpp).
- **[docs/NFC_FORMAT.md](docs/NFC_FORMAT.md)** — NFC paths (active-badge ISO-DEP flow is
  vendor-observed but **not yet device-validated**; the passive section is tentative).
- **[docs/TODO.md](docs/TODO.md)** — current progress and remaining work.
- **[docs/NOTES.md](docs/NOTES.md)** — gotchas for this port (some entries now marked resolved).

⚠️ An earlier set of docs (pre-2026-09-05) described a wrong BLE packet envelope (`0xBB…0x7E`) and
wrongly attributed Floyd-Steinberg dithering; those were corrected. Trust the canonical reference
over any other summary.

## Instructions for the Next Agent

1. **Read `docs/badge-ble-protocol.md` first** for anything touching BLE, image encoding, CRC, or
   the transfer state machine.
2. Check `docs/TODO.md` for current remaining work (NFC validation on device, dither-method
   selection, iOS NFC support).
3. The package pins a modern SDK; build on the host toolchain, not in the workspace container.

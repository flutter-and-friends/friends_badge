# NFC Data Format for Badge Communication

This document outlines the NFC data format used for communication between the mobile application
and the smart badge, based on ISO 14443-4 (ISO-DEP).

> **Correction (2026-09-05):** the former "Active Badge Protocol" section described raw
> `NfcA`-level `0xa2` / `0x30` page reads/writes with 4-byte chunks. That does not match the
> vendor app, which uses **ISO-DEP APDUs** (`IsoDep`/`transceive`) — and it does not match this
> package's NFC implementation either, which is **in production use**. The active-badge flow below
> is the vendor-observed one, cross-checked byte-for-byte against the port. The "passive badge"
> section at the bottom is historical and remains unverified.

## Tag Type

The badge is an **NFC Forum Type 4 Tag** (ISO 14443-4, `IsoDep`).

## Active Badge Protocol (vendor-observed)

Used for badges that have a battery and support Bluetooth. All frames are CAPDU (CLT01-style
custom) APDUs exchanged via `IsoDep.transceive`:

### Command structure

| Field | CLA | INS/CMD | P1/P2 | Data |
|:------|:----|:--------|:------|:-----|
| Spec query | `D0` | `D1` | `03 00` | `01` (payload length) |
| Start transfer | `D0` | `D1` | `00 00` | `00` |
| Data chunk | `D0` | `D1` | `01` (plane 0, more) / `02` (plane 0, last) / `04` (plane 1, more) / `05` (plane 1, last) | `00` + LEN + ≤248-byte payload |
| Commit | `D0` | `D1` | `03 00` | `00` |

### Sequence

This is the flow the port implements (`common_nfc_implementation.dart`) and
that is in production use over NFC. The vendor app additionally sends the
start command in step 3; the port omits it and badges accept the transfer
without it — treat it as **optional**.

1. Connect via `IsoDep` after tap.
2. **Spec query:** `D0 D1 03 00 01` → badge reports model/spec (e.g. bytes mapping `03/04/05` to
   the 3.7″ BWR/BWRY/BW variants).
3. *(optional, vendor-app only)* **Start transfer:** `D0 D1 00 00 00`.
4. **Plane 0 data:** chunks of up to **248 bytes**, wrapped as
   `D0 D1 <01|02> 00 <LEN> <payload>` — `01` while more chunks follow, `02` on the last chunk.
5. **Plane 1 data (BWR/BWRY):** same chunks with `04|05` in the first parameter byte.
6. **Commit/display:** `D0 D1 03 00 00`.

The vendor app checks `9000` status words on each exchange; the port does not
verify them in the transfer path (and the iOS `NfcWriter` strips the status
words from responses), and this has no observed negative effect.

There is **no per-chunk checksum** on the NFC path; same image bit packing as BLE
(see [DATA_FORMAT.md](DATA_FORMAT.md)).

## Passive Badge Protocol (from earlier analysis — not device-verified)

Used for badges powered by the NFC field itself (no battery). This section is retained from the
original reverse-engineering notes and has **not** been cross-checked against decompiled code;
treat as tentative.

### Commands

- **Handshake:** `C0 C1 00 00 00`
- **Write:** `D0 D1 <02 last | 01 more> 00 <LEN> <payload>` (chunked)
- **Terminate:** `D0 D1 03 00 00`

### Status codes (earlier analysis)

| Code | Value | Description |
|:-----|:------|:------------|
| SUCCESS | `0x0000` | Ready / operation successful |
| end-of-transfer | `0x0200` | Marks end of data transfer |

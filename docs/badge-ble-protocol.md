# Badge BLE Image-Write Protocol — Reference

Reconstructed from the decompiled vendor Android app (`android_app/sources`,
present at commit `5f2b30f0`), then independently re-verified against this
repo's `feat/ble` implementation and against Nordic/Bluetooth documentation.
All headline findings carry a **CONFIRMED** verification status; labels:

> **DEVICE-VALIDATED (2026-09-05):** the full BLE transfer — handshake, ACK
> parsing, 220/210 chunking, custom CRC compare, refresh — succeeded on real
> hardware with this spec. The formerly unverified items in §7 are updated
> per that test. This is the canonical protocol reference; sibling docs
> (BLE_FORMAT.md, DATA_FORMAT.md, …) summarize and point here.

- **[observed]** — directly visible in decompiled code
- **[inferred]** — follows from code but not explicit (layout details of badge→app frames)
- **[unverified]** — needs a capture on a real device

Every claim cites `file:line` in the decompiled vendor sources.

---

## 1. Connection lifecycle [observed]

From `cn/highlight/p004tx/BaseTxManager.java` and `cn/highlight/p004tx/ble/`:

| Item | Value | Evidence |
|---|---|---|
| Service UUID | `6e400001-b5a3-f393-e0a9-e50e24dcca9e` (Nordic UART Service, documented by Nordic) | BaseTxManager.java:40 |
| Write characteristic | `6e400002-b5a3-f393-e0a9-e50e24dcca9e` (NUS RX) | BaseTxManager.java:41 |
| Notify characteristic | `6e400003-b5a3-f393-e0a9-e50e24dcca9e` (NUS TX) | BaseTxManager.java:39 |
| MTU | `requestMtu(247)` immediately on connect, fire-and-forget (not awaited) | BaseTxManager.java:213 |
| CCCD | standard `00002902-…`, `ENABLE_NOTIFICATION_VALUE` | BleConnector.java:247–284 |
| Write type | default = Write Request (with response); `setWriteType` is never called | BleConnector.java:343–373 |
| Connection priority | never requested | — |
| Splitting | none at app level: each protocol packet is ONE GATT write relying on MTU 247 (payload 244 ≥ 227) | BaseTxManager.java:271 |
| Timeouts | connect 10 s, per-op 5 s, reconnect ×1 @ 2 s | BaseTxManager.java:178; BleManager.java:53,57 |
| Scan match | name `TAG_SR9837` **and** scan-record bytes 7..13 == NFC tag UID hex | WriteActivity.java:992–1016 |

**Connect sequence with timing** (BaseTxManager.java:212–295, WriteActivity.java:1069–1105):

```
connectGatt → onConnectSuccess
  t+0ms     requestMtu(247)                        [not awaited]
  t+500ms   pause 200ms, then enable notify (CCCD) (BaseTxManager.java:232, 277)
  t+~700ms  attach notify listener
  t+1000ms  write A5 00 11 11                      [start command, 300ms delayed]
  ** wait for 0x11 echo with status byte 0x00 before ANY image data **
            (WriteActivity.java:788–803; bad status → "unknown card" → disconnect)
  t+2300ms  checkWrite(): abort/disconnect if transfer never started
```

---

## 2. Frame format

All frames: `A5 | LEN | CMD | DATA[LEN] | CHK`

- **LEN** = number of bytes after CMD, excluding A5/LEN/CMD/CHK. Image packets:
  LEN = 3 + n (plane + 2 offset bytes + n payload). Empty commands: LEN = 0.
  [inferred — only consistent reading; WriteActivity.java:1127]
- **CHK** = `(LEN + CMD + Σ DATA) & 0xFF` (`HexUtils.GetCheckSum`,
  HexUtils.java:163–169). Verified against `A5 00 11 11`, `A5 00 13 13`,
  `A5 00 14 14`.
- `CmdCenter` constant names are legacy (reused from a cabinet-lock app):
  `CMD_getCabinetLockStatus = 0x11` is the badge **start** command,
  `CMD_setCabinetSensor  = 0x12` is **image data** (CmdCenter.java:8,13).

---

## 3. Command reference

| # | Name | Dir | Full frame example | Fields | Evidence |
|---|---|---|---|---|---|
| 1 | Start transfer | app→badge | `A5 00 11 11` | no data | WriteActivity.java:1072, sent :1088 |
| 1r | Start ACK | badge→app | `A5 01 11 00 12` **[inferred]** | byte3 status: `00`=ok; else "unknown card" → disconnect after 1.5 s | WriteActivity.java:773–813; NDCMD.java:34 |
| 2 | Image data chunk | app→badge | `A5 DF 12 PP OOH OOL <n> CHK` | **PP = plane index** (0 = BW/black plane, 1 = red plane); bytes 4–5 offset **BIG-endian** (= `intToBytes` → `[i>>8, i]`, HexUtils.java:10–12), plane-relative (220×i or 210×i); n ≤ 220 (BW/BWR) / 210 (BWYR); total packet = n+7 (max 227, LEN `0xDF`) | WriteActivity.java:1125–1142 (BW), :1185–1202, :1231–1245 (BWR), :1288–1302 (BWYR). PP is a per-send literal: :1129=0, :1189=0, :1235=1, :1292=0 |
| 3 | CRC query | app→badge | `A5 00 13 13` | — | WriteActivity.java:1360 |
| 3r | CRC response | badge→app | `A5 05 13 00 <C3 C2 C1 C0> CHK` **[inferred]** | CRC-32 **big-endian**, compared as uppercase hex | WriteActivity.java:782, 824–834; CRC32Utils.java:9–11 |
| 4 | Refresh / display | app→badge | `A5 00 14 14` | — | WriteActivity.java:1390–1394 |
| 4r | Refresh ACK | badge→app | `A5 .. 14 ..` | byte2 == 0x14 → success; orderly disconnect +2 s | WriteActivity.java:779, 815–821, 1436–1445 |

**Per-chunk ACKs: none.** The notify handler switches only on `11`/`13`/`14`
(NDCMD.java:34–36; WriteActivity.java:767–846) — a `0x12` echo would fall
through unhandled. Video-rate integrity is enforced by per-packet checksum +
whole-image CRC only. Failed GATT writes are collected and resent once
(`dataReSend`). CRC mismatch → restart the whole sequence from `A5 00 11 11`
(max 2 retries). **[observed]**

### Transfer sequence (BWR; BW = one plane; BWYR = one 2bpp plane)

```
app                                badge
 |---- A5 00 11 11 ---------------->|   start
 |<--- A5 01 11 00 12 (inferred) ---|   ACK: byte3==00 or abort
 |---- A5 DF 12 00 00 00 <220> C --->|   plane 0, chunk 0  (offset 0x0000)
 |---- A5 DF 12 00 00 DC <220> C --->|   plane 0, chunk 1  (offset 0x00DC, BE)
 |   ... ~80 ms/packet: 50 ms pre-write (BaseTxManager.java:267)
 |        + 30 ms post-write (WriteActivity.java:1156) ...
 |---- A5 A7 12 00 30 20 <160> C --->|   plane 0 last (57 pkts, 12480 B @240×416)
 |---- A5 DF 12 01 00 00 <220> C --->|   plane 1 (red), chunk 0
 |   ... failed writes resent once ...
 |---- A5 00 13 13 ---------------->|   CRC query
 |<--- A5 05 13 00 <CRC32 BE> ------|   mismatch → restart from start (≤2×)
 |---- A5 00 14 14 ---------------->|   refresh
 |<--- A5 .. 14 .. ------------------|   done → disconnect +2 s
```

---

## 4. Image encoding [observed]

**Dimensions** (BadgeSpecificationUtils, smali switch tables — high
confidence): **3.7″ = 240×416** (all active/BLE badges; spec bytes 03/04/05 =
BWR/BWRY/BW), 2.6″ = 296×152, 2.9″ = 296×128.

**Pipeline**: source bitmap → fit-inside scale + centered onto exact
dimensions (ScaleBitmapUtils.java:9–24) → palette quantization with two-row
error-diffusion dither (weights 3/5/1 + 7, EPaperPicture.java:73–192;
palettes `[0]`=B/W, `[1]`=B/W/R, `[6]`=B/W/Y/R at :19) → bit-packing (ImgUtil.java):

| Mode | Planes | Pixel test | Packing |
|---|---|---|---|
| BW | 1 (PP=0) | gray = 0.3R+0.59G+0.11B; bit = **1 if gray ≤ 95 (1 = BLACK)** (ImgUtil.java:120) | byte idx = `(x/8)*height + (height-1-y)` — 8 columns per group, one byte per ROW, **rows bottom-to-top**; MSB = leftmost column, bit (7−x%8) (ImgUtil.java:98–131) |
| BWR | 2 (PP=0 then 1) | plane 0: bit = **1 if gray > 95 (1 = WHITE — INVERTED vs BW)** (ImgUtil.java:155); plane 1: bit = 1 iff R>95 ∧ G<95 ∧ B<95 (red) | same packing as BW (ImgUtil.java:133–166) |
| BWYR | 1, 2 bpp | 0=black (gray≤95), 1=white; 3=red (R>95∧G<95∧B<95), 2=yellow (R>95∧G>95∧B<95) | byte idx = `(x/4)*height + y` — rows **NOT** reversed; shift-left-2, leftmost pixel in top 2 bits (ImgUtil.java:168–199) |

Byte counts @240×416: 1 bpp = 12 480 B/plane (57 packets); 2 bpp = 24 960 B
(119 packets of 210). **No header, no dimensions, no compression** in the
payload — the badge is assumed offset-driven: plane size/offsets define
everything [unverified whether other chunk lengths are tolerated].

**CRC** (CRC32Utils.java): table-driven, poly `0xEDB88320`, **MSB-first,
init 0, no input/output reflection, no final XOR**. Check string:
CRC(`"123456789"`) = **`0xFDA41140`** (≠ zlib/standard 0xCBF43926). This
matches **no catalog CRC** — port the exact algorithm. It is algebraically a
plain CRC32-of-concatenation, so:
- BW, BWYR: `crc = crc32(plane0)`
- BWR: `crc = crc32(plane1, seed=crc32(plane0))` ≡ CRC over plane0‖plane1
  (WriteActivity.java:823–827)

---

## 5. Reimplementation requirements

1. NUS service `6e400001-…`, write `6e400002-…` (with response), notify
   `6e400003-…` via standard CCCD.
2. **Request MTU 247 and await it** before any image packet (packets up to
   227 B are single GATT writes; at default MTU 23 the write is rejected: only
   MTU−3 = 20 bytes fit with write-with-response).
3. Enable notifications **before** `A5 00 11 11`; **wait for the 0x11 ACK**
   (status byte 0x00) before sending any image data.
4. Pace: ~500 ms post-connect, 200 ms pre-notify, 50 ms pre-write per packet,
   30 ms post-write (≈80 ms/packet). No per-chunk ACK gating.
5. Resend failed chunks once; then `A5 00 13 13`, verify CRC (custom
   algorithm!), retry the entire sequence ≤2× on mismatch.
6. Finish `A5 00 14 14`, wait for the `0x14` echo, disconnect.
7. Offsets big-endian; plane byte 0/1; chunks ≤220 B (≤210 B for BWYR).

---

## 6. Known divergences in `feat/ble` (fix list)

Verified against `origin/feat/ble`, each CONFIRMED with both code sides:

| # | Divergence | Vendor | feat/ble | Severity |
|---|---|---|---|---|
| 1 | **No MTU request** — flutter_blue_plus 1.35.5 rejects long writes *before* the stack (`"data longer than allowed. dataLen: 227 > max: 20"`, FlutterBluePlusPlugin.java:955–963) | `requestMtu(247)` (BaseTxManager.java:213) | zero `mtu` references in the repo | **primary suspect** |
| 2 | Offsets little-endian (`setUint16(..., Endian.little)`, ble_badge_repository.dart:192) | big-endian (HexUtils.java:10–12) | — | breaks layout |
| 3 | Plane index hard-coded 0; `type` arg never written into packet (ble_badge_repository.dart:190,198) | per-plane literals 0/1 (WriteActivity.java:1129,1189,1235,1292) | — | breaks BWR |
| 4 | BWR plane-0 polarity: `gray2BinaryBWR` is a copy of the BW version (`≤95 → 1`) | inverted: `≤95 → 0` (ImgUtil.java:155) | image_converter.dart | negative image on BWR |
| 5 | **No CRC computed at all**: `crc32.dart` never imported; the only `Crc32.calculate` call sits inside a commented-out block | custom CRC (see §4) | ble_badge_repository.dart:147–162 | corruption undetected |
| 6 | If wired up: the chosen `Crc32Xz` is the wrong family (check `0xCBF43926` vs required `0xFDA41140`) | — | crc32.dart | would never match |
| 7 | `chunkSize = 220` for **all** palettes (ble_badge_repository.dart:120) | 210 for BWYR (real dex literal; jadx mis-symbols it as an inlined constant of `imgsel BuildConfig.VERSION_CODE` — the *value* is real, WriteActivity.java:75,1280–1293) | — | tolerated only if firmware is purely offset-driven [unverified] |
| 8 | No pacing; notify subscription timing unchecked | ~80 ms/packet + pre-notify delays | — | flaky on real firmware |

---

## 7. Formerly unverified items — device-test results

1. ~~**Exact response frames**~~ **CONFIRMED on device (2026-09-05).** The
   inferred layouts (`A5 01 11 00 12` start-ACK, `A5 05 13 00 <CRC BE>` reply,
   `0x14` echo) round-trip successfully: CRC compare matched first try, so the
   custom CRC algorithm and the big-endian CRC placement are both right.
2. **"Unknown card" semantics** — PARTIALLY CONFIRMED: the flow works with a
   preceding NFC tap (per the app's normal usage). Behavior without a prior
   tap is still untested.
3. **Chunk-size / pacing tolerance** — CONFIRMED for the shipped values
   (220/210 B + ~80 ms pacing). Whether the firmware tolerates different
   lengths or faster pacing is still untested.
4. ~~**CRC on the wire**~~ **CONFIRMED on device (2026-09-05).** Badge's reply
   equalled the offline CRC32Utils-algorithm computation over the planes as
   sent.
5. **Advertisement layout** — CONFIRMED on device for this badge model: the
   port's `manufacturerData[89]` matching located the badge by its NFC-tap
   UID. Layout details for other models remain untested.

---

## Appendix A: decompiler caveats

- `ImgUtil.gray2Binary` dispatch and `WriteActivity.lambda$null$14` failed to
  decompile (read from smali instead — mappings certain).
- Badge dimensions come from smali switch tables (240/296, 416/152/128).
- `sendImageDataBWYR`'s 210 is a real shipped constant; the *symbolization* as
  `BuildConfig.VERSION_CODE` is a jadx artifact of inlined compile-time
  constants.

## Appendix B: NFC (passive-badge) path [observed]

IsoDep; spec query `D0 D1 03 00 01`; start `D0 D1 00 00 00` (expects
`9000`); data APDUs `D0 D1 01/02/04/05 00 LEN <248 B payload>` (01 more/02
last = plane 0, 04/05 = plane 1); commit `D0 D1 03 00 00`. Same image
encoding, 248-byte chunks, no per-packet checksum (WriteActivity.java:1462–1543).

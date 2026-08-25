## Unreleased

 - **FEAT**: NDEF write — `NdefRecord` / `NdefMessage` models, `NdefBadgeWriter` (NFC Forum Type 4 SELECT + UPDATE BINARY over ISO-DEP), optional `{NdefMessage? ndef}` on `BadgeImage.writeToBadge` (backwards-compatible).
 - **FEAT**: NDEF read — `NdefBadgeReader` (SELECT + READ BINARY), pure-Dart `NdefMessage.parse` with short/long-record framing and chunked-record assembly, `NdefRecord.decodeUri` / `NdefRecord.decodeText`, and `BadgePerson.fromNdefMessage` for the badge's `[U + T]` person payload.
 - **FEAT**: Badge payload wire contract v2 — the T record gains two OPTIONAL tagged segments after the URL segments: `id:<installId>` (the badge owner's app install ID) and `capy:<assetName>` (bundled capybara asset name, omitted for gallery images). `BadgePerson` exposes them as `installId` / `capybaraId`. Unknown `<tag>:` segments are ignored (forward-compat). Zero physical badges written yet, so the contract is still safe to evolve.
 - **FEAT**: `NdefRecord.badgePerson({name, role, urls, installId, capybaraId})` — contract-level Text-record builder so app code never string-munges the wire format. Emits segments in canonical order: `name · role · urls… · id:… · capy:…`.
 - **CHORE**: Bump to `0.2.0-dev.2` to make a local path-override clone visible in `pubspec.lock`.

## 0.1.5+1

 - **FIX**: Remove stale nfc_manager git override that broke pub resolution ([#26](https://github.com/flutter-and-friends/friends_badge/issues/26)). ([f7595d1b](https://github.com/flutter-and-friends/friends_badge/commit/f7595d1bca618065be8b831e49b4604013e4dcf3))

## 0.1.5

 - **FIX**: Tag is out of date ([#20](https://github.com/flutter-and-friends/friends_badge/issues/20)). ([ae9de286](https://github.com/flutter-and-friends/friends_badge/commit/ae9de2867a588073aecabb95a11d4ebb1eb016c5))
 - **FEAT**: Vibrate iOS devices when tapping NFC ([#18](https://github.com/flutter-and-friends/friends_badge/issues/18)). ([5969ad3b](https://github.com/flutter-and-friends/friends_badge/commit/5969ad3ba84d46a18749ebb3f4725fea810beea1))
 - **DOCS**: Add note about writing space with iOS ([#19](https://github.com/flutter-and-friends/friends_badge/issues/19)). ([833234ef](https://github.com/flutter-and-friends/friends_badge/commit/833234efb2568e5fb3f36a2080d2b183d8198f89))

## 0.1.4

 - **DOCS**: Update README with NFC writing instructions ([#14](https://github.com/flutter-and-friends/friends_badge/issues/14)). ([c286358e](https://github.com/flutter-and-friends/friends_badge/commit/c286358ea076a642db9e22828d311b001db787c6))

## 0.1.3

 - **FEAT**: iOS support ([#12](https://github.com/flutter-and-friends/friends_badge/issues/12)). ([8d1ca654](https://github.com/flutter-and-friends/friends_badge/commit/8d1ca654a0381bd572c3531f5ea2750899abae26))

## 0.1.2+1

 - **REFACTOR**: Use BadgeImage for full API ([#10](https://github.com/flutter-and-friends/friends_badge/issues/10)). ([b876771d](https://github.com/flutter-and-friends/friends_badge/commit/b876771d6cab35028eb93a35d6160bae96efa95b))

## 0.1.2

 - **REFACTOR**: Updated the API of the package to be more ergonomic and less prone to user error ([#7](https://github.com/flutter-and-friends/friends_badge/issues/7)). ([8e6843f7](https://github.com/flutter-and-friends/friends_badge/commit/8e6843f73b51b5b5bcb4b889c0636e8f7840c84f))
 - **FEAT**: nfc e-ink support for Android added ([#1](https://github.com/flutter-and-friends/friends_badge/issues/1)). ([ab4ff645](https://github.com/flutter-and-friends/friends_badge/commit/ab4ff645df56aaf5a8a4b3d6f934a6780fab2cf1))

## 0.1.1

 - **FEAT**: nfc e-ink support for Android added ([#1](https://github.com/spydon/friends_badge/issues/1)). ([ab4ff645](https://github.com/spydon/friends_badge/commit/ab4ff645df56aaf5a8a4b3d6f934a6780fab2cf1))

## 0.1.0

 - Initial release.

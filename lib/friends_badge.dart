/// This package provides a set of tools to program e-paper badges
/// via NFC.
library friends_badge;

export 'src/badge_image.dart';
export 'src/ndef/badge_person.dart';
export 'src/ndef/ndef.dart';
export 'src/ndef/ndef_badge_reader.dart' show NdefBadgeReader;
export 'src/ndef/ndef_badge_writer.dart'
    show IsoDepTransceiver, NdefBadgeWriter;
export 'src/widgets/waiting_for_nfc_tap.dart';

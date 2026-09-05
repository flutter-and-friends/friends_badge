/// This package provides a set of tools to program e-paper badges
/// via NFC.
library;

export 'src/badge_image.dart';
export 'src/ndef/badge_person.dart';
export 'src/ndef/ndef.dart';
export 'src/ndef/ndef_badge_reader.dart' show NdefBadgeReader;
export 'src/ndef/ndef_badge_writer.dart'
    show IsoDepTransceiver, NdefBadgeWriter;
export 'src/utils/preferred_write_technology.dart';
export 'src/widgets/waiting_for_nfc_tap.dart';

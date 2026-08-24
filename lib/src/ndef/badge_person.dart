import 'package:friends_badge/src/ndef/ndef.dart';

/// A decoded badge payload: the person's name, role, and any URLs found in
/// the Text record, plus the primary URI from the U record if present.
///
/// This is the shape `ff-pokedex-collect` consumes when collecting a person.
/// Decoding is deliberately tolerant: a missing U record, a missing T
/// record, or an unexpected payload shape degrade to empty/null fields
/// rather than throwing.
class BadgePerson {
  const BadgePerson({
    required this.name,
    required this.role,
    required this.urls,
    required this.primaryUri,
  });

  /// Decode a badge [NdefMessage] into a [BadgePerson].
  ///
  /// The expected wire format (published by `friends-badge-ndef`) is:
  ///
  /// ```
  /// [U record]  primary personal URL (e.g. LinkedIn)
  /// [T record]  "Name · Role · url1 · url2 · … · urlN"
  /// ```
  ///
  /// The Text record is split on `" · "` (space, U+00B7 MIDDLE DOT, space):
  ///
  /// - segment 0 → [name]
  /// - segment 1 → [role] (may be the empty string)
  /// - segments 2..n → [urls], in the order they appear
  ///
  /// A single-segment Text record is treated as a name-only payload.
  ///
  /// If no Text record is present, [name] and [role] are empty strings and
  /// [urls] is empty. If no URI record is present, [primaryUri] is `null`.
  factory BadgePerson.fromNdefMessage(NdefMessage message) {
    Uri? primaryUri;
    var name = '';
    var role = '';
    final urls = <String>[];

    for (final record in message.records) {
      if (record.isUri && primaryUri == null) {
        try {
          primaryUri = record.decodeUri();
        } on FormatException {
          // Malformed U record — leave primaryUri null.
        }
      } else if (record.isText && name.isEmpty) {
        try {
          final decoded = record.decodeText();
          final segments = decoded.text.split(' · ');
          if (segments.isNotEmpty) {
            name = segments[0];
          }
          if (segments.length > 1) {
            role = segments[1];
          }
          if (segments.length > 2) {
            urls.addAll(segments.sublist(2));
          }
        } on FormatException {
          // Malformed T record — leave fields empty.
        }
      }
    }

    return BadgePerson(
      name: name,
      role: role,
      urls: List.unmodifiable(urls),
      primaryUri: primaryUri,
    );
  }

  /// The person's display name. Empty string if the badge carried no Text
  /// record.
  final String name;

  /// The person's role or title. Empty string if not present (or if the
  /// badge carried a name-only Text record).
  final String role;

  /// Any additional URLs found in the Text record, in order. May be empty.
  final List<String> urls;

  /// The primary URL from the badge's U record. `null` if no U record is
  /// present or the record could not be parsed.
  final Uri? primaryUri;

  @override
  String toString() => 'BadgePerson(name: "$name", role: "$role", '
      'urls: $urls, primaryUri: $primaryUri)';
}

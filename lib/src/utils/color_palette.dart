import 'package:image/image.dart' as img;

typedef ColorPaletteColor = ({int r, int g, int b});

enum ColorPalette {
  blackWhite(
    [(r: 0, g: 0, b: 0), (r: 255, g: 255, b: 255)],
  ),
  blackWhiteRed(
    [
      (r: 0, g: 0, b: 0),
      (r: 255, g: 255, b: 255),
      (r: 255, g: 0, b: 0),
    ],
  ),
  blackWhiteYellowRed(
    [
      (r: 0, g: 0, b: 0),
      (r: 255, g: 255, b: 255),
      (r: 255, g: 255, b: 0),
      (r: 255, g: 0, b: 0),
    ],
  );

  final List<ColorPaletteColor> paletteValues;

  List<img.Color> get colors => paletteValues
      .map((e) => img.ColorRgb8(e.r, e.g, e.b))
      .toList(growable: false);

  const ColorPalette(this.paletteValues);
}

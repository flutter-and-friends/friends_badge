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

  img.Quantizer get quantizer => ColorPaletteQuantizer(this);

  List<img.Color> get colors => paletteValues
      .map((e) => img.ColorRgb8(e.r, e.g, e.b))
      .toList(growable: false);

  const ColorPalette(this.paletteValues);
}

class ColorPaletteQuantizer extends img.Quantizer {
  final ColorPalette colorPalette;

  ColorPaletteQuantizer(this.colorPalette);

  @override
  late img.Palette palette = _createPalette();

  img.PaletteUint8 _createPalette() {
    final p = img.PaletteUint8(colorPalette.paletteValues.length, 3);
    for (var i = 0; i < colorPalette.paletteValues.length; i++) {
      final c = colorPalette.paletteValues[i];
      p.setRgb(i, c.r, c.g, c.b);
    }
    return p;
  }

  @override
  int getColorIndex(img.Color c) {
    return getColorIndexRgb(c.r, c.g, c.b);
  }

  double _colorDistance(num r1, num g1, num b1, num r2, num g2, num b2) {
    final r = r1 - r2;
    final g = g1 - g2;
    final b = b1 - b2;
    return (r * r + g * g + b * b).toDouble();
  }

  @override
  int getColorIndexRgb(num r, num g, num b) {
    final colorPaletteColors = colorPalette.colors;

    var closestColorIndex = 0;
    var minDistance = double.maxFinite;

    for (final (index, color) in colorPaletteColors.indexed) {
      final distance = _colorDistance(r, g, b, color.r, color.g, color.b);
      if (distance < minDistance) {
        minDistance = distance;
        closestColorIndex = index;
      }
    }

    return closestColorIndex;
  }

  @override
  img.Color getQuantizedColor(img.Color c) {
    return colorPalette.colors[getColorIndex(c)];
  }
}

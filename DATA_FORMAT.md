# Common Data Format for Badge Communication

This document outlines the common data format used for communication between the mobile application and the smart badge, for both NFC and BLE.

## Image Processing Pipeline

The image processing pipeline consists of the following steps:

1.  **Image Loading:** The application loads a standard image (e.g., JPEG, PNG) into a `Bitmap` object.
2.  **Color Palette Selection:** The user selects a color palette for the badge. The supported palettes are:
    *   Black and White
    *   Black, White, and Red
    *   Black, White, and Yellow
3.  **Image Conversion and Dithering:** The `Bitmap` is converted to a raw byte array using a specific conversion and dithering algorithm. The application provides two main options:
    *   **Simple Thresholding:** A fast conversion method that uses a fixed threshold to convert each pixel to the nearest color in the palette.
    *   **Floyd-Steinberg Dithering:** A more advanced method that produces higher quality images by diffusing the quantization error to neighboring pixels.
4.  **Data Transmission:** The resulting byte array is then sent to the badge via NFC or BLE.

## Image Conversion Details

The core of the image conversion is in the `cn.highlight.work_card_write.util.ImgUtil` class.

### Color Palettes

The `getPalette` method defines the supported color palettes:

*   **Palette 0 (Black and White):** `#000000`, `#FFFFFF`
*   **Palette 1 (Black, White, Red):** `#000000`, `#FFFFFF`, `#FF0000`
*   **Palette 2 (Black, White, Yellow):** `#000000`, `#FFFFFF`, `#FFFF00`

### Grayscale Conversion

For each pixel, a grayscale value is calculated using the following formula:

```
grayscale = 0.3 * R + 0.59 * G + 0.11 * B
```

### Thresholding

In the simple conversion methods (`gray2Binary_BW`, `gray2Binary_BWR`, etc.), a fixed threshold (e.g., 95) is used to determine the final color of the pixel. If the grayscale value is below the threshold, the pixel is considered black; otherwise, it's white.

### Floyd-Steinberg Dithering

The `floydSteinbergDither` method implements the Floyd-Steinberg algorithm. This method provides a better visual representation of the image on the e-paper display by reducing banding and creating the illusion of more colors.

## Final Image Data Format

The final image data sent to the badge is a **raw, uncompressed bitmap**. The format is a byte array where each bit represents a pixel. The pixels are ordered by row. The bits are packed into bytes, with each byte representing 8 pixels.

For example, for a black and white image, a `0` bit might represent a white pixel, and a `1` bit might represent a black pixel.

This byte array is then chunked and sent to the badge using either the NFC or BLE communication protocol.

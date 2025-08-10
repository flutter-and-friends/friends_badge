# Image Format for Badge Templates

This document outlines the image format used for the badge templates. The application converts a standard image into a specific format suitable for the e-paper display of the badge.

## Image Sizing

The image must be scaled to the exact dimensions of the badge's e-paper display before being converted to the final data format. The application determines the correct dimensions based on the badge model.

The following dimensions have been identified from the `cn.highlight.work_card_write.util.BadgeSpecificationUtils` class:

| Badge Size | Width | Height |
| :--- | :---- | :----- |
| "2.6" | 296px | 152px |
| "2.9" | 296px | 128px |
| "3.7" | 240px | 416px |

## Data Format

The detailed data format for the image is described in the [DATA_FORMAT.md](DATA_FORMAT.md) document.
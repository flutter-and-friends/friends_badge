# Common Data Format for Badge Communication

This document outlines the common data format used for communication between the mobile application
and the smart badge, for both NFC and BLE.

## Final Image Data Format

The final image data sent to the badge is a **raw, uncompressed bitmap**. The format is a byte array
where each bit (or pair of bits) represents a pixel. The pixels are ordered in a column-major
format.

This byte array is then chunked and sent to the badge using either the NFC or BLE communication
protocol.

# End-to-End Example: Writing an Image to the Badge

This document provides a complete, end-to-end example of how to take an image, process it, and send it to the badge using both NFC and BLE.

## 1. Image Preparation

1.  **Load the image:** Load the desired image (e.g., a JPEG or PNG file) into a `Bitmap` object.
2.  **Determine the badge model:** Identify the model of the badge you are writing to (e.g., "3.7").
3.  **Resize the image:** Scale the `Bitmap` to the exact dimensions required by the badge model. See [IMAGE_FORMAT.md](IMAGE_FORMAT.md) for the correct dimensions.
4.  **Convert the image:** Convert the resized `Bitmap` to a raw byte array using the dithering and conversion process described in [DATA_FORMAT.md](DATA_FORMAT.md).

## 2. NFC Communication

1.  **Discover the NFC tag:** Wait for the user to tap the badge to the NFC reader.
2.  **Connect to the tag:** Establish a connection to the tag using the `NfcA` technology.
3.  **Send "Set Status" command:** Send the "Set Status" command with a status of `0x0000` (SUCCESS) to prepare the tag for writing.
    *   `transceive([0xa2, 0x06, 0x00, 0x00])`
4.  **Send "Read Status" command:** Send the "Read Status" command to confirm the tag is ready.
    *   `transceive([0x30, 0x06])`
5.  **Send image data:** Send the image data in chunks of 4 bytes using the "Write Command".
    *   For each 4-byte chunk of the image data:
        *   `transceive([0xa2, address, data[0], data[1], data[2], data[3]])`
        *   Increment the address/counter.
6.  **Send "Set Status" command:** After all chunks are sent, send the "Set Status" command with a status of `0x0200` (S2) to indicate the end of the transfer.
    *   `transceive([0xa2, 0x06, 0x02, 0x00])`
7.  **Close the connection.**

## 3. BLE Communication

1.  **Scan for the device:** Scan for BLE devices with the service UUID `6e400001-b5a3-f393-e0a9-e50e24dcca9e`.
2.  **Connect to the device:** Connect to the badge using its BLE address.
3.  **Discover services and characteristics:** Discover the services and characteristics on the badge.
4.  **Enable notifications:** Enable notifications on the **Notify Characteristic** (`6e400003-b5a3-f393-e0a9-e50e24dcca9e`).
5.  **Send "Start" command:** Send a command to the **Write Characteristic** (`6e400002-b5a3-f393-e0a9-e50e24dcca9e`) to prepare the badge for receiving data. The exact command for this is not yet fully documented, but it is likely one of the commands from `CmdCenter.smali`.
6.  **Send image data:** Send the image data in chunks to the **Write Characteristic**. Each chunk should be wrapped in the command structure described in [BLE_FORMAT.md](BLE_FORMAT.md).
7.  **Receive notifications:** Listen for notifications on the **Notify Characteristic** to get status updates from the badge.
8.  **Send "End" command:** After all data is sent, send a final command to the **Write Characteristic** to indicate the end of the transfer.
9.  **Disconnect from the device.**

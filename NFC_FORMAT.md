# NFC Data Format for Badge Communication

This document outlines the NFC data format used for communication between the mobile application and the smart badge. The communication is based on the ISO 14443-4 (ISO-DEP) standard, using `NfcA` technology.

## High-Level Communication Flow

The communication process for writing data (e.g., an image or template) to the badge follows these steps:

1.  **Tag Discovery:** The mobile app discovers the NFC tag.
2.  **Connection:** The app connects to the tag using the `NfcA` technology.
3.  **Handshake/Initiation:**
    *   The app sets the tag's status to `0` (SUCCESS) to prepare it for writing.
    *   The app reads the tag's status to ensure it's ready.
4.  **Data Transfer:**
    *   The data is sent in chunks of 4 bytes.
    *   Each chunk is wrapped in a specific command structure.
    *   The app waits for a successful response after sending each chunk.
5.  **Termination:**
    *   After all data chunks are sent, the app sets the tag's status to `0x200` to indicate the end of the transfer.
    *   The connection is closed.

## Command Structure

**Note:** The NFC command structure is different from the BLE command structure. See [BLE_FORMAT.md](BLE_FORMAT.md) for more details.

The communication relies on a set of commands, all of which are sent using the `transceive` method.

### Write Command

This command is used to write a 4-byte chunk of data to the badge.

*   **Command Byte:** `0xa2`
*   **Address/Counter:** A single byte representing the address or a sequence number for the data chunk.
*   **Data Payload:** 4 bytes of data.

**Packet Format:**

| Byte 0 | Byte 1          | Bytes 2-5     |
| :----- | :-------------- | :------------ |
| `0xa2` | Address/Counter | 4-byte data   |

### Set Status Command

This command is used to set the status of the badge.

*   **Command Bytes:** `0xa2`, `0x06`
*   **Status Code:** A 2-byte status code.

**Packet Format:**

| Byte 0 | Byte 1 | Bytes 2-3      |
| :----- | :----- | :------------- |
| `0xa2` | `0x06` | 2-byte status  |

### Read Status Command

This command is used to read the current status of the badge.

*   **Command Bytes:** `0x30`, `0x06`

**Packet Format:**

| Byte 0 | Byte 1 |
| :----- | :----- |
| `0x30` | `0x06` |

## Status Codes

The following status codes have been identified:

| Status Code | Hex Value | Description                               |
| :---------- | :-------- | :---------------------------------------- |
| `SUCCESS`   | `0x0000`  | Operation successful / Ready for next step |
| `S1`        | `0x0100`  | Unknown                                   |
| `S2`        | `0x0200`  | End of data transfer                      |
| `S4`        | `0x0400`  | Unknown                                   |
| `S6`        | `0x0600`  | Unknown                                   |
| `S7`        | `0x0700`  | Unknown                                   |
| `S8`        | `0x0800`  | Unknown                                   |
| `ERROR`     | `-1`      | An error occurred                         |

## Data Payload

The data payload for the write command is described in the [DATA_FORMAT.md](DATA_FORMAT.md) document.

## Example Write Sequence

1.  **Connect to the tag.**
2.  **Send "Set Status" command with status `0x0000` (SUCCESS).**
    *   `transceive([0xa2, 0x06, 0x00, 0x00])`
3.  **Send "Read Status" command.**
    *   `transceive([0x30, 0x06])`
    *   Expect a response indicating success.
4.  **For each 4-byte chunk of data:**
    *   **Send "Write Command" with the data chunk.**
        *   `transceive([0xa2, address, data[0], data[1], data[2], data[3]])`
    *   Increment the address/counter.
5.  **After all chunks are sent, send "Set Status" command with status `0x0200` (S2).**
    *   `transceive([0xa2, 0x06, 0x02, 0x00])`
6.  **Close the connection.**

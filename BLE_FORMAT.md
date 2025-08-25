# BLE Data Format for Badge Communication

This document outlines the Bluetooth Low Energy (BLE) data format used for communication between the mobile application and the smart badge.

## Overview

The application uses a custom BLE service with two characteristics for communication:

*   A **Write Characteristic** for sending data to the badge.
*   A **Notify Characteristic** for receiving data from the badge.

## GATT Service and Characteristics

The following UUIDs are used for the GATT service and characteristics:

*   **Service UUID:** `6e400001-b5a3-f393-e0a9-e50e24dcca9e`
*   **Write Characteristic UUID:** `6e400002-b5a3-f393-e0a9-e50e24dcca9e`
*   **Notify Characteristic UUID:** `6e400003-b5a3-f393-e0a9-e50e24dcca9e`

## Communication Flow

1.  **Connection:** The application scans for and connects to the badge using its BLE address.
2.  **Service Discovery:** The application discovers the services and characteristics on the badge.
3.  **Enable Notifications:** The application enables notifications on the **Notify Characteristic** to receive data from the badge.
4.  **Data Transfer (Write):** The application writes data to the **Write Characteristic** to send commands and data to the badge.
5.  **Data Transfer (Notify):** The badge sends data to the application via notifications on the **Notify Characteristic**.

## Command Structure

The communication relies on a set of commands, all of which are sent to the **Write Characteristic**.

**Packet Format:**

| Byte 0 | Byte 1 | Byte 2 | Byte 3 | Bytes 4..n | Byte n+1 | Byte n+2 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| `0xBB` | Address | Command | Length | Data... | Checksum | `0x7E` |

*   **Start Byte:** `0xBB`
*   **Address/Counter:** A single byte representing the address or a sequence number for the data chunk. For commands that are not part of a data stream, this is usually `0x00`.
*   **Command:** A single byte representing the command.
*   **Length:** A single byte representing the length of the data payload.
*   **Data:** The data payload.
*   **Checksum:** A single byte checksum calculated by adding all the bytes from the Address to the end of the Data, and then masking the result with `0xff`.
*   **End Byte:** `0x7E`

### Commands

The following commands have been identified from the `cn.highlight.tx.app.CmdCenter` class:

| Command | Value |
| :--- | :--- |
| `CMD_setRFIDConfig` | `0x01` |
| `CMD_getRFIDConfig` | `0x02` |
| `CMD_setRFIDArea` | `0x03` |
| `CMD_getRFIDArea` | `0x04` |
| `CMD_startOrStopRFID` | `0x05` |
| `CMD_getRFIDStatus` | `0x06` |
| `CMD_upRFIDData` | `0x07` |
| `CMD_openMoreCabinet` | `0x10` |
| `CMD_getCabinetLockStatus` | `0x11` |
| `CMD_setCabinetSensor` | `0x12` |

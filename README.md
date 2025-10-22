# CMH Payload Tool

The CMH Payload Tool is a cross-platform payload generation tool for Android and Windows systems. It uses msfvenom to create obfuscated Meterpreter payloads in the form of APK files for Android or executable (.exe) files for Windows.

## Features

- Generates obfuscated Meterpreter payloads for Android and Windows
- Supports custom architecture, encoding options, and payload types
- Simple and user-friendly interface

## Prerequisites

- Metasploit Framework
- msfvenom

## Usage

1. Install Metasploit Framework and msfvenom on your system.

2. Clone this repository:

```bash
git clone https://github.com/sanusi644/cmh-payload-tool.git
cd cmh-payload-tool

3. customoadsploit Metasploitasploitdloits CMH payload module in Metasploit:
bash

Copy
msf > load exploits/custom/cmh_obfuscated_payload
Run the module:
bash

Copy
msf > run exploit
Follow the on-screen prompts to enter the target platform (android or windows), target architecture, encoding options, payload type, local IP address, and local port.

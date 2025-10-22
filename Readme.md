CMH Payload Tool  The CMH Payload Tool is a cross-platform payload generation tool for Android and Windows systems. It uses msfvenom to create obfuscated Meterpreter payloads in the form of APK files for Android or executable (.exe) files for Windows.  ## Features  - Generates obfuscated Meterpreter payloads for Android and Windows - Supports custom architecture, encoding options, and payload types - Simple and user-friendly interface  ## Prerequisites  - Metasploit Framework - msfvenom  ## Usage  1. Install Metasploit Framework and msfvenom on your system.  2. Clone this repository:  ```bash git clone https://github.com/sanusi644/cmh-payload-tool.git cd cmh-payload-tool

1. Load the CMH payload module in Metasploit:



msf > load exploits/custom/cmh_obfuscated_payload

1. Run the module:



msf > run exploit

1. 

Follow the on-screen prompts to enter the target platform (android or windows), target architecture, encoding options, payload type, local IP address, and local port.

2. 

The generated payload will be saved as an APK file or an executable file (e.g., payload.apk or payload.exe) in the current directory, depending on the selected platform.

3. 

Use the generated payload in your exploitation efforts against Android devices or Windows systems.

Disclaimer

This tool is intended for educational and ethical hacking purposes only. Always obtain proper authorization before using this tool on any system.

License

This tool is released under the GPLv3 license. Feel free to use, modify, and distribute it as needed.

Contributions

Contributions are welcome! If you encounter any issues or have suggestions for improvement, please submit an issue or pull request on the GitHub repository.

Author

Sanusi Saminu- @sanusi644 - saminu644@gmail.com

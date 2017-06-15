# both 32-bit (x86) AND a 64-bit (AMD64) installer available
{% set PROGRAM_FILES = "%ProgramFiles%" %}
bitvise:
  '7.31':
    full_name: 'Bitvise SSH Client 7.31'
    installer: 'https://bvdl.s3-eu-west-1.amazonaws.com/BvSshClient-Inst.exe'
    uninstaller: ''
    install_flags: '-force -acceptEULA'
    uninstall_flags: ''
    msiexec: False
    locale: en_US
    reboot: False

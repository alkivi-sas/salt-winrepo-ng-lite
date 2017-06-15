# both 32-bit (x86) AND a 64-bit (AMD64) installer available
{% set PROGRAM_FILES = "%ProgramFiles%" %}
tsscan:
  '2.0':
    full_name: 'TSSCAN Client'
    installer: 'http://www.terminalworks.com/downloads/tsscan/msi/TSScanMSI.msi'
    uninstaller: 'http://www.terminalworks.com/downloads/tsscan/msi/TSScanMSI.msi'
    install_flags: '/quiet /qn'
    uninstall_flags: '/x'
    msiexec: True
    locale: en_US
    reboot: False

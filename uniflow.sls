# both 32-bit (x86) AND a 64-bit (AMD64) installer available
uniflow:
  'latest':
    full_name: 'uniFLOW SmartClient'
    installer: salt://files/uniflow.msi
    uninstaller: salt://files/uniflow.msi
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
  '25.4.1.8':
    full_name: 'uniFLOW SmartClient'
    installer: salt://files/uniflow.msi
    uninstaller: salt://files/uniflow.msi
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False

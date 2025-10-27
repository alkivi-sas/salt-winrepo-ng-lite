# both 32-bit (x86) AND a 64-bit (AMD64) installer available
alkiviremote:
  'latest':
    full_name: 'AlkiviRemote'
    installer: salt://files/alkiviremote.msi
    uninstaller: salt://files/alkiviremote.msi
    install_flags: '/qn /norestart /CREATESTARTMENUSHORTCUTS="N" CREATEDESKTOPSHORTCUTS="N" INSTALLPRINTER="N"'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False

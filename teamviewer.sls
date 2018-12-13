# both 32-bit (x86) AND a 64-bit (AMD64) installer available
teamviewer:
  '13.2':
    full_name: 'TeamViewer 13.2'
    installer: salt://files/TeamViewer_Host_13.2.msi
    uninstaller: salt://files/TeamViewer_Host_13.2.msi
    install_flags: '/qn /norestart CUSTOMCONFIGID={{ salt['pillar.get']('teamviewer:configid')}}'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False

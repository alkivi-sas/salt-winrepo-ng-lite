# both 32-bit (x86) AND a 64-bit (AMD64) installer available
teamviewer:
  '14.1.3399.0':
    full_name: 'TeamViewer 14 Host'
    installer: salt://files/TeamViewer_Host_14.msi
    uninstaller: salt://files/TeamViewer_Host_14.msi
    install_flags: '/qn /norestart CUSTOMCONFIGID={{ salt['pillar.get']('teamviewer:configid')}}'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False

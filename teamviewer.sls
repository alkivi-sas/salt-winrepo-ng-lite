# both 32-bit (x86) AND a 64-bit (AMD64) installer available
teamviewer:
  '15.12.4.0':
    full_name: 'TeamViewer 15 Host'
    installer: salt://files/TeamViewer_Host_15.msi
    uninstaller: salt://files/TeamViewer_Host_15.msi
    install_flags: '/qn /norestart CUSTOMCONFIGID={{ salt['pillar.get']('teamviewer:config_id')}} APITOKEN={{ salt['pillar.get']('teamviewer:api_token') }} ASSIGNMENTOPTIONS="--group {{ salt['pillar.get']('customer', 'FreshInstall') }} --grant-easy-access --reassign"'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
  '14.1.3399.0':
    full_name: 'TeamViewer 14 Host'
    installer: salt://files/TeamViewer_Host_14.msi
    uninstaller: salt://files/TeamViewer_Host_14.msi
    install_flags: '/qn /norestart CUSTOMCONFIGID={{ salt['pillar.get']('teamviewer:config_id')}} APITOKEN={{ salt['pillar.get']('teamviewer:api_token') }} ASSIGNMENTOPTIONS="--group {{ salt['pillar.get']('customer') }} --grant-easy-access --reassign"'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False

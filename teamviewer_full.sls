# both 32-bit (x86) AND a 64-bit (AMD64) installer available
teamviewer_full:
  'latest':
    full_name: 'TeamViewer'
    installer: salt://files/TeamViewer_Full_15.msi
    uninstaller: salt://files/TeamViewer_Full_15.msi
    install_flags: '/qn /norestart CUSTOMCONFIGID={{ salt['pillar.get']('teamviewer:config_id')}} APITOKEN={{ salt['pillar.get']('teamviewer:api_token') }} ASSIGNMENTOPTIONS="--alias {{ grains.get('id') }} --group {{ salt['pillar.get']('customer', 'FreshInstall') }} --grant-easy-access --reassign"'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
  '15.62.4':
    full_name: 'TeamViewer'
    installer: salt://files/TeamViewer_Full_15.msi
    uninstaller: salt://files/TeamViewer_Full_15.msi
    install_flags: '/qn /norestart CUSTOMCONFIGID={{ salt['pillar.get']('teamviewer:config_id')}} APITOKEN={{ salt['pillar.get']('teamviewer:api_token') }} ASSIGNMENTOPTIONS="--alias {{ grains.get('id') }} --group {{ salt['pillar.get']('customer', 'FreshInstall') }} --grant-easy-access --reassign"'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
  '15.51.6.0':
    full_name: 'TeamViewer'
    installer: salt://files/TeamViewer_Full_15.51.6.0.msi
    uninstaller: salt://files/TeamViewer_Full_15.51.6.0.msi
    install_flags: '/qn /norestart CUSTOMCONFIGID={{ salt['pillar.get']('teamviewer:config_id')}} APITOKEN={{ salt['pillar.get']('teamviewer:api_token') }} ASSIGNMENTOPTIONS="--alias {{ grains.get('id') }} --group {{ salt['pillar.get']('customer', 'FreshInstall') }} --grant-easy-access --reassign"'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False

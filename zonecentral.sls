{% set license = salt['pillar.get']('zonecentral:license', 'AAAA-AAAA-AAAA-AAAA-AAAA') %}
{% set install_admin_tool = salt['pillar.get']('zonecentral:admin_tools', '1') %}

zonecentral:
  '2023.3':
    full_name: 'ZONECENTRAL'
    installer: salt://files/zonecentral.msi
    install_flags: '/qn PX_EXTLICKEY={{ licence }} PX_INSTALLSO={{ install_admin_tool }}'
    uninstaller: '{00000004-9830-4CA8-8868-36F59DEFD14D}'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: fr_FR
    reboot: True

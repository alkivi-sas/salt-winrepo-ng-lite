{% set license = salt['pillar.get']('orizon:license', 'AAAA-AAAA-AAAA-AAAA-AAAA') %}
{% set install_admin_tool = salt['pillar.get']('orizon:admin_tools', '1') %}

orizon:
  '2023.4':
    full_name: 'ORIZON'
    installer: salt://files/orizon.2023.4.msi
    install_flags: '/qn PX_EXTLICKEY={{ license }} PX_INSTALLSO={{ install_admin_tool }} /norestart'
    uninstaller: '{00000005-9830-ECA8-8868-36F59DEFD14D}'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: fr_FR
    reboot: True
  '2023.3':
    full_name: 'ORIZON'
    installer: salt://files/orizon.2023.3.msi
    install_flags: '/qn PX_EXTLICKEY={{ license }} PX_INSTALLSO={{ install_admin_tool }} /norestart'
    uninstaller: '{00000005-9830-ECA8-8868-36F59DEFD14D}'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: fr_FR
    reboot: True

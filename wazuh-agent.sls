wazuh-agent:
  'latest':
    full_name: 'Wazuh Agent'
    installer: salt://files/wazuh-agent-4.14.5-1.msi
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
  '4.14.5':
    full_name: 'Wazuh Agent'
    installer: salt://files/wazuh-agent-4.14.5-1.msi
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False

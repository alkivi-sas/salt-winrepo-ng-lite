{% set wazuh_config = __pillar__.get('wazuh_config', {}) %}
{# TO check https://documentation.wazuh.com/current/user-manual/agent/agent-enrollment/deployment-variables/deployment-variables-windows.html #}

wazuh-agent:
  '4.14':
    full_name: 'Wazuh-Agent'
    installer: salt://files/wazuh-agent-4.14.5-1.msi
    install_flags: '/qn WAZUH_MANAGER={{ wazuh_config.get("manager", "") }} WAZUH_REGISTRATION_PASSWORD={{ wazuh_config.get("registration_password", "") }} /norestart'
    msiexec: True
    reboot: False

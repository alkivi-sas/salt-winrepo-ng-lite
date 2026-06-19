{% set wazuh_config = __pillar__.get('wazuh_config', {}) %}
{# TO check https://documentation.wazuh.com/current/user-manual/agent/agent-enrollment/deployment-variables/deployment-variables-windows.html #}
{% set wazuh_agent_name = wazuh_config.get("agent", grains.get("id")) %}
{% set wazuh_manager = wazuh_config.get("manager", None) %}
{% set wazuh_registration_password = wazuh_config.get("registration_password", None) %}
{% set wazuh_agent_group = wazuh_config.get("group", None) %}
{% set flags = "/qn /norestart WAZUH_AGENT_NAME=" ~ wazuh_agent_name %}

{% if wazuh_manager %}
{% set flags = flags ~ " WAZUH_MANAGER=" ~ wazuh_manager %}
{% endif %}

{% if wazuh_registration_password %}
{% set flags = flags ~ " WAZUH_REGISTRATION_PASSWORD=" ~ wazuh_registration_password %}
{% endif %}

{% if wazuh_agent_group %}
{% set flags = flags ~ " WAZUH_AGENT_GROUP=" ~ wazuh_agent_group%}
{% endif %}



wazuh-agent:
  '4.14':
    full_name: 'Wazuh-Agent'
    installer: salt://files/wazuh-agent-4.14.5-1.msi
    install_flags: '{{ flags }}'
    msiexec: True
    reboot: False

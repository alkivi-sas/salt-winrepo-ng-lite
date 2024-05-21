{% set host = salt['pillar.get']('hurukai-agent:host', 'AAAA-AAAA-AAAA-AAAA-AAAA') %}
{% set port = salt['pillar.get']('hurukai-agent:port', '443') %}
{% set proto = salt['pillar.get']('hurukai-agent:proto', 'https') %}
{% set srv_sig_pub = salt['pillar.get']('hurukai-agent:srv_sig_pub', 'AAAA-AAAA-AAAA-AAAA-AAAA') %}
{% set password = salt['pillar.get']('hurukai-agent:password', 'AAAA-AAAA-AAAA-AAAA-AAAA') %}

hurukai-agent:
  '3.7.8':
    full_name: 'HarfangLab Hurukai agent'
    installer: salt://files/hurukai-agent.3.7.8.msi
    install_flags: '/qn HOST={{ host }} PORT={{ port }} PROTO={{ proto }} SRV_SIG_PUB={{ srv_sig_pub }} PASSWORD={{ password }}'
    uninstaller: '{B3EE5BFE-D0D4-4E35-92E4-8CE35BECB51B}'
    uninstall_flags: '/qn /norestart'
    msiexec: True

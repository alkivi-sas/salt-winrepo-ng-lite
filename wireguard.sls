wireguard:
  0.5.3:
    full_name: 'Wireguard'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'https://download.wireguard.com/windows-client/wireguard-amd64-0.5.3.msi'
    {% else %}
    installer: 'https://download.wireguard.com/windows-client/wireguard-x86-0.5.3.msi'
    {% endif %}
    install_flags: '/qn /norestart DO_NOT_LAUNCH=1'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False

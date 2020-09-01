# both 32-bit (x86) AND a 64-bit (AMD64) installer available
duplicati:
  '2.0.5.1':
    full_name: 'Duplicati 2'
    installer: salt://files/duplicati-2.0.5.1_beta_2020-01-18-x64.msi
    uninstaller: salt://files/duplicati-2.0.5.1_beta_2020-01-18-x64.msi
    install_flags: '/qn /norestart ALLUSERS=1'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False
  '2.0.4.23':
    full_name: 'Duplicati 2'
    installer: salt://files/duplicati-2.0.4.23_beta_2019-07-14-x64.msi
    uninstaller: salt://files/duplicati-2.0.4.23_beta_2019-07-14-x64.msi
    install_flags: '/qn /norestart ALLUSERS=1'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    reboot: False

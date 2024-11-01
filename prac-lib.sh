#!/bin/bash
 


# Downloads ADmodule/Powerview
wget https://github.com/samratashok/ADModule/archive/refs/heads/master.zip -O admodule.zip
wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Recon/PowerView.ps1 -O powerview.ps1

# Downloads go-windapsearch
wget "https://github.com/ropnop/go-windapsearch/releases/download/v0.3.0/windapsearch-linux-amd64" -O windapsearch
chmod +x windapsearch

# Downloads custom repo items
wget https://raw.githubusercontent.com/ehn4602/Cyber-Scripts/refs/heads/main/PowerView-Install.ps1 -O powerview-install.ps1
wget https://raw.githubusercontent.com/ehn4602/Cyber-Scripts/refs/heads/main/ADM-Install.ps1 -O adm-install.ps1
wget https://raw.githubusercontent.com/ehn4602/Cyber-Scripts/refs/heads/main/alt.txt
wget https://raw.githubusercontent.com/ehn4602/Cyber-Scripts/refs/heads/main/windap-prac.sh
chmod +x windap-prac.sh
wget https://raw.githubusercontent.com/ehn4602/Cyber-Scripts/refs/heads/main/ldap-prac.sh
chmod +x ldap-prac.sh

# Starts up http server
python3 -m http.server 8080

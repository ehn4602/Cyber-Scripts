echo -e "2a -Domain Admins\n"
ldapsearch -LLL -H ldap://192.168.56.10 -D "robert.baratheon@sevenkingdoms.local" -w "iamthekingoftheworld" -b "DC=sevenkingdoms,DC=local" "(memberof=CN=Domain Admins,CN=users,DC=sevenkingdoms,DC=local)" | grep -E "^(cn:|memberOf:)"
read -p "2a - user SPNs\n" empty
ldapsearch -LLL -H ldap://192.168.56.10 -D robert.baratheon@sevenkingdoms.local -w iamthekingoftheworld -b "DC=sevenkingdoms,DC=local" "(objectClass=*)" servicePrincipalName | grep servicePrincipalName
read -p "2b -OID enumeration\n" empty2 
ldapsearch -LLL -H ldap://192.168.56.10 -D "robert.baratheon@sevenkingdoms.local" -w "iamthekingoftheworld" -b "DC=sevenkingdoms,DC=local" "(&(objectclass=*)(memberof:1.2.840.113556.1.4.1941:=CN=Domain Admins,CN=users,DC=sevenkingdoms,DC=local))"
read -p "2c admincount=1, filter dn" empty3
ldapsearch -LLL -H ldap://192.168.56.10 -D robert.baratheon@sevenkingdoms.local -w iamthekingoftheworld -b "DC=sevenkingdoms,DC=local" "(adminCount=1)" dn

echo "2a domain admins"
./windapsearch -d 192.168.56.10 -u robert.baratheon@sevenkingdoms.local -p iamthekingoftheworld -m domain-admins
read -p "2a user SPN" empty
./windapsearch -d 192.168.56.10 -u robert.baratheon@sevenkingdoms.local -p iamthekingoftheworld -m user-spns --verbose
read -p "2c admincount=1 dn only" empty
./windapsearch -d "192.168.56.10" -u "robert.baratheon@sevenkingdoms.local" -p "iamthekingoftheworld" -m "domain-admins" | grep dn
read -p "2b OID" empty
./windapsearch -d "192.168.56.10" -u "robert.baratheon@sevenkingdoms.local" -p "iamthekingoftheworld" -m "custom" --filter "(&(objectClass=*)(memberof:1.2.840.113556.1.4.1941:=CN=Domain Admins,CN=users,DC=sevenkingdoms,DC=local))" | grep -a "dn"

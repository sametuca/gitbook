# Load Balancing

3 sunucu 1 normal makine kurulur Makine IP : xx.10

Makine IP : xx.11 Makine IP : xx.12 Makine IP : xx.13

İlk Makine domain controller kurulacak -> new forest -> uca.local -> password Tüm makinalarda Firewall kapatılacak ve DC makinasının IP adresi DNS adresleri kısmına yazılacak. 2 ve 3. Makineyi domaine al firewall kapat ve restart at 2.makinaya ISS KUR 3.makinaya ISS KUR

2 ve 3 makinanın ISS ayarlarını ayrı ayrı yap 2.Makinaya network Balancing Kur – Role and Features kısmından kurabilirsin 3.Makinaya network Balancing Kur – Role and Features kısmından kurabilirsin 2.MAKİNA TOOLS -> NETWORK LOAD BALANCİNG -> NEW CLUSTER -> (2)KENDİ IP -> 20 Lİ IP VER -> MULTİCAST -> VS2012-WEB01 ->MULTİCAST -> NETWORK -> FİNİSH VV Uygulama ekranında ki cluster ana elamanı sağ tıkla ve 3. Makinanın IP adresini gir. Ana makina -> DNS MANAGER -> FORWARD LOOKUP ZONE -> NEW HOST -> VS2012-WEB01 -> 20 Lİ IP Yİ GİR

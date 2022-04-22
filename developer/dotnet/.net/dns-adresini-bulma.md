# DNS Adresini Bulma

```
netsh interface ipv4 add dnsservers "Yerel Ağ Bağlantısı" 8.8.8.8
netsh interface ipv4 add dnsservers "Yerel Ağ Bağlantısı" 8.8.4.4

Process p = new Process();
Process s = new Process();

ProcessStartInfo psi = new ProcessStartInfo("netsh", "interface ipv4 add dnsservers \"Yerel Ağ Bağlantısı\" 8.8.8.8 ");

p.StartInfo = psi;
p.Start();

Process.Start("netsh", "interface ipv4 add dnsservers \"Yerel Ağ Bağlantısı\" 8.8.4.4 index=2 ")
```

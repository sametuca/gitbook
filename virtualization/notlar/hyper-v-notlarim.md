# Hyper-V Notlarim



## DİSK GENİŞLETME

Manager altında ki component sağ tıklanır ve edit disk seçeneği ile devam edilir.

Bir sonraki pencerede diskin kendisi seçilir

&#x20;               COMPACT -> Disk sıkıştırma(fixed) minimum ayarlara göre

&#x20;               CONVERT -> Disk tipini çevir

&#x20;               EXPAND -> Diski genişletir

&#x20;               SHRİNK -> Küçültür

Vhd ve Vhdx usb bellek gibi kullanılabilir. Bu dosyalar taşınıp başka bir makinada kullanılabilir.

## VİRTUAL SWİTCH

External bir ethernete connect olur ve ordan çıkar external en az 1 fiziksel ağ kartı gerekir.

Diğer makinelerle iletişime geçeçer

VLAN -> Alt ağ

Kart Yapıları

&#x20;               Private -> Lab ortamlarında kurulur. Gerek yoktur.

&#x20;               External -> Dış dünya ile iletişimimizi sağlar

&#x20;               İnternal -> Sanalların kendi aralarında ki iletişim

## &#x20;

## SAN MANAGER

Storage area network

Yani veri depolama üniteleri

Sunucu ßà Storage

Numa -> Araştırılacak

Live Migration -> Bir sunucudan diğer sunucuya aktarma

Storage migration -> Storageleri göç ettirir.

Enhanced Session -> \*\*

Replication Configuration > Çalışır durumdayken yedekle

## &#x20;

## CREATE VİRTUAL MACHİNE

Generation 1 -> Tüm platformlarda desteklenir

Generation -> UEFI Boot / x64 / 2008 yok

Checkpoint / VMware Snapshot gibidir.

START -> mmc.exe hypver-v eklenip remote olarak bağlanılabilir.

Hypver-V manager sağ tık new -> harddisk

è VHD eski sanal disk formatı (2008) max size 2tb

è Vhdx Windows 2012 max size 64tb

è 2008ler vhdx i göremez

VHD SET -> backup, sanallaştırma

Fixed Size ->  harddiskteki sizin verdiğiniz boyutu kaplar

Performans avantajı ve T-SQL için idealdir.

Dynamic Disk -> İçine veri koydukça büyür

Differencing -> Parça disk

\-          Kurulum hatalarında aşağıda ki kodlar sanal makinanın kurulu olduğu klasörde ki ilgili dosyanın en alt satırına yazılmalıdır.

\-          Hypervisor.cpuid.v0 = “FALSE”

\-          Mce.enable = “TRUE”

\-          Vhu.enable =”TRUE” -> Kontrol et

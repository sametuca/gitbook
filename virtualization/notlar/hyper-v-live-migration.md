# Hyper-V Live Migration

failover cluster -> Clone1 = DC Clone2 = DC üye Clone3 = DC üye2

Bir dc makina kurulur ve diğer 2 makina bu domaine dahil edilir. 1. Makinanın hyper-v setting kısmından Live migrations sekmesinde "Enable incoming and outgoing live migrations" seçeneği aktif edilir. Bu migration isteklerine cevap vermesi için gerekli olan bir seçenek. Simulateneous live migrations:2 -> bu kaç makinanın bu cihaza live migration olabileceğini gösterir. Donanım özelliklerine göre bu bu sayı küçültülüp büyütülebilir.

Use any available network for live migration -> Ağda ki cihazların migrationuna izin ver. Use these IP addresses for live migration -> Sadece belli başlı IP adreslerine migration izni ver

Advanced Features CredSSP -> OK Kerberos

Performans options Select performance configuration options - araştır

\*MMC üzerinden hiç remote olmadan diğer makinanın setting kısımlarına ulaşılabilir.

Bir makinayı migration olarak taşımak için o makinanın üzerine gelinir ve "Move" seçeneği tıklanır. O seçenekten sonra domaindeki hangi cihaza migration gönderilecekse o seçilir. Daha sonra ki ekranda 3 farklı seçenek gelecektir.

Move the vritual machine's data to a single location. Harddiski ile ve dosyaları ile taşı

Move the virtual machine's data by selecting where to move the items. Dosyaları taşı ama bir kopyasını burada bırak

Move only the virtual machine Harddiski taşıma sadece servisleri taşı.

Daha sonra taşınacak olan bilgisayarda bir klasör oluştur ve o klasörü seç

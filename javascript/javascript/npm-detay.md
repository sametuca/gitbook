# NPM Detay

npm - nodejs package manager

dosyalarımızı alır, yapacağınız konfigurasyonlara göre hepsini tek bir dosya haline getirir.

npm list --depth=1 -> sadece sizin kurduğunuz paketleri listeler

^4.17.1 gibi bir versiyon nedir? //MajorNo.MinorNo.PatchNo

ufak düzeltmelerde patch artar. ek bir özellikte minör artar. ama kodlarda bir bozulma olmaz. büyük bir güncelleme yeni özelliklerde major artar. bu durumda projeyi güncellemek gerekebilir.

Şapka - Tilda nedir?

başında tilda varsa otomatik olarak minor update edilir. başında şapka varsa otomatik olarak patch update edilir.

Paket Update nasıl yapılır?

npm i packagename@versionNo

npm outdated -> desteği kesilmiş versiyon paketlerini gösterir.

whoami -> paketi npm üzerinden publish etmek.

npm init -y -> packagejson dosyasını projeye ekler

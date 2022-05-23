# Docker Nedir?

## Temel Düzeyde Docker Mantığı ve Kavramları <a href="#7d0a" id="7d0a"></a>

**Bazı Tanımlamalar:**

* _Imaj = Docker Image_
* _Konteyner = Container_
* _CLI = Command Line Interface_
* _İstemci-sunucu = Client-server_
* _Konteynerizasyon = Containerization_
* _Linux Çekirdeği = Linux Kernel_

**Giriş**

Eğer uygulama geliştiricisi iseniz günümüz dinamiklerini yakalamak adına yeniliklere ayak uydurmak zorundasınız. Bu yenilikler çoğu zaman entegre olmak için harcanacak vakit ve masrafa değebiliyor. İşte bence Docker da bu kategori de tutacağımız yeniliklerden bir tanesi. Her ne kadar yenilik diye bahsetsem de aslında ilk sürümü 2013 de yayınlanmış olup günümüzde DevOps felsefesi ve Mikroservis mimarileri ile beraber yıldızı daha da parlamış bir platformdur.

**Docker Nedir ?**

Docker, uygulamaları geliştirme yayına alma ve çalıştırma gibi süreçleri konteynerler üzerinden yürütmemize olanak sağlayan bir platformdur. Docker’ın Türkçe’de ki karşılığı ‘liman işçisi’dir. Docker’in altında yatan temel felsefesi, bizleri işletim sistemlerinden soyutlayarak her biri ayrı konteyner üzerinden çalışabilen birbirlerinin bozulması veya değiştirilmesinden etkilenmeyecek ayrı uygulama yayın alanları oluşturulmasını sağlamaktır.

**Docker Mimarisi**

İşletim sistemlerinden bağımsız olarak Docker mimarisinin temelinde Daemon process’i bulunur. Linux’da hem Daemon hem de Docker CLI (Command Line Interface) direkt Linux üzerinde koşmaktadır. Windows ve Mac OS X’te ise Docker CLI Windows ve Mac OS X işletim sistemlerinde, Daemon ise bir sanallaştırma teknolojisi (Hypervisor) ile Linux üzerinde koşar. Bunun sebebi ise Daemon’un Linux çekirdeğine ihtiyaç duymasıdır.

![](https://miro.medium.com/max/984/1\*MYX0ClbWoitxS0RNUVvj8A.png)2.1 Docker Mimarisi

Resim 2.1'de görüldüğü üzere CLI ve Daemon, Rest API aracılığı ile haberleşmektedir bu sebepten Docker istemci-sunucu mimarisini kullanır diyebiliriz. Docker istemcisi CLI aracılığı ile yapmak istediği işlemleri Daemon ile konuşur. Daemon ise gelen taleplere göre imajlarımızı, konteynerlerimizi, ağı ve volumes adında ki sabit, konteynerden bağımsız olan verilerimizi yönetebilir.

**Image Kavramı**

Docker üzerinde konteyner ayağı kaldırmak için bir imaja ihtiyaç duyulur. Imajlar içinde uygulamanızın çalışması için kütüphane, ortam değişkenleri ve konfigürasyon dosyalarını barındıran çalıştırılabilir paketlerdir. Sizin de kendinize ait bir imajınız olabilir. Yada Docker Hub üzerinden diğer insanların eklemiş oldukları hazır imajları alıp kullanabilirsiniz.

Genellikle bir imaj dosyası bir başka imaj dosyasına bağımlı ve üzerine kurulur. Örneğin, Ubuntu tabanlı bir imaj oluşturmak istiyorsun fakat uygulamanı çalıştırmak için Apache Server’a ihtiyaç duymaktasın. Bu durumda Docker Hub da ihtiyaç duyduğun imajları indirdikten sonra Dockerfile ile birleştirip kendi imajını çalıştırabilirsin. Dockerfile’ımızı düzenleyip imajı yeniden oluşturduğumuzda yalnızca değişen katmanlar yeniden oluşturulur. Bu da imajları diğer sanallaştırma teknolojilerinden ayırarak daha hafif, küçük ve hızlı yapan önemli bir özelliktir.

**Container Kavramı**

Temel olarak konteyner, imajın çalıştırılabilir örneğidir. Docker Rest API veya CLI aracılığıyla konteynerler oluşturup, başlatıp, durdurabilir veya başka bir yere taşıyabiliriz.

**Konteynerizasyon’un Avantajları ?**

* _Esneklik: En karmaşık uygulamalar bile konteynır üzerinden yayınlanabilir._
* _Hafif Yük: Konteynırlar Linux Kernel çekirdeğini kullanır ve paylaşırlar. Sanal Makineler de ki gibi her birinin ayrı bir işletim sistemi olmaz._
* _Taşınabilirlik: Local’inde çalıştırıp, bulut sunucu üzerinde yayınlayıp ve her yerde çalıştırabilirsin._
* _Ölçeklenebilirlik: Çalışan servislerimizinin üzerinde ki trafiğe göre yeni konteynerler ortaya çıkarılabilir._

**Docker Registry**

Docker, imaj dosyalarını Docker Registry’de depolar. [Docker Hub](https://hub.docker.com/) da imaj dosyalarını alıp kullanabildiğimiz, yeni imaj dosyaları yükleyip konfigüre edebildiğimiz public bir registry’dir. Bunun yanısıra private registry de oluşturabilir ve imajlarımızı bunun üzerinden depolayabiliriz.

![](https://miro.medium.com/max/1400/1\*pebo5ZC35HDY6osrty5F8A.png)2.1 Docker Registry

**Konteyner Yapısı & Sanal Makineler**

Konteynerler Docker Daemon tarafından Linux Çekirdeği içerisinde birbirinden izole olarak çalıştırılan işlemlerdir. Bir ana konteyner Linux üzerinde yerel olarak çalışır ve Linux çekirdeğini diğer konteynerler ile paylaşır.

Sanal makineler da ise bir fiziksel sunucu üzerine kurulmuş olan her bir sanal makine kendi işletim sistemine sahiptir. Yani **konteynerler içinde işletim sistemi bulundurmazlar ve bu sebepten sanal makinelere göre çok daha az yer kaplarlar.**

![](https://miro.medium.com/max/1400/1\*OlwB\_v5eovW0S6lqDTOsbQ.png)

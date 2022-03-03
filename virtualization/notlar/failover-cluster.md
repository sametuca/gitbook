# Failover Cluster

3 Makineye **Vmware** üzerinden kurulacak (Windows server 2012 **x3**)

3 Makinenin IP adresileri sabitlenecek.

1 .Makineye **Role and Features** kısmından **DC** ve **ISCS Target Server** kurulacak.

2 ve 3.makinenin IP ayarlarında ki DNS bölümünün üst satırındaki IP giriş bölümüne 1. Makinenin(**DC**) IP adresi yazılacak. Bu sayede bu makineler Domain tanımlaması yapabilir.

1.Makineye 3 tane 40 gblik disk eklenir ve **Raid5** yapılır.

1.Makinede **ISCS Target** oluşturulup hedef kısmına diğer 2 makinenin IP leri yazılır.

2 ve 3. Makineleri domaine bağla.                                                           222222222222222222222222255555555555555555

2.Makinede ISCS Connect yap(**iSCS Initiator**). Hangi cihazdan paylaşıldıysa onun IP adresi yazılır.

3.Makinede ISCS Connect yap(**iSCS Initiator**). Hangi cihazdan paylaşıldıysa onun IP adresi yazılır.

2\. Makineye **Role and Features** den **file server, fail over clustiring ve multipath io** seçilir ve kurulur.

3\. Makineye de aynı işlem yapılacak.

2\. makinenin **Server Manager** -> **Tools** -> **fail over cluster** kısmına girilir.

Yeni CLUSTER eklenir.

Cluster eklenirken eklenen cihaz ve diğer cihazları göstermemiz gerekiyor.

Daha sonra Cluster sağ tıklanır more action -> En üstteki -> Select he quarum ile quarum diski ekleriz.

Daha sonra diskler eklenir. (Storage->Disks sağ tık add new disk)

Clustera rol atamamız gerekiyor.

Cluster ekranından Roles kısmına gelinir sağ tıklanır. Configure Role  -> File Server -> File Server for general -> diğer işlemler yapılır.

Disk içerisinde Share adlı bir klasörün paylaşılması gerekiyor. Bunun için 2 yol var.

\-          > Roles kısmından çıkan clusteri sağ tıklayıp file share tıklanır.

\-          > Server manager share kısmından share ayarları tamamlanır.

\-          >Klasörün Shared ayarları yapılabilir(En kolay)

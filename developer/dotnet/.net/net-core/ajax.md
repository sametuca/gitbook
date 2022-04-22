# Ajax

```
public class Ogrenci
{
    public int ID { get; set; }
    public int OgrenciNo { get; set; }
    public string Ad { get; set; }
    public string SoyAd { get; set; }
    public string Sube { get; set; }
    public int Sinif { get; set; }
}
```

```
<div>
    <input type="text" id="OgrenciID" />
    <br />
    <input type="submit" id="OgrenciGetir" value="Öğrenciyi Getir" />
</div>
<div>
    <p>Öğrenci Adı : <strong id="OgrenciAdi"></strong></p>
    <p>Öğrenci Soyadı : <strong id="OgrenciSoyAdi"></strong></p>
    <p>Öğrenci Numarası : <strong id="OgrenciNumarasi"></strong></p>
    <p>Öğrenci Şubesi : <strong id="OgrenciSubesi"></strong></p>
    <p>Öğrenci Sınıfı : <strong id="OgrenciSinifi"></strong></p>
</div>
```

```
[HttpPost]
        public JsonResult OgrenciyiGetir(int id)
        {
            List<Ogrenci> Ogrenciler = new List<Ogrenci>
            {
                new Ogrenci { ID = 1, Ad = "Gençay", SoyAd = "Yıldız", OgrenciNo = 1234, Sinif = 5, Sube = "A" },
                new Ogrenci { ID = 2, Ad = "Mustafa", SoyAd = "Candan", OgrenciNo = 2342, Sinif = 6, Sube = "B" },
                new Ogrenci { ID = 3, Ad = "Necati", SoyAd = "Şaşmas", OgrenciNo = 5345, Sinif = 7, Sube = "C" },
                new Ogrenci { ID = 4, Ad = "Ayşe", SoyAd = "Kündür", OgrenciNo = 5675, Sinif = 8, Sube = "D" },
                new Ogrenci { ID = 5, Ad = "Furkan", SoyAd = "Somun", OgrenciNo = 8974, Sinif = 9, Sube = "E" }
            };
 
            Ogrenci ogrenci = Ogrenciler.FirstOrDefault(o => o.ID == id);
            return Json(ogrenci, JsonRequestBehavior.AllowGet);
        }
```

```
<script type="text/javascript">
    $(document).ready(function () {
        $("#OgrenciGetir").click(function () {
            var ID = $("#OgrenciID").val();
            $.ajax({
                url : '/Home/OgrenciyiGetir/' + ID,
                type:'POST',
                dataType:'json',
                success:function(data){
                    $("#OgrenciAdi").html(data.Ad);
                    $("#OgrenciSoyAdi").html(data.SoyAd);
                    $("#OgrenciNumarasi").html(data.OgrenciNo);
                    $("#OgrenciSubesi").html(data.Sube);
                    $("#OgrenciSinifi").html(data.Sinif);
                }
            });
        });
    });
</script>
```

Yukarıdaki Ajax kod bloğunu incelersek eğer, url ile ajax ile post neticesinde çalıştırılacak adresi belirtiyoruz, type ile Post işlemi yapılacağını belirtiyoruz, dataType ile Json veri formatında çalışacağımızı belirtiyoruz, success ile de post işlemi neticesinde geriye bir değer dönüyorsa eğer bu değer üzerinde işlemler yapabiliyoruz.Tanımlanan fonksiyondaki data isimli parametre bu değeri temsil etmektedir.Burada dikkat etmeniz gereken husus, data parametresi modelimizdeki propertylerin birebir benzerini taşımaktadır.

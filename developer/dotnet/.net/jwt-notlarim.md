# JWT Notlarım

![](../../../.gitbook/assets/Screenshot\_1.png)

Bir yapı API ile besleniyorsa token bazlı olmalı. Mesela mobil ve javascript frameworkleri ile yazılmış olan uygulamalar.

Token dağıtan katmana identityServer gibi isimler verilebilir.

Token neye göre dağıtılır?

* Kullanıcının kullanıcı adı ve şifresi alınır
* Bu bilgiler AuthServer'a gönderilir.
* Eğer bu bilgiler veritabanında var ise bir token döner.
* Bu gelen token client tarafında localstorage içerisine kaydolur.
* Artık elimizde bir token var. Token string bir ifadedir. İçinde hangi yetkilere sahip olduğumuz gibi hangi api lere istek atabileceğimize yönelik bilgiler bulunabilir.

![](<../../../.gitbook/assets/image (7) (1).png>)

Kullanıcı için özel bilgiler token içinde tutulmaz. Mesela şifre tutulmamalıdır.

**Tokene sahip olan client bir istek yaptığında bunu token ile birlikte yapar. Karşı taraf ise gelen isteğin header kısmında token bekler.**

Gelen istek geçerli ise isteğe cevap verilir. Tokenin ömrü dolduysa veya geçersiz ise dönüş yapılmaz.(401 döner)

401 -> kimlik yetkilendirmede bir problem var anlamına gelir.

AuthServer kendi veritabanında üyelik sistemini tutar.

**Token her kullanıcıya özgüdür. Token içerisinde Kullanıcı identity olabilir.**

Üyelik sisteminin olmadığı noktalarda jwt ile yinede hangi apilere istek yapabileceğine yönelik işlem yapabiliyoruz.

**header**

**payload**(3 kısımdan ilk değer olan subject kullanıcı idsi olabilir)

**signature**

Simetrik şifrelemede token aynı değer ile çözülebilir. Tek bir key ile çözülür.

Asimetrik şifrelemede token 2 anahtara ihtiyaç duyar. **Private** ve **public**.

Bu 2 anahtar birbirini tanımaz.

<mark style="background-color:green;">**Bir client, auth serverdan token isteğinde bulunduğunda üretilen token private anahtar ile imzalanır.**</mark>

<mark style="background-color:green;">**Bir endpointte ise public key yayımlanır. Client gidip bir istekte bulunduğunda, istekte bulunulan yer public keyi gider o endpointten alır ve tokeni çözmeye çalışır.**</mark>

Tokenin içinde tutulan her bir kullanıcı bilgisi Claim olarak isimlendirilir. Bu yapı Tokenin payloadına karşılık geliyor.

JWT bir Access Tokendir.(Erişim tokeni) Her bir isteğin headerında bu istek atılır.

Refresh Token -> Access tokenın ömrü dolduğunda yeni bir stringin üretilmesi.

**Refresh Token (Yenileme Belirteci):** Bir erişim belirtecinin geçersiz olduğu durumlarda kullanılmak üzere oluşturulmuş olan ve bu geçersiz belirtecin güncellenmesini/yenilenmesini sağlayan belirteçtir.

## 3.3. API Anaharı ile Doğrulama (API Key Authentication) <a href="#9860" id="9860"></a>

Kullanıcı bir API’ya kendisini doğrulattıktan sonra kendisine (MAC, IP veya bazen ikisi de alınarak) ait benzersiz(unique) bir anahtar oluşturulur ve bu anahtar ile sonraki işlemlerinde kendisini sisteme doğrulatır. Bu doğrulama esnasında ilgili anahtar farklı şekillerde gönderilebilir. Bu yöntemler günümüze kadar:

* **Body** (_Gövde_) içinde bir alan olarak,
* **Header** içerisinde (_Authorization: Apikey BFEBFBFF000506E3-QCQRL1061100G3_),
* **Basic** içerisinde ( _Authorization: Basic BFEBFBFF000506E3-QCQRL1061100G3_),
* **Query String** (_?apikey=BFEBFBFF000506E3-QCQRL1061100G3_),

![](<../../../.gitbook/assets/image (6).png>)

***

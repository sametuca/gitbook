# Redis Komutlar



#### Strings

Verilerin string formatı olarak tutulduğu veri yapısıdır. \<key,value> çiftinde değer kısmı maksimum 512 MB yer tutar.

String veri ekleme komutu:\
`SET <key> <value>`

```
127.0.0.1:6379> SET firstName Yusuf
OK
```

&#x20;

Anahtar değeri ile string veriyi alma komutu:\
`GET <key>`

```
127.0.0.1:6379> GET firstName
"Yusuf"
```

&#x20;

Değerin sonuna string ekleme komutumuz:\
`APPEND <key> <text>`

```
127.0.0.1:6379> APPEND firstName " Yilmaz"
(integer) 12
127.0.0.1:6379> GET firstName
"Yusuf Yilmaz"
```

&#x20;

Bütün anahtar değerlerini çağırma  komutu:\
`KEYS *`

```
127.0.0.1:6379> KEYS *
1) "firstName"
```

&#x20;

Anahtar değeri ile veri silme komutu:\
`DEL <key>`

```
127.0.0.1:6379> DEL firstName
(integer) 1
```

&#x20;

Bütün verileri silme komutu:\
`FLUSHALL`

```
127.0.0.1:6379> FLUSHALL
OK
```

Yukarıdaki komutlarda her ne kadar string işlemleri yapsak da sayılsa bir değeri string gibi tutup üzerinde matematiksel işlemler de gerçekleştirebiliriz.

Sayısal değeri bir artırma komutu:\
`INCR <key>`

```
127.0.0.1:6379> SET age 22
OK
127.0.0.1:6379> INCR age
(integer) 23
```

&#x20;

Yukarıdaki INCR komutu ile değer bir artırıldı. Bunun yanı sıra `DECR`, `DECRBY`, `INCRBY` gibi komutlar ile de artırım ya da azaltım işlemleri yapılabilmektedir.

Oluşturulacak değere yaşam süresi ekleme komutu:\
`SETEX <key> <expire_time> <value>`

```
127.0.0.1:6379> SETEX lastName 20 Yilmaz
OK
127.0.0.1:6379> TTL lastName
(integer) 19
```

`TTL` komutu verilen anahtar değerin süresinin bitmesine kaç saniye kaldığını söyler, verilen `expire_time` değeri saniye cinsindendir.

#### Lists

Burada veriler bağlı liste biçiminde tutulurlar. Bu listede, liste başını ifade etmek için L, liste sonunu ifade etmek için de R kullanılır.

Listenin başına eleman ekleme komutu:\
`LPUSH <key> <value>`

```
127.0.0.1:6379> LPUSH postList "Dependency Injection ve Ninject"
(integer) 1
```

&#x20;

Listenin sonuna eleman ekleme komutu:\
`RPUSH <key> <value>`

```
127.0.0.1:6379> RPUSH postList "Aspect Oriented Programming"
(integer) 2
```

&#x20;

Listenin eleman sayısını öğrenme komutu:\
`LLEN <key>`

```
127.0.0.1:6379> LLEN postList
(integer) 2
```

&#x20;

Listenin başından eleman silme komutu:\
`LPOP <key>`

```
127.0.0.1:6379> LPOP postList
"Dependency Injection ve Ninject"
```

&#x20;

Listenin sonundan eleman silme komutu:\
`RPOP <key>`

```
127.0.0.1:6379> RPOP postList
"Aspect Oriented Programming"
```

&#x20;

Listede belirli aralıktaki verileri alma komutu:\
`LRANGE <key> <start_index> <stop_index>`

```
127.0.0.1:6379> LRANGE postList 0 2
1) "Fluent Validation"
2) "Dependency Injection ve Ninject"
3) "Aspect Oriented Programming"
```

Liste üzerindeki eleman sayısını bilmediğimiz durumlarda `start_index` değerine 0 `stop_index` değerine -1 verirsek bütün verileri elde edebiliriz.

#### Sets

Set veri tipi, verileri sırasız (rastgele sırada eklenilen) ve unique (benzersiz) olarak tutan veri tipidir. Aynı veriden birden fazla bulunmamaktadır.

Set’e eleman ekleme komutu:\
`SADD <key> <value>`

```
127.0.0.1:6379> SADD friends Halit
(integer) 1
```

&#x20;

Set içerisinden eleman silme komutu:\
`SREM <key> <value>`

```
127.0.0.1:6379> SREM friends Halit
(integer) 1
```

&#x20;

Set içerisindeki bütün elemanları getirme komutu:\
`SMEMBERS <key>`

```
127.0.0.1:6379> SMEMBERS friends
1) "Arafat"
2) "Halit"
```

&#x20;

#### Sorted Sets

Sorted Set veri yapısı, Set veri yapısının benzerdir. Verileri unique (benzersiz) olarak tutmakla beraber `score` dediğimiz değere göre sıralama işlemi yapmaktadır.

Sorted Set’e eleman ekleme komutu:\
`ZADD <key> <score> <value>`

```
127.0.0.1:6379> ZADD teams 100 "Besiktas"
(integer) 1
```

&#x20;

Sorted Set içerisinden eleman silme komutu:\
`ZREM <key> <value>`

```
127.0.0.1:6379> ZREM teams Besiktas
(integer) 1
```

&#x20;

Sorted Set içerisindeki belirli aralıktaki verileri alma komutu:\
`ZRANGE <key> <start_index> <stop_index>`

```
127.0.0.1:6379> ZRANGE teams 0 1
1) "Fenerbahce"
2) "Galatasaray"
```

Sorted Set üzerindeki eleman sayısını bilmediğimiz durumlarda `start_index` değerine 0 `stop_index` değerine -1 verirsek bütün verileri elde edebiliriz. Komutun sonuna `WITHSCORES` yazılarak score değerleri ile birlikte veriler elde edilmiş olur.

#### Hashes

Hash veri tipi, bir key’e karşılık birden fazla field (alan tutmaya) yarayan veri tipidir.

Hash’e eleman ekleme komutu:\
`HSET <key> <field> <value>`

```
127.0.0.1:6379> HSET person firstName Yusuf
(integer) 1
```

&#x20;

Hash içerisinden belirli alanı getirme komutu:\
`HGET <key> <field>`

```
127.0.0.1:6379> HGET person firstName
"Yusuf"
```

&#x20;

Hash içerisinden belirli alanı silme komutu:\
`HDEL <key> <field>`

```
127.0.0.1:6379> HDEL person firstName
(integer) 1
```

&#x20;

Hash içerisindeki bütün alanı getirme komutu:\
`HGETALL <key>`

```
127.0.0.1:6379> HGETALL person
1) "firstName"
2) "Yusuf"
3) "lastName"
4) "Yilmaz"
5) "age"
6) "22"
```

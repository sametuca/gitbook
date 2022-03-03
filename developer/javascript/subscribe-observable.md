# Subscribe, Observable

Asenkron programlama için avatanjlı olan kütüphane. Server tarafında meydana gelebilecek değişiklikleri observable yapısına subscribe olan observerlar izleyebilir. Güncellenen veriden anında haberdar olabilmektedir observerlar. Ayrıca rxjs yapısının temeli Observer ve Iterator pattern üzerine kuruludur.

Observer pattern ile subscribe olan observerlara değişiklikler pushlanır, iterator pattern yapısı ile observer gelen değişikleri iterate ederek ilgili işlemleri kendi içinde yapar.

Örneğin angular component'i içinde router'a suscribe olursak, routerda olan herhangi bir parametre değişikliğini sayfa tekrar yüklenmeden, component içersinde görebiliriz.

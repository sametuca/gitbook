# Javascript Asenkron Yaklaşım

Javascript aslında single threaddır. Ama asenkron durumlarda workthreadları devreye girer.

Javascriptte timerli yapılar web api tarafına alınır. Single thread diğer tarafta global yapıları işler. wep api tarafında timerli işlem bittikten sonra callback queue tarafına alınır. Devreye event loop girer ve call stack kontrol edildikten sonra uygunsa queue de bekleyen timerli yapı call stack tarafına alınır ve işlenmeye başlar.

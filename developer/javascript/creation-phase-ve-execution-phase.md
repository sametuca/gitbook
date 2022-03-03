# Creation Phase ve Execution Phase

https://medium.com/swlh/javascript-execution-context-and-call-stack-86a69f09ce59

Bir javascript dosyası başlatıldığında..

Global execution context oluşturulur. windows gibi yapılar tanımlanır. Daha sonra 2 yapı sırasıyla devreye girecektir. Bunlar Creation Phase ve Execution Phase

İlk olarak Creation Phase devreye girer ve Hosting yapar. Peki Hosting nedir?

Hosting; var,const ve function labellerini okur memorye atar. Ancak değer ataması yapmaz. Yani, creation tarafında ilk olarak hosting yapılır. Değişken ve fonksiyonları okur memoryde yer ayırır. Ancak değer atamalarını yerleştirmez.

Sonrasında Execution phase işlemi başlar. execution tarafında ise kalanları okumaya başlıyor. Bu süreçte değer atamaları yapılır. çağırılan fonksiyonları global stacke sırasıyla ekler. çağırır ve stackten atar.

bir fonksiyon çağırılırsa onda da Execution context oluşturulur ve yukarıda ki işlemler tekrarlanır. Memorysi vardır hosting yapılır. Yani ayrı bir panel oluşturulur ayrı bir dünyadır diyebiliriz.

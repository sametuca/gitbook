# Prototype

Nesne yapıcısına yeni özellik eklemek:

function pc(model, cpu, gpu, ram) {

this.modelName = model; this.CPUModel = cpu; this.GPUModel = gpu; this.RAMSize = ram; }

pc.prototype.SSDSize = "512gb" “pc” adlı yapıcı fonksiyonuna “SSDSize” diye yeni bir özellik kazandırdık ve değerini de “512gb” koyduk. Artık yeni bir nesne üretmek istediğimizde;

1 var HP = new pc("omen", "i7", "gtx1070", "16gb"); yazmamız yeterli, nesnemize SSDSize özelliği otomatik olarak eklenmiş olacak. Sonrasında ise HP.SSDSize diyerek çağırabiliyoruz “HP” nesnemizin SSDSize değerini.

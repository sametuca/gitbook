# Array destructuring

dizide ki elemanları değişkenlere daha kolay aktarmamızı sağlar.

let dizi = \["samet","uca"];

let\[firstname,lastname] = dizi;

console.log(firstname);

***

let\[firstname,..lastname] = dizi; -> geri kalanların hepsi lastname'e atar.

peki json objelerinde nasıl çalışacağız?

var data = \[{ad:"samet",özellikler = \[{yüzme:"iyi seviye"}]}]

const {özellikler:{yüzme\}} = data;

let hasil = null
let soal = null
let score = null
let total = null

//Mengambil element yang ada di html
//parameter String

el = function (str){
    //Untuk menampilkan hasil html di consule
    return document.querySelector(str)
}

acaksoal= function (){
    //Math.floor itu nilainya tidak minus dan koma
    //math.random angka acak bahkan koma
    //guna ada dikali 10 Agar angka yang muncul diantar 0-9 
    //knp mulai dari 0 krn seprti array mulai dari 0
    //guna di tambah 1 agar angka batas 0 menjadi 1
 let a = Math.floor(Math.random()*10)+1
 let b = Math.floor(Math.random()*10)+1
 hasil = a+b

 //penggunaan document.getelemetbyid itu berfungsi kita bisa mengambil div di html mana yang jsnya taruh
    el("[proses]").innerHTML = `${soal}/ ${total} Soal`
    el("[quiz]").innerHTML = `Hasil dari ${a} + ${b}`
}

jawaban = function(){
    let input = el("[jawab]")
    let isian = input.value
    input.value = ""

    if (isian == hasil){
        score += 20
    }
    soal += 1
    if(soal <= total){
        acaksoal()
    }else {
        alert("Quiz Selesai\nScore Anda : " + score)
    }
}

ulang = function(){
    soal = 1
    total = 5
    score = 0
    acaksoal()
}

window.onload = function(){
    ulang()
}
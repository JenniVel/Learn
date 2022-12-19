var quis_soal = null
var quis_total = null
var quis_score = null;
var soal_jawab = null

el = (str)=>{
  return document.querySelector(str)
}

acakSoal = ()=> {
  let a = Math.floor(Math.random()*10)+1
  let b = Math.floor(Math.random()*10)+1
  soal_jawab = a * b

  el("[progress-soal]").innerHTML = `${quis_soal} / ${quis_total} Soal`
  el("[quis-soal]").innerHTML = `Berapa hasil dari ${a} x ${b}`
}

kirimJawaban = ()=> {
  let input = el("[jawab-soal]")
  let jawaban = input.value
  input.value = ""

  if(jawaban == soal_jawab) {
    quis_score += 50
  }
  quis_soal += 1
  if(quis_soal <= quis_total) {
    acakSoal()
  }
  else {
    alert("Quis Selesai\n\nScore Anda : " + quis_score);
  }
}

mulaiGame = ()=> {
  quis_soal = 1
  quis_total = 2
  quis_score = 0
  acakSoal()
}

window.onload = ()=> {
  mulaiGame()
}
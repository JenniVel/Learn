const warno = document.getElementById('warno')
const btn = document.querySelectorAll('input')
for (const btns of btn) {
    btns.onclick =  function () {
        warno.style.backgroundColor = btns.getAttribute('value')
    }  
}
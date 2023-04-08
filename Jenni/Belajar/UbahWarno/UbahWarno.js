const warno = document.getElementById('warno');
const btn = document.querySelectorAll('input');
<<<<<<< HEAD

=======
>>>>>>> dc720722bfe0ac4febb3026c0547a2b71e5a1155
for (const btns of btn) {
    btns.onclick =  function () {
        warno.style.backgroundColor = btns.getAttribute('value');
    }  
}
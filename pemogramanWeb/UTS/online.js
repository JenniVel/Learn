function submit() {
    let noRegis = document.getElementById('no').value;
    let nama = document.getElementById('name').value;
    let alamat = document.getElementById('address').value;
    let jenisKelamin = document.querySelector('input[name="gender"]:checked').value;
    let tglLahir = document.getElementById('date').value;
    let email = document.getElementById('email').value;
    let status = document.querySelector('input[name="married"]:checked').value;
  
    let tableRef = document.getElementById('data-table').getElementsByTagName('tbody')[0];
    let newRow = tableRef.insertRow();
  
    let noRegisCell = newRow.insertCell(0);
    let namaCell = newRow.insertCell(1);
    let alamatCell = newRow.insertCell(2);
    let jenisKelaminCell = newRow.insertCell(3);
    let tglLahirCell = newRow.insertCell(4);
    let emailCell = newRow.insertCell(5);
    let statusCell = newRow.insertCell(6);
  
    noRegisCell.innerHTML = noRegis;
    namaCell.innerHTML = nama;
    alamatCell.innerHTML = alamat;
    jenisKelaminCell.innerHTML = jenisKelamin;
    tglLahirCell.innerHTML = tglLahir;
    emailCell.innerHTML = email;
    statusCell.innerHTML = status;
  }
  
  function cancel() {
    document.getElementById('no').value = '';
    document.getElementById('name').value = '';
    document.getElementById('address').value = '';
    document.getElementById('male').checked = true;
    document.getElementById('date').value = '';
    document.getElementById('email').value = '';
    document.getElementById('married').checked = true;
  }
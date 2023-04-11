function submitData() {
  "use strict";
  let tableRef = document.getElementById("tabel").getElementsByTagName('tbody')[0];
  let row = document.createElement("tr");
  console.log(row);
  let td1 = document.createElement("td");
  let td2 = document.createElement("td");
  td1.innerHTML = document.getElementById('input-nama').value;
  td2.innerHTML  = document.getElementById('input-kelas').value;
  row.appendChild(td1);
  row.appendChild(td2);
  tableRef.appendChild(row);
}


function resetForm() {
  document.getElementById('input-nama').value = '';
  document.getElementById('input-kelas').value = '';
}
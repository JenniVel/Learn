use dbPERPUSTAKAAN
SELECT * FROM Mahasiswa

CREATE VIEW vwPerempuan as 
select * from Mahasiswa 
where jeniskelamin = 'P'
select * from vwPerempuan

ALTER VIEW vwPerempuan as 
select npm,namamahasiswa,
case jeniskelamin
when 'P' then 'Perempuan'
end as jeniskelamin, alamat, notelp 
from Mahasiswa where jeniskelamin ='P'

select * from vwPerempuan

SP_HELPTEXT vwPerempuan

DROP VIEW vwPerempuan

use dbPerusahaan

CREATE VIEW vwPegawai as 
SELECT ee_id, employee_name, salary, case departement
when 'ACC' then 'Akunting'
when 'HRD' then 'Personalian'
when 'IT' then 'Teknologi Informasi'
when 'FIN' then 'Keuangan' 
end 
as 'departement_name', 
IIF(gender = 'L', 'Laki-Laki', IIF(gender = 'P', 'Perempuan', null)) as gender  from Employee

SELECT * FROM vwPegawai

SELECT * FROM vwPegawai where employee_name LIKE 'A%'

SELECT * FROM vwPegawai where employee_name LIKE '%I'

SELECT * FROM vwPegawai where employee_name LIKE '%ma%'

use dbPERPUSTAKAAN

select * from Mahasiswa

SELECT * FROM Mahasiswa where npm LIKE'%[1,5]'
go
SELECT * FROM Mahasiswa where npm LIKE'%[2-4]'
go
SELECT * FROM Mahasiswa WHERE notelp LIKE '%45%'


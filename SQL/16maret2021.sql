use dbPERPUSTAKAAN;

SELECT * FROM Mahasiswa order by namamahasiswa asc

select * from Mahasiswa order by notelp asc

select * from Mahasiswa order by npm desc

select MAX(jumlahpinjam) as jumlahbukuterbanyak from Peminjaman

select MIN(jumlahpinjam) as jumlahbukusedikit from Peminjaman

select AVG(jumlah) as rataratabuku from Buku

select SUM(jumlah)as jumlahbuku from Buku

select COUNT(namamahasiswa) as totalmahasiswa from Mahasiswa

SELECT DISTINCT(namamahasiswa) from Mahasiswa

SELECT COUNT(Distinct(namamahasiswa)) as totalmahasiswa from Mahasiswa

SELECT kodebuku, judulbuku,MAX(jumlah) as jumlahbukuterbanyak, 
MIN(jumlah) as jumlahbukuterkecil, SUM(jumlah) as totalbuku,
COUNT(kodebuku) as databuku from Buku GROUP by kodebuku, judulbuku

SELECT kodebuku, judulbuku, MAX(jumlah) as jumlahbuku from Buku GROUP by kodebuku, judulbuku

SELECT kodebuku, judulBuku, jumlah FROM Buku WHERE Jumlah = (SELECT MAX(Jumlah) as JumlahTerbanyak from Buku);



create database dbPerusahaan;

use dbPerusahaan;

CREATE TABLE Employee(
	ee_id INT IDENTITY(1,1) PRIMARY KEY,
	employee_name varchar(30),
	birth_date date,
	birth_place varchar(20),
	salary int,
	departement varchar(5),
	gender char(1)
)

SELECT * FROM Employee

INSERT INTO Employee (employee_name, birth_date, birth_place, salary, departement, gender) values
('Ahmad Sofyan','1990-01-01','Bandung',2250000,'IT','L')
,('Ismail Saleh','1986-12-12','Pandeglang',5000000,'ACC','L')
,('Ferry Subekti','1987-06-06','Purwakarta',4500000,'HRD','L')
,('Iskiyati','1988-07-07','Brebes',7500000,'FIN','P')
,('Nurul Hikmah','1989-08-08','Purwokerto',3750000,'FIN','P')
,('Riyanto','1983-02-02','Subang',4500000,'IT','L')
,('Azka Nurul','1984-03-03','Bandung',5000000,'HRD','L')
,('Venny Maya','1989-04-04','Jakarta',7000000,'IT','P')
,('Ana Fauziyah','1989-05-05','Bekasi',3700000,'ACC','P')
,('Arya Adhie','1980-09-09','Magelang',8000000,'FIN','L')

SELECT * FROM Employee

SELECT COUNT(employee_name) as jumlahpegawai FROM Employee where departement = 'IT'

SELECT COUNT (*) AS jumlahpegawai FROM Employee where YEAR(getdate()) - YEAR(birth_date) = 33

SELECT MAX(salary) as 'gaji tertinggi', MIN(salary) as 'gaji terendah' from Employee

SELECT MAX(salary) as 'gaji tertinggi', MIN(salary) as 'gaji terendah' from Employee where departement = 'FIN'

SELECT MAX(salary) as 'gaji tertinggi', MIN(salary) as 'gaji terendah' from Employee where gender = 'P'

SELECT sum(salary) as totalsalary from Employee where departement = 'IT'

SELECT SUM(case departement when 'FIN' THEN salary end) as totalsalary from Employee 

SELECT SUM(case departement when 'FIN' THEN salary 
					when 'FIN' then salary 
					else 0 end) as totalsalary from Employee 

SELECT * FROM Employee

SELECT CASE departement 
	when 'IT' then 'Teknologi Informasi'
	when 'ACC' then 'Akunting'
	when 'HRD' then 'Personalia'
	when 'FIN' then 'Keuangan'
	end
	as 'nama departement'
from Employee

go

SELECT IIF(departement = 'IT','Teknologi Informasi', 
IIF(departement = 'ACC','Akunting',
IIF(departement = 'HRD', 'Personalian', 
IIF(departement = 'FIN', 'Keuangan', 'NULL')))) as 'nama departement'
from Employee

SELECT * FROM Employee

--no 1
SELECT COUNT(*) departement FROM Employee WHERE departement = 'IT' AND birth_place = 'Bandung'
go
--no2
SELECT employee_name,salary, (CASE  when salary >= 5000000 then salary *10/100
							WHEN salary < 5000000 then salary *5/100
							else 0 end) as PPH from Employee
go


--no4
SELECT 
  COUNT(CASE WHEN gender = 'L' THEN 1 END) AS 'Laki-laki', 
  COUNT(CASE WHEN gender = 'P' THEN 1 END) AS 'Perempuan' 
FROM Employee;
go
--no5
SELECT SUM(CASE WHEN gender = 'P' then salary end) as 'gaji perempuan' from Employee 
go
--no6
SELECT 
  employee_name, 
  birth_place, 
  CASE departement 
    WHEN 'IT' THEN 'Teknologi Informasi'
    WHEN 'ACC' THEN 'Akunting'
    WHEN 'HRD' THEN 'Personalia'
    WHEN 'FIN' THEN 'Keuangan'
  END AS 'nama departement',
  YEAR(GETDATE()) - YEAR(birth_date) AS umur 
FROM Employee;
go
--no7
SELECT SUM(CASE when departement = 'HRD' then salary end) as 'total seluruh gaji HRD', 
AVG(CASE when departement = 'FIN' then salary end) as 'rata rata gaji FIN' from Employee

SELECT CASE departement 
WHEN 'HRD' THEN SUM(salary)
WHEN 'FIN' THEN AVG(salary)
ELSE 0
end as salary from Employee GROUP BY departement
go
--no8
ALTER TABLE Employee ADD PPH int not null;

--no9
UPDATE Employee SET PPH = salary*10/100

select * from Employee



SELECT birth_date, DATEPART(day, birth_date) as tanggal from Employee
go
SELECT birth_date, DATEPART(MONTH, birth_date) as tanggal from Employee
go
SELECT birth_date, DATEPART(YEAR, birth_date) as tanggal from Employee
go

SELECT DATENAME(DW, GETDATE()) as tanggalhariini  
go
SELECT DATENAME(MONTH, GETDATE()) AS BULANINI
go
SELECT birth_date, DATENAME(DW, birth_date) as hari from Employee
go
SELECT birth_date, DATEADD(DAY, 5, birth_date) as tanggal from Employee
go
SELECT birth_date, DATEADD(DAY, -5, birth_date) as tanggal from Employee
go
SELECT ASCII('a')
go
SELECT birth_place, LEFT(birth_place, 3) as tempat FROM Employee
go
SELECT birth_place, RIGHT(birth_place, 3) AS TEMPAT FROM Employee
go
SELECT birth_place, SUBSTRING(birth_place, 1,4) AS TEMPAT FROM Employee
go
SELECT birth_place, LEN(birth_place) AS TEMPAT FROM Employee
go
SELECT REPLICATE('MDP ', 5) as kata

CREATE TABLE Kursus(
	NO int IDENTITY PRIMARY KEY,
	Nama_Peserta varchar(35),
	Kode_Paket char(10),
	Tgl_Daftar DATE,
	Tgl_Masuk DATE
)

INSERT INTO Kursus (Nama_Peserta, Kode_Paket, Tgl_Daftar, Tgl_Masuk) VALUES
('Yuliani', '243/A/B/A2', '2022-09-12', '2022-10-15'),
('Mathilda', '245/B/A/B1', '2022-09-14', '2022-10-18'),
('Johan', '244/C/B/C2', '2022-09-14', '2022-10-17'),
('Ramses', '245/B/A/B1', '2022-09-16', '2022-10-18'),
('Brontolaras', '243/A/B/A2', '2022-09-18', '2022-10-15')

ALTER TABLE Kursus ADD Angkatan char(3)
ALTER TABLE Kursus ADD Paket varchar(30)
ALTER TABLE Kursus ADD Biaya int

UPDATE Kursus SET Angkatan = LEFT(Kode_Paket,3)
SELECT * FROM Kursus

UPDATE Kursus set Paket = IIF(SUBSTRING(Kode_Paket, 5,1) = 'A', 'Mircrosoft Word',
							IIF(SUBSTRING(Kode_Paket, 5,1) = 'B', 'Mircrosoft Excel',
							IIF(SUBSTRING(Kode_Paket, 5,1) = 'C', 'Mircrosoft Powerpoint', 'NULL')))
							
UPDATE Kursus set Biaya = IIF(Paket = 'Mircrosoft Word', 2*250000, IIF(Paket = 'Mircrosoft Excel', 2*300000, 
IIF(Paket = 'Mircrosoft Powerpoint', 1*250000, 'NULL')))

ALTER TABLE Kursus ADD Tgl_Akhir date

update Kursus set Tgl_Akhir = CASE Paket
when 'Mircrosoft Word' then DATEADD(month, 2, Tgl_Masuk)
when 'Mircrosoft Excel' then DATEADD(month, 2, Tgl_Masuk)
when 'Mircrosoft Powerpoint' then DATEADD(month, 1, Tgl_Masuk) end

--no 6
ALTER TABLE Kursus add lama int, hari_belajar varchar(10), jam_belajar varchar(25),
tgl_selesai date
ALTER TABLE Kursus alter column hari_belajar varchar(20)
--no 7
UPDATE Kursus set lama = IIF(Paket = 'Mircrosoft Word' or Paket = 'Mircrosoft Excel', 2, 
IIF(Paket = 'Mircrosoft Powerpoint', 1, NULL))

--no 8
UPDATE Kursus set hari_belajar = IIF(SUBSTRING(Kode_Paket, 9,1) = 'A', 'Senin - Kamis',
								IIF(SUBSTRING(Kode_Paket, 9,1) = 'B', 'Senin - Jumat',
								IIF(SUBSTRING(Kode_Paket, 9,1) = 'C', 'Rabu - Sabtu', null)))

--no 9
UPDATE Kursus set jam_belajar = IIF(RIGHT(Kode_Paket, 1) = '1', '10.00 - 12.00',
								IIF(RIGHT(Kode_Paket, 1) = '2', '13.00 - 15.00', null))

--no 10
UPDATE Kursus set tgl_selesai = DATEADD(MONTH, lama, Tgl_Masuk)

SELECT * FROM Kursus
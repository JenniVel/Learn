CREATE DATABASE dbPERPUSTAKAAN
GO
USE dbPERPUSTAKAAN
GO
CREATE TABLE Buku (
	kodebuku CHAR(6) PRIMARY KEY
	, judulbuku VARCHAR(30) NOT NULL
	, pengarang VARCHAR(30) NOT NULL
	, penerbit VARCHAR(30) NOT NULL
	, tahun CHAR(4) NOT NULL
	, isbn CHAR(6) NOT NULL
	, jumlah INT NOT NULL
	, lokasilemari CHAR(3) NOT NULL
)
GO
INSERT INTO Buku VALUES 
('BK0001', 'Matematika Diskrit ', 'Bacista J', 'Pustaka', 2010, 100736, 3, 'A01')
, ('BK0002', 'Algoritma Sederhana', 'Smith G', 'Elexmedia', 2013, 100900, 6, 'A01')
, ('BK0003', 'Fisika Modern', 'Takamoto', 'Sinar Baru', 2010, 108495, 5, 'B01')
, ('BK0004', 'Mekanika', 'Kuncoro B', 'Elexmedia', 2008, 108392, 8, 'B01')
, ('BK0005', 'Pemrograman C#', 'Ijikata S', 'Informatika', 2016, 112490, 5, 'C01')
GO
CREATE TABLE Mahasiswa (
	npm CHAR(10) PRIMARY KEY NOT NULL
	, namamahasiswa VARCHAR(30) NOT NULL
	, jeniskelamin CHAR(1) CHECK (jeniskelamin IN ('L', 'P')) NOT NULL
	, alamat VARCHAR (30) NOT NULL
	, notelp VARCHAR (15) NOT NULL
)
GO
INSERT INTO Mahasiswa VALUES 
('2226250001', 'Lilia', 'P', 'JL Bangau No 14', '0711345678')
, ('2226250002', 'Michael', 'L', 'Jl Nuri No 11', '0711237811')
, ('2226250003', 'Stephanie', 'P', 'Jl Semangat No 13', '0711346591')
, ('2226250004', 'Rudi', 'L', 'Jl Pipit No 11', '0711452981')
, ('2226250005', 'Cecilia', 'P', 'Jl Merdeka No 10', '0711394899')
GO
CREATE TABLE Peminjaman (
	kodepeminjaman CHAR(6) PRIMARY KEY NOT NULL
	, tanggalpinjam DATE NOT NULL
	, tanggalkembali DATE NOT NULL
	, npm CHAR(10) REFERENCES Mahasiswa(npm) NOT NULL
	, kodebuku CHAR(6) REFERENCES Buku(kodebuku) NOT NULL
	, jumlahpinjam INT NOT NULL
)
GO
INSERT INTO Peminjaman VALUES 
('PJ0001', '2023-02-11', '2023-02-14', '2226250001', 'BK0002', 2)
, ('PJ0002', '2023-02-12', '2023-02-15', '2226250003', 'BK0005', 1)
, ('PJ0003', '2023-02-12', '2023-02-15', '2226250004', 'BK0005', 1)
, ('PJ0004', '2023-02-13', '2023-02-16', '2226250001', 'BK0004', 3)
, ('PJ0005', '2023-02-13', '2023-02-16', '2226250002', 'BK0001', 1)
GO
CREATE TABLE Pengembalian (
	kodepengembalian CHAR(6) PRIMARY KEY
	, kodepeminjaman CHAR(6) REFERENCES Peminjaman(kodepeminjaman) NOT NULL
	, npm CHAR(10) REFERENCES Mahasiswa(npm) NOT NULL
	, kodebuku CHAR(6) REFERENCES Buku(kodebuku) NOT NULL
	, jumlahkembali INT NOT NULL
	, tanggalkembali DATE NOT NULL
	, denda INT  NOT NULL
)
GO
INSERT INTO Pengembalian VALUES 
('PG0001', 'PJ0001', '2226250001', 'BK0002', 2, '2023-02-15', 3000)
, ('PG0002', 'PJ0003', '2226250004', 'BK0005', 1, '2023-02-15', 0)
, ('PG0003', 'PJ0005', '2226250002', 'BK0001', 1, '2023-02-16', 0)
, ('PG0004', 'PJ0004', '2226250001', 'BK0004', 3, '2023-02-17', 3000)
, ('PG0005', 'PJ0002', '2226250003', 'BK0005', 1, '2023-02-17', 6000)
GO
SELECT * FROM Buku
go
SELECT * FROM Mahasiswa
go
SELECT * FROM Pengembalian
go
SELECT * FROM Peminjaman
go

SELECT * FROM Mahasiswa where namamahasiswa = 'Rudi' or namamahasiswa = 'Cecilia'

SELECT * FROM Mahasiswa where namamahasiswa = 'Rudi' 
or jeniskelamin = 'L'

SELECT * FROM Mahasiswa where not jeniskelamin = 'L'

Select * FROM Buku where not penerbit = 'Elexmedia'

SELECT * FROM Buku where jumlah > 5

SELECT * FROM Buku where jumlah < 5

SELECT * FROM Buku where jumlah >= 5

SELECT * FROM Buku WHERE jumlah <= 5

SELECT * FROM Peminjaman where tanggalpinjam != '2023-02-13'

--latihan 

SELECT * FROM Buku where judulbuku = 'Matematika Diskrit' and tahun = 2010
go
SELECT * FROM Buku where judulbuku = 'Fisika Modern' or judulbuku = 'Algoritma Sederhana'
go
SELECT * FROM Mahasiswa where namamahasiswa = 'Lilia' or namamahasiswa = 'Michael'
go
SELECT * FROM Peminjaman where tanggalpinjam >= '2023-02-12' and tanggalpinjam <= '2023-02-13'

--
SELECT npm, namamahasiswa, 
	CASE jeniskelamin 
	when 'L' Then 'Laki - Laki'
	when 'P' Then 'Perempuan'
	END AS jeniskelamin 
	FROM Mahasiswa


SELECT npm, namamahasiswa,
	CASE
	WHEN jeniskelamin = 'L' THEN 'Laki - Laki'
	WHEN jeniskelamin = 'P' THEN 'Perempuan'
	END AS jeniskelamin
	FROM Mahasiswa

SELECT npm, namamahasiswa,
	IIF(jeniskelamin = 'L', 'Laki - Laki', 'Perempuan')
	as jeniskelamin
	from Mahasiswa

	SELECT npm, namamahasiswa,
	jeniskelamin = IIF(jeniskelamin = 'L', 'Laki - Laki', 'Perempuan')
	from Mahasiswa

--latihan

select kodebuku, judulbuku, jumlah,
	CASE 
	WHEN jumlah < 5 THEN 'kurang'
	WHEN jumlah = 5 THEN 'cukup'
	WHEN jumlah > 5 THEN 'Banyak'
	end as keterangan
	from Buku

SELECT kodebuku, judulbuku, jumlah,
iif(jumlah < 5 , 'kurang', IIF (jumlah = 5, 'cukup', 'banyak'))
as keterangan
from Buku
create database dbPerpustakaan
go 
use dbPerpustakaan

CREATE TABLE Buku(
	kodebuku char(6) not null PRIMARY KEY,
	judulbuku varchar(30) not null,
	pengarang varchar(30) not null,
	penerbit varchar(30) not null,
	tahun char(4) not null,
	isbn char (6) not null,
	jumlah int not null,
	lokasilemari char(3) not null
)

create table Mahasiswa(
	npm char (10) not null PRIMARY KEY,
	namamahasiswa varchar(30) not null,
	jeniskelamin char(1) not null check (jeniskelamin in ('L','P')),
	alamat varchar(30) not null,
	notelp varchar(15) not null
)

create table Peminjaman(
	kodepeminjaman char(6) PRIMARY KEY not null,
	tanggalpinjam DATE not null,
	tanggalkembali DATE not null,
	npm char(10) not null FOREIGN KEY REFERENCES Mahasiswa(npm),
	kodebuku char(6) not null FOREIGN KEY REFERENCES Buku(kodebuku),
	jumlahpinjam int not null
)

create table Pengembalian(
	kodepengembalian char(6) not null PRIMARY KEY,
	kodepeminjaman char(6) not null FOREIGN KEY REFERENCES Peminjaman(kodepeminjaman),
	npm char(10) not null FOREIGN KEY REFERENCES Mahasiswa (npm),
	kodebuku char (6) not null FOREIGN KEY REFERENCES Buku(kodebuku),
	jumlahkembali int not null,
	tanggalkembali date not null,
	denda int not null
)

insert into Buku values ('BK0001', 'Matematika Diskrit', 'Bacista J', 'Pustaka', '2010', '100736', 3, 'A01'),
('BK0002', 'Algoritma Sederhana', 'Smith G', 'Elexmedia', '2013', '100900', 6, 'A01'),
('BK0003', 'Fisika Modern', 'Takamoto J', 'Sinar Baru', '2010', '108495', 5, 'B01'),
('BK0004', 'Mekanika', 'Kuncoro B', 'Elexmedia', '2008', '108392', 8, 'B01'),
('BK0005', 'Pemrograman C#', 'Ijikata S', 'Informatika', '2016', '112490', 5, 'C01')

insert into Mahasiswa values ('2226250001', 'Lilia','P', 'Jl Bangau No 14', '0711345678'),
('2226250002', 'Michael','L', 'Jl Nuri No 11', '0711237811'),
('2226250003', 'Stephanie','P', 'Jl Semangat', '0711346591'),
('2226250004', 'Rudi','L', 'Jl Pipit No 11', '0711452981'),
('2226250005', 'Cecilia','P', 'Jl Merdeka No 10', '0711394899')

insert into Peminjaman values ('PJ0001', '2023-02-11', '2023-02-14', '2226250001', 'BK0001', 2),
('PJ0002', '2023-02-12', '2023-02-15', '2226250003', 'BK0005', 1),
('PJ0003', '2023-02-12', '2023-02-15', '2226250004', 'BK0005', 1),
('PJ0004', '2023-02-13', '2023-02-16', '2226250001', 'BK0004', 3),
('PJ0005', '2023-02-13', '2023-02-16', '2226250002', 'BK0001', 1)

insert into Pengembalian values ('PG0001', 'PJ0001', '2226250001', 'BK0002', 2, '2023-02-15', 3000),
('PG0002', 'PJ0003', '2226250004', 'BK0005', 1, '2023-02-15', 0),
('PG0003', 'PJ0005', '2226250002', 'BK0001', 1, '2023-02-16', 0),
('PG0004', 'PJ0004', '2226250001', 'BK0004', 3, '2023-02-17', 3000),
('PG0005', 'PJ0002', '2226250003', 'BK0005', 1, '2023-02-17', 6000)

select * from Buku
go
select * from Mahasiswa
go
select * from Peminjaman
go
select * from Pengembalian
go

backup database dbPerpustakaan
to disk = 'D:\backup SQL SERVER\latihan_4maret2023.bak'


use master
go
drop database dbPerpustakaan


restore database dbPerpustakaan
from disk = 'D:\backup SQL SERVER\latihan_4maret2023.bak'


SP_HELPDB
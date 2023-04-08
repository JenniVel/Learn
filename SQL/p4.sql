CREATE DATABASE dbMDPMART

use dbMDPMART

CREATE TABLE Pembeli (
	id_pembeli int IDENTITY(1, 1),
	nama_pembeli varchar(40),
	no_hp varchar (15),
	PRIMARY KEY (id_pembeli)
)

INSERT INTO Pembeli (nama_pembeli, no_hp) VALUES ('Ucok', '911')

SELECT * FROM Pembeli

INSERT INTO Pembeli (nama_pembeli, no_hp) VALUES ('Couk', '123')

DELETE FROM Pembeli where id_pembeli = 2
INSERT INTO Pembeli (nama_pembeli, no_hp) VALUES ('DIKA', '888')

CREATE TABLE Barang (
	id_barang char(4),
	nama_barang varchar(20) not null,
	harga int DEFAULT 0,
	jumlah int DEFAULT 0,
	PRIMARY KEY (id_barang)
)

INSERT INTO Barang Values ('B001', 'TV', '5000000', '50')
INSERT INTO Barang Values ('B002', 'KULKAS', '15000000', '100')

SELECT * FROM Barang

CREATE TABLE Pembelian(
	id_pembelian INT IDENTITY (1,1)PRIMARY KEY,
	tanggal_pembelian date not null,
	total_bayar int not null,
	id_pembeli int not null FOREIGN KEY REFERENCES Pembeli(id_pembeli),
)

CREATE TABLE Detail_Pembelian(
	id_pembelian INT not null FOREIGN KEY REFERENCES Pembelian(id_pembelian),
	id_barang char(4) not null FOREIGN KEY REFERENCES Barang(id_barang),
	jumlah_beli int not null,
)

SELECT * FROM Pembeli;
SELECT * FROM Detail_Pembelian;
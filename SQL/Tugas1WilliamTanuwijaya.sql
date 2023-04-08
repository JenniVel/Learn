CREATE DATABASE dbTugas1WilliamTanuwijaya;
USE dbTugas1WilliamTanuwijaya;
go
SP_HELPDB dbTugas1WilliamTanuwijaya;

CREATE TABLE Pasien (
idpasien CHAR(5) PRIMARY KEY,
namapasien VARCHAR(50),
umur INT,
alamat VARCHAR(50),
notelp VARCHAR(20)
);
go
SP_HELP Pasien;

INSERT INTO Pasien (idpasien, namapasien, umur, alamat, notelp)
VALUES ('PA001', 'William Tanuwijaya', 18, 'Lorong Segaran no 721', '089695247023'),
('PA002', 'Epan', 25, 'Taman Kenten', '082386085363'),
('PA003', 'Nando', 30, 'Jalan rupit', '081271873450'),
('PA004', 'Andhika', 35, 'Kalidoni', '08123456792'),
('PA005', 'Zaky', 40, 'Sako', '082371894570'),
('PA006', 'Ani', 45, 'Jalan pipit', '081273064943'),
('PA007', 'Velen', 50, 'Jalan kembangan', '083180763742'),
('PA008', 'Yanti', 55, 'Jalan merdeka', '081373102671'),
('PA009','Christy', 60, 'Jalan Jendral Sudirman', '081278852863'),
('PA010','Devi', 65, 'Jalan Lingkaran', '089514846688');
go
SELECT * FROM Pasien;

ALTER TABLE Pasien ADD jenisKelamin CHAR(1);
go
SELECT * FROM Pasien;

ALTER TABLE Pasien ADD CONSTRAINT jenisKelaminCheck CHECK (jenisKelamin IN ('L', 'P'));
go
SP_HELP Pasien;

UPDATE Pasien SET jenisKelamin = 'L' WHERE jenisKelamin IS NULL;
UPDATE Pasien SET jenisKelamin = 'P' WHERE idpasien = 'PA006';
UPDATE Pasien SET jenisKelamin = 'P' WHERE idpasien = 'PA007';
UPDATE Pasien SET jenisKelamin = 'P' WHERE idpasien = 'PA008';
UPDATE Pasien SET jenisKelamin = 'P' WHERE idpasien = 'PA009';
UPDATE Pasien SET jenisKelamin = 'P' WHERE idpasien = 'PA010';
SELECT * FROM Pasien;

DELETE FROM Pasien WHERE namapasien = 'William Tanuwijaya';
SELECT * FROM Pasien;

ALTER TABLE Pasien DROP COLUMN notelp;
go
SELECT * FROM Pasien;

sp_renamedb 'dbTugas1WilliamTanuwijaya', 'dbRumahSakitMDP'

SP_HELPDB dbRumahSakitMDP

sp_rename 'Pasien', 'PasienMDP';
SP_HELP PasienMDP;

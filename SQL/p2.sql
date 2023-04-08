CREATE DATABASE dbKampusMDP
GO
USE dbKampusMDP
GO
CREATE TABLE Dosen(
kodedosen char(7) PRIMARY KEY,
namadosen VARCHAR (50),
programstudi CHAR (2)
)
GO
CREATE TABLE Matakuliah(
kodemk char(7) PRIMARY KEY,
namamk VARCHAR(30),
sks INT
)
GO
SELECT * FROM Dosen
SELECT * FROM Matakuliah

DROP TABLE Dosen
DROP TABLE Matakuliah

USE Master
GO
DROP DATABASE dbKampusMDP

INSERT INTO Dosen VALUES
('111070','Tinaliah, M.Kom','IF')
INSERT INTO Dosen VALUES
('071046','Yoannita, M.Kom','IF'),
('111069','Derry A, M.Kom','IF')
INSERT INTO Dosen VALUES
('131089','Ahmad Farisi, M.Kom','SI')
INSERT INTO Dosen VALUES
('111061','Eka Puji W, M.Kom','TE')
INSERT INTO Dosen VALUES
('091053','Siti Khairani, M.Si.','AK')
INSERT INTO Dosen VALUES
('051038','Rizani Teguh, M.T','SI')
INSERT INTO Dosen VALUES
('131094','Megawati, M.Si','MJ')
INSERT INTO Dosen VALUES
('021014','M.Rachmadi, M.T.I','SI')
INSERT INTO Dosen VALUES
('121074','Idham Cholid, M.E.','MJ')

INSERT INTO Matakuliah VALUES
('IF0010','Basis Data II',3)
INSERT INTO Matakuliah VALUES
('IF0009','Algoritma dan Struktur Data I',3)
INSERT INTO Matakuliah VALUES
('IF0007','Kalkulus II',4)
INSERT INTO Matakuliah VALUES
('IF0008','Matematika Diskrit',4)
INSERT INTO Matakuliah VALUES
('IF0012','Pemrograman Web I',3)
INSERT INTO Matakuliah VALUES
('IF0011','Pemrograman Berorientasi Objek',3)
INSERT INTO Matakuliah VALUES
('MI0001','Bahasa Inggris 1',2)
INSERT INTO Matakuliah VALUES
('MI0002','Dasar Pemrograman',3)
INSERT INTO Matakuliah VALUES
('MI0003','Pengantar sistem operasi',1)
INSERT INTO Matakuliah VALUES
('MI0004','Pengantar Jaringan',4)

SP_HELP Dosen
SP_HELP Matakuliah
SP_HELPDB dbKampusMDP

ALTER TABLE Dosen ADD jk char(1)

-- latihan:

alter table Dosen add notelp varchar(12)
select * from Dosen

alter table Dosen alter COLUMN namadosen char(50)

--latihan
alter table Dosen alter column programstudi varchar(30)

alter table Dosen alter column notelp int

alter table Dosen alter column namadosen varchar(10)
select * from Dosen
drop table Dosen
alter table Dosen drop column jk

SP_RENAME 'Dosen.programstudi', 'prodi', 'column'

SP_RENAME 'Dosen', 'DosenMDP'

SELECT * FROM DosenMDP

SP_RENAMEDB 'dbKampusMDP', 'dbKampus'

INSERT INTO Matakuliah (kodemk, namamk) values('IF0004', 'PIK');

select * from Matakuliah

update Matakuliah set sks = 1 where kodemk = 'IF0004'

create table mahasiswa(
	npm varchar(10) not null,
	nama varchar(30) null,
	jk char(1)  null,
	PRIMARY KEY (npm)
)

select * from mahasiswa

drop table mahasiswa

INSERT INTO mahasiswa values ('2226250012', 'ucok', 'L')
INSERT INTO mahasiswa values ('2226250011', 'udin', 'L')
INSERT INTO mahasiswa values ('2226250005', 'nando', 'L')
INSERT INTO mahasiswa values ('2226250006', 'epan', 'L')
INSERT INTO mahasiswa values ('2226250008', 'jojo', 'L')

update mahasiswa set nama = nama + ' S.Kom' where npm = '2226250012';

update mahasiswa set nama = nama + ' S.Kom';

INSERT INTO mahasiswa VALUES ('2226250122', 'M Zaky Naufal', 'L'), ('2226250118', 'Callista Virginia', 'P');

SELECT * FROM mahasiswa;

UPDATE mahasiswa set nama= 'Jennifer Jocelyn', jk =  'P' where npm = '2226250122';
UPDATE mahasiswa set nama = 'Dr .' + nama where jk = 'P';

SELECT * FROM mahasiswa;

DELETE FROM Mahasiswa where npm = '2226250012';

DELETE FROM mahasiswa

SELECT * FROM mahasiswa

DELETE FROM mahasiswa where jk = 'L';
DELETE FROM mahasiswa where npm = '2226250118';

UPDATE mahasiswa SET nama = nama
SELECT LEFT(nama, 5) FROM mahasiswa
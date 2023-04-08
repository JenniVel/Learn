use dbPERPUSTAKAAN;

SELECT * FROM Peminjaman

Select Buku.KodeBuku, judulbuku from Buku LEFT JOIN Peminjaman ON Buku.kodebuku = Peminjaman.kodebuku

SELECT Buku.kodeBuku, judulbuku from Peminjaman RIGHT JOIN Buku on Buku.kodebuku = Peminjaman.kodebuku

SELECT Buku.kodeBuku, judulbuku from Peminjaman FULL JOIN Buku on Buku.kodebuku = Peminjaman.kodebuku

SELECT Kodebuku FROM Buku UNION SELECT Kodebuku FROM Peminjaman

SELECT Kodebuku FROM Buku UNION ALL SELECT Kodebuku FROM Peminjaman

SELECT Kodebuku FROM Buku UnIoN SeLeCt Kodebuku fRoM Peminjaman oRdEr bY kodebuku AsC

SELECT * from Pengembalian
SELECT * FROM Peminjaman

CREATE VIEW vwTerlambat AS 
SELECT pe.kodepengembalian, p.kodepeminjaman, m.npm, m.namamahasiswa, b.kodebuku, b.judulbuku, p.jumlahpinjam, p.tanggalkembali 
FROM Peminjaman p
INNER JOIN Pengembalian pe ON pe.kodepeminjaman = pe.kodepeminjaman
INNER JOIN Buku b ON pe.kodebuku = b.kodebuku
INNER JOIN Mahasiswa m ON p.npm = m.npm;

SELECT * FROM vwTerlambat

CREATE VIEW vwTerlambat AS 
SELECT DISTINCT pe.kodepengembalian, p.kodepeminjaman, m.npm, m.namamahasiswa, b.kodebuku, b.judulbuku,
p.jumlahpinjam, p.tanggalkembali 
FROM Peminjaman p
INNER JOIN Pengembalian pe ON p.kodepeminjaman = pe.kodepeminjaman
INNER JOIN Buku b ON pe.kodebuku = b.kodebuku
INNER JOIN Mahasiswa m ON p.npm = m.npm;
SELECT * FROM vwTerlambat

CREATE VIEW vwBukuDipinjam AS
SELECT DISTINCT Buku.* FROM Buku INNER JOIN Peminjaman on Buku.kodebuku = Peminjaman.kodebuku
SELECT * FROM vwBukuDipinjam ORDER BY kodebuku asc
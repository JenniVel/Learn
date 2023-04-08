use dbPERPUSTAKAAN

SELECT kodepeminjaman, tanggalpinjam, Buku.kodebuku, judulbuku, jumlahpinjam from Peminjaman 
inner join Buku on Peminjaman.kodebuku = Buku.kodebuku;

SELECT kodepeminjaman, tanggalpinjam, Buku.kodebuku, judulbuku, jumlahpinjam from Peminjaman 
,Buku where Peminjaman.kodebuku = Buku.kodebuku;

SELECT kodepeminjaman, tanggalpinjam, Buku.kodebuku, judulbuku, jumlahpinjam, Mahasiswa.npm, namamahasiswa from Peminjaman 
inner join Buku on Peminjaman.kodebuku = Buku.kodebuku
inner join Mahasiswa on Peminjaman.npm = Mahasiswa.npm

SELECT kodepeminjaman, tanggalpinjam, B.kodebuku, judulbuku, jumlahpinjam, M.npm, namamahasiswa from Peminjaman P
inner join Buku B on P.kodebuku = B.kodebuku
inner join Mahasiswa M on P.npm = M.npm

SELECT Mahasiswa.npm, namamahasiswa, Peminjaman.kodebuku from Mahasiswa
inner join Peminjaman on Mahasiswa.npm = Peminjaman.npm where kodebuku = 'BK0002'

SELECT Buku.kodebuku, Buku.judulbuku, jumlahpinjam, Peminjaman.npm, Mahasiswa.namamahasiswa 
FROM Peminjaman
INNER JOIN Buku ON Buku.kodebuku = Peminjaman.kodebuku 
INNER JOIN Mahasiswa ON Mahasiswa.npm = Peminjaman.npm 
WHERE Mahasiswa.npm = '2226250001'

SELECT Mahasiswa.npm, namamahasiswa, tanggalkembali from Mahasiswa
inner join Pengembalian on Pengembalian.npm = Mahasiswa.npm
where Pengembalian.tanggalkembali > '02-16-2023'

SELECT kodepeminjaman, tanggalpinjam, Mahasiswa.npm, namamahasiswa, Buku.kodebuku, 
Buku.judulbuku, jumlahpinjam from Peminjaman
inner join Mahasiswa on Mahasiswa.npm = Peminjaman.npm
inner join Buku on Buku.kodebuku = Peminjaman.kodebuku 

SELECT kodepengembalian, Mahasiswa.npm, namamahasiswa, Buku.kodebuku, 
Buku.judulbuku, tanggalpinjam, Pengembalian.tanggalkembali, jumlahpinjam
from Pengembalian
inner join Mahasiswa on Pengembalian.npm = Mahasiswa.npm
inner join Buku on Buku.kodebuku = Pengembalian.kodebuku
inner join Peminjaman on Peminjaman.kodepeminjaman = Pengembalian.kodepeminjaman


use dbPerpustakaan

select * from Buku

select kodebuku, judulbuku, jumlah from Buku

go

select judulbuku, lokasilemari from Buku

go

select judulbuku, pengarang, penerbit from Buku

select * from Mahasiswa

select * from Mahasiswa where namamahasiswa = 'Rudi'
go
select npm, namamahasiswa, alamat from Mahasiswa where npm = '2226250001'
go
select * from Mahasiswa where jeniskelamin != 'P'


select (jumlah+5) as jumlah from Buku

SELECT (namamahasiswa + ' ,S.Kom') as 'nama mhs' from Mahasiswa

SELECT * FROM Buku

select kodebuku, judulbuku, pengarang, penerbit, tahun, isbn, (jumlah+5) as jumlah, lokasilemari from buku


UPDATE Buku SET jumlah += 5
select * from Buku

select kodebuku, judulbuku, pengarang, penerbit, tahun, isbn, (jumlah-10) as jumlah, lokasilemari as jumlah from Buku
go
UPDATE Buku SET jumlah -= 8
select * from Buku

update Buku set jumlah += 15
select * from Buku

update Buku set jumlah *=1.5
select * from Buku

update Buku set jumlah /= 2
select * from Buku

--latihan

SELECT kodebuku, judulbuku, jumlah as 'jumlah buku lama', (jumlah +1)as 'jumlah buku baru' from Buku
go
select kodepeminjaman, kodebuku, jumlahpinjam, (1) as jumlahkembali,(jumlahpinjam - 1) as 'jumlah pinjam baru' from Peminjaman
go
SELECT kodebuku, judulbuku, pengarang, penerbit, (jumlah * 1.2) from Buku
go
select kodebuku, (denda/3000) as lamabukutelat from Pengembalian

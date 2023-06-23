create database rental_kamera;
use rental_kamera;
CREATE TABLE kamera(
  kode_kamera INT(11) NOT NULL,
  merek_kamera VARCHAR(45) NOT NULL,
  jenis_akmera VARCHAR(45) NOT NULL,
  warna_kamera VARCHAR(45) NOT NULL,
  stok int,
  PRIMARY KEY (kode_kamera)
);
CREATE TABLE pegawai (
  id_pegawai INT(11) NOT NULL,
  nama_pegawai VARCHAR(20) NOT NULL,
  no_pegawai VARCHAR(12) NOT NULL,
  alamat_pegawai VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_pegawai)
);
CREATE TABLE pelanggan (
  id_pelanggan INT(11) NOT NULL,
  nama_pelanggan VARCHAR(20) NOT NULL,
  no_pelanggan VARCHAR(12) NOT NULL,
  alamat_pelanggan VARCHAR(45) NOT NULL,
  PRIMARY KEY (id_pelanggan)
);
CREATE TABLE transaksi (
  kode_transaksi INT(11) NOT NULL,
  tanggal_pinjam DATE NOT NULL,
  tanggal_pengembalian DATE NOT NULL,
  lama_sewa VARCHAR(20) NOT NULL,
  total_harga VARCHAR(45) NOT NULL,
  pelanggan_id_pelanggan INT(11) NOT NULL,
  pegawai_id_pegawai INT(11) NOT NULL,
  kamera_kode_kamera INT(11) NOT NULL,
  PRIMARY KEY (kode_transaksi),
  FOREIGN KEY (pelanggan_id_pelanggan) REFERENCES pelanggan (id_pelanggan),
  FOREIGN KEY (pegawai_id_pegawai) REFERENCES pegawai (id_pegawai),
  FOREIGN KEY (kamera_kode_kamera) REFERENCES kamera (kode_kamera)
);

#KUMPULAN INSERT 
INSERT INTO pegawai(id_pegawai,nama_pegawai,no_pegawai,alamat_pegawai) VALUES 
(1,'Abi','080101010101','Surabaya'),
(2,'Aji','080202020202','Jember'),
(3,'Asep','080303030303','Tangerang'),
(4,'Dzakira','080404040404','Malang'),
(5,'Ehud','080505050505','Riau'),
(6,'Buna','080606060606','Merauke'),
(7,'Yukinohana','080707070707','Hanawa'),
(8,'Sambo','080808080808','Medan'),
(9,'Puan','080909090909','Solo'),
(10,'Aidid','081010101010','Bandung');
INSERT INTO kamera(kode_kamera,merek_kamera,jenis_kamera,warna_kamera) VALUES 
(1159,'Kodak','DSLR','Hitam',10),
(1259,'Kodak','Mirrorless','Putih',10),
(1359,'Kodak','Film','Hitam',10),
(1459,'Kodak','Vlog','Putih',10),
(1559,'Kodak','Full Frame','Hitam',10),
(2169,'Fujifilm','DSLR','Putih',10),
(2269,'Fujifilm','Mirrorless','Hitam',10),
(2369,'Fujifilm','Film','Putih',10),
(2469,'Fujifilm','Vlog','Hitam',10),
(2569,'Fujifilm','Full Frame','Putih',10),
(3119,'Panasonic','DSLR','Hitam',10),
(3219,'Panasonic','Mirrorless','Putih',10),
(3319,'Panasonic','Film','Hitam',10),
(3419,'Panasonic','Vlog','Putih',10),
(3519,'Panasonic','Full Frame','Hitam',10),
(4139,'Canon','DSLR','Putih',10),
(4239,'Canon','Mirrorless','Hitam',10),
(4339,'Canon','Film','Putih',10),
(4439,'Canon','Vlog','Hitam',10),
(4539,'Canon','Full Frame','Putih',10),
(5129,'Olympus','DSLR','Hitam',10),
(5229,'Olympus','Mirrorless','Putih',10),
(5329,'Olympus','Film','Hitam',10),
(5429,'Olympus','Vlog','Putih',10),
(5529,'Olympus','Full Frame','Hitam',10),
(6179,'Nikon','DSLR','Putih',10),
(6279,'Nikon','Mirrorless','Hitam',10),
(6379,'Nikon','Film','Putih',10),
(6479,'Nikon','Vlog','Hitam',10),
(6579,'Nikon','Full Frame','Putih',10),
(7199,'Sony','DSLR','Hitam',10),
(7299,'Sony','Mirrorless','Putih',10),
(7399,'Sony','Film','Hitam',10),
(7499,'Sony','Vlog','Putih',10),
(7599,'Sony','Full Frame','Hitam',10),
(8149,'Leica','DSLR','Putih',10),
(8249,'Leica','Mirrorless','Hitam',10),
(8349,'Leica','Film','Putih',10),
(8449,'Leica','Vlog','Hitam',10),
(8549,'Leica','Full Frame','Putih',10),
(9189,'Pentax','DSLR','Hitam',10),
(9289,'Pentax','Mirrorless','Putih',10),
(9389,'Pentax','Film','Hitam',10),
(9489,'Pentax','Vlog','Putih',10),
(9589,'Pentax','Full Frame','Hitam',10);
INSERT INTO pelanggan(id_pelanggan,nama_pelanggan,no_pelanggan,alamat_pelanggan) VALUES 
(1,'Budi','081010101010','Surabaya'),
(2,'Ani','081111111111','Surabaya'),
(3,'Ina','081212121212','Surabaya'),
(4,'Rohman','081313131313','Kediri'),
(5,'Yusuf','081414141414','Mojosari'),
(6,'Aftop','081515151515','Nias'),
(7,'Arwi','081616161616','Sidoarjo'),
(8,'Aslan','081717171717','Palembang'),
(9,'Ferdi','081818181818','Surabaya'),
(10,'Fitra','081919191919','Gorontalo'),
(11,'Gio','082020202020','Jakarta'),
(12,'Irvan','082121212121','Surakarta'),
(13,'Kasa','082222222222','Pamekasan'),
(14,'Kuro','082323232323','Tegal'),
(15,'Mahesa','082424242424','Bangkalan'),
(16,'Devan','082525252525','Kediri'),
(17,'Bayu','082626262626','Sidoarjo'),
(18,'Ikhwan','082727272727','Sumenep'),
(19,'Muhil','082828282828','Bekasi'),
(20,'Ody','082929292929','Bekasi'),
(21,'Ola','083030303030','Riau'),
(22,'Qulub','083131313131','Gresik'),
(23,'Renald','083232323232','Yogyakarta'),
(24,'Rezky','083333333333','Bandung'),
(25,'Roy','083434343434','Bangkalan'),
(26,'Rui','083535353535','Purbalingga'),
(27,'Thomi','083636363636','Gresik'),
(28,'Tian','083737373737','Pontianak'),
(29,'Yulsa','083838383838','Sumedang'),
(30,'Kiki','083939393939','Gresik');
INSERT INTO transaksi
(kode_transaksi,tanggal_pinjam,tanggal_pengembalian,lama_sewa,total_harga,pelanggan_id_pelanggan,pegawai_id_pegawai,kamera_kode_kamera) VALUES 
(220723001,'2022-07-23','2022-07-30','7 hari','1400000',22,1,4439),
(220723002,'2022-07-23','2022-07-25','2 hari','400000',8,1,2469),
(220724001,'2022-07-24','2022-08-02','9 hari','1800000',7,2,2369),
(220724002,'2022-07-24','2022-07-29','5 hari','1000000',4,2,3119),
(220725001,'2022-07-25','2022-07-28','3 hari','600000',3,3,3319),
(220725002,'2022-07-25','2022-07-31','6 hari','1200000',17,3,1359),
(220726001,'2022-07-26','2022-07-30','4 hari','800000',16,4,1259),
(220726002,'2022-07-26','2022-08-03','8 hari','1600000',1,4,8549),
(220727001,'2022-07-27','2022-07-28','1 hari','200000',30,5,8249),
(220727002,'2022-07-27','2022-08-07','11 hari','2200000',19,5,9189),
(220728001,'2022-07-28','2022-08-09','12 hari','2400000',18,6,9589),
(220728002,'2022-07-28','2022-08-15','18 hari','3600000',11,6,4539),
(220729001,'2022-07-29','2022-08-18','20 hari','4000000',5,7,4339),
(220729002,'2022-07-29','2022-08-14','16 hari','3200000',23,7,1159),
(220730001,'2022-07-30','2022-08-02','3 hari','600000',10,8,1459),
(220730002,'2022-07-30','2022-08-13','14 hari','2800000',9,8,5129),
(220731001,'2022-07-31','2022-08-10','10 hari','2000000',6,9,5329),
(220731002,'2022-07-31','2022-08-19','19 hari','3800000',2,9,4139),
(220801001,'2022-08-01','2022-08-14','13 hari','2600000',12,10,6379),
(220801002,'2022-08-01','2022-08-18','17 hari','3400000',24,10,7599),
(220802001,'2022-08-02','2022-08-17','15 hari','3000000',21,1,6479),
(220802002,'2022-08-02','2022-08-03','1 hari','200000',20,2,7299),
(220803001,'2022-08-03','2022-08-05','2 hari','400000',27,3,6179),
(220803002,'2022-08-03','2022-08-06','3 hari','600000',14,4,1559),
(220804001,'2022-08-04','2022-08-08','4 hari','800000',26,5,3419),
(220804002,'2022-08-04','2022-08-09','5 hari','1000000',15,6,9289),
(220805001,'2022-08-05','2022-08-11','6 hari','1200000',25,7,2269),
(220805002,'2022-08-05','2022-08-12','7 hari','1400000',28,8,5529),
(220806001,'2022-08-06','2022-08-14','8 hari','1600000',29,9,3519),
(220806002,'2022-08-06','2022-08-15','9 hari','1800000',13,10,8149);

#KUMPULAN VIEW
create or replace view pelanggan_asal_surabaya 
	as select id_pelanggan, nama_pelanggan, no_pelanggan, alamat_pelanggan
	from pelanggan
	where alamat_pelanggan='Surabaya';
select * from pelanggan_asal_surabaya;
create or replace view nama_pelanggan_berawalan_a 
	as select id_pelanggan, nama_pelanggan, no_pelanggan, alamat_pelanggan
	from pelanggan
	where nama_pelanggan like 'a%';
select * from nama_pelanggan_berawalan_a;
create or replace view kamera_warna_hitam
	as select kode_kamera, merek_kamera, jenis_kamera, warna_kamera
	from kamera
	where warna_kamera='Hitam';
select * from kamera_warna_hitam;
create or replace view kode_kamera_angka_6
	as select kode_kamera, merek_kamera, jenis_kamera, warna_kamera
	from kamera
	where kode_kamera like '%6%';
select * from kode_kamera_angka_6;
create or replace view no_pegawai_berawalan_080 
	as select id_pegawai, nama_pegawai, no_pegawai, alamat_pegawai
	from pegawai
	where no_pegawai like '080%';
select * from no_pegawai_berawalan_080;
create or replace view pegawai_berID_4 
	as select id_pegawai, nama_pegawai, no_pegawai, alamat_pegawai
	from pegawai
	where id_pegawai='4';
select * from pegawai_berID_4;
create or replace view lama_sewa_transaksi_3hari
	as select kode_transaksi, tanggal_pinjam, lama_sewa
	from transaksi
	where lama_sewa='3 hari';
select * from lama_sewa_transaksi_3hari;
create or replace view transaksi_pinjam_bulan_agustus
	as select kode_transaksi, tanggal_pinjam, pelanggan_id_pelanggan, kamera_kode_kamera
	from transaksi
	where tanggal_pinjam like '%08%';
select * from transaksi_pinjam_bulan_agustus;
create or replace view transaksi_pelanggan
	as select kode_transaksi, nama_pelanggan, kamera_kode_kamera, tanggal_pinjam, lama_sewa, total_harga
	from transaksi
	inner join pelanggan
	on id_pelanggan=pelanggan_id_pelanggan;
select * from transaksi_pelanggan;
create or replace view transaksi_kamera
	as select kode_transaksi, merek_kamera, jenis_kamera, pelanggan_id_pelanggan, tanggal_pinjam, lama_sewa
	from transaksi
	inner join kamera
	on kode_kamera=kamera_kode_kamera;
select * from transaksi_kamera;

#KUMPULAN PROCEDURE
DELIMITER //
create procedure transaksi_pelanggan_surabaya(in alamat_surabaya varchar(20))
begin
     select kode_transaksi, nama_pelanggan, alamat_pelanggan, kamera_kode_kamera, lama_sewa, total_harga
     from transaksi inner join pelanggan 
     on pelanggan_id_pelanggan=id_pelanggan 
     where alamat_pelanggan=alamat_surabaya;
end //
DELIMITER ;
call transaksi_pelanggan_surabaya('Surabaya');
DELIMITER //
create procedure harga_diskon(out beneran int)
begin
     select kode_transaksi, lama_sewa, total_harga as harga_awal, 
     if(total_harga>1000000,'dapat diskon','belum beruntung') as keterangan,
     if(total_harga>1000000,200000,0) as diskon,
     if(total_harga>1000000,total_harga-200000,total_harga) as setelah_diskon
     from transaksi where tanggal_pinjam like '2022-07%';
end //
DELIMITER ;
call harga_diskon(@beneran);
DELIMITER //
create procedure input(in cek char(8))
begin
     if cek='masuk' then
     begin
		insert into pegawai values (11,'Deni','081111111111','Bengkulu');
        select * from pegawai;
     end;
     elseif cek='hapus' then
     begin
		delete from pegawai
        where id_pegawai='11';
     end;
     else
        delete from pegawai where id_pegawai=5;
	end if;
end //
DELIMITER ;
call input('hapus');
drop procedure input;
DELIMITER //
create procedure ulang(in cek char(8))
begin
     declare a int;
     declare nama varchar(20);
     
     set a = 10;
     set nama = 'Dino';
     
     loop_id: loop
		set a = a + 1;
        if a > 15 then
			leave loop_id;
		end if;
        if cek='masuk' then
        begin
			insert into pegawai
            values (a,nama,'081212121212','Merauke');
		end;
        elseif cek='hapus' then
        begin
			delete from pegawai
            where id_pegawai between '11' and '15';
        end;
        else
			select * from pegawai;
		end if;
	end loop;
end //
DELIMITER ;
call ulang('cek');

#KUMPULAN TRIGGER BEFORE
delimiter -
create trigger insert_user before insert on pelanggan for each row
begin
	set new.nama_pelanggan = trim(new.nama_pelanggan);
end -
delimiter ;
delimiter -
create trigger tambah_stok before delete on transaksi for each row
begin
	update kamera set stok = stok + new.count(kode_transaksi)
    where kamera_kode_kamera = kode_kamera;
end -
delimiter ;
delimiter -
create trigger pegawai_baru before update on pegawai for each row
begin
	update pegawai set alamat_pegawai = 'Surabaya' where id_pegawai = 5; 
end -
delimiter ;

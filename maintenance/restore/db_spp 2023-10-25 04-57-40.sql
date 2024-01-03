<br />
<b>Warning</b>:  date_default_timezone_get() expects exactly 0 parameters, 1 given in <b>C:\xampp\htdocs\spp\aksi\backup.php</b> on line <b>2</b><br />

-- Database Backup --
-- Ver. : 1.0.1
-- Host : Server Host
-- Generating Time : Oct 25, 2023 at 04:57:40:AM


CREATE TABLE `bayar` (
  `id_bayar` int(10) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(10) NOT NULL,
  `id_bayar_metode` int(10) NOT NULL,
  `keterangan` text NOT NULL,
  `bukti_bayar` varchar(200) NOT NULL,
  `status_verifikasi` varchar(50) NOT NULL,
  `nominal_bayar` int(17) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_bayar`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

INSERT INTO bayar VALUES
("1","12","1","Bayar VIA Gopay","2023_10_12_05_32_45_snk.jpg","Sudah Verifikasi","446000","2023-10-12","2023-10-12 10:32:45","2023-10-12 10:32:45",""),
("2","12","1","Bayar VIA Gopay","2023_10_12_05_36_47_snk.jpg","Sudah Verifikasi","2000000","2023-10-12","2023-10-12 10:36:47","2023-10-12 10:36:47",""),
("3","12","1","Bayar VIA Gopay","2023_10_17_04_47_08_ds.jpg","Sudah Verifikasi","500000","2023-10-17","2023-10-17 09:47:08","2023-10-17 09:47:08",""),
("4","12","1","Bayar VIA Gopay","2023_10_17_04_47_09_ds.jpg","Sudah Verifikasi","500000","2023-10-17","2023-10-17 09:47:09","2023-10-17 09:47:09","2023-10-17 09:47:16"),
("5","5","1","Bayar VIA Gopay","2023_10_19_05_31_29_h.jpg","Sudah Verifikasi","5000000","2023-10-16","2023-10-19 10:31:29","2023-10-19 10:31:29",""),
("6","3","1","Bayar VIA QRIS","2023_10_19_05_34_07_p.jpg","Sudah Verifikasi","150000","2023-10-09","2023-10-19 10:34:07","2023-10-19 10:34:07",""),
("7","3","1","Bayar VIA BCA","2023_10_19_05_35_20_kny.jpg","Sudah Verifikasi","446000","2023-10-16","2023-10-19 10:35:20","2023-10-19 10:35:20",""),
("8","4","1","Bayar VIA GOPAY","2023_10_19_05_38_43_p.jpg","Sudah Verifikasi","2000000","2023-10-19","2023-10-19 10:38:43","2023-10-19 10:38:43",""),
("9","11","1","Bayar VIA Gopay","2023_10_19_05_41_03_ooo.jpg","Sudah Verifikasi","1500000","2023-10-19","2023-10-19 10:41:03","2023-10-19 10:41:03",""),
("10","24","1","Bayar VIA Gopay","2023_10_19_05_48_43_itadoriyuuji.jpg","Sudah Verifikasi","2000000","2023-10-18","2023-10-19 10:48:43","2023-10-19 10:48:43",""),
("11","4","1","Bayar VIA BCA","2023_10_19_05_49_20_ooo.jpg","Sudah Verifikasi","2000000","2023-11-03","2023-10-19 10:49:20","2023-10-19 10:49:20",""),
("12","12","1","Bayar VIA BRI","2023_10_19_06_45_15_itadoriyuuji.jpg","Sudah Verifikasi","2000000","2023-09-19","2023-10-19 11:45:15","2023-10-19 11:45:15",""),
("13","39","1","Bayar VIA BCA","2023_10_19_07_00_08_jk.jpg","Sudah Verifikasi","446000","2023-09-18","2023-10-19 12:00:08","2023-10-19 12:00:08",""),
("14","39","1","Bayar VIA Gopay","2023_10_19_07_00_42_itadoriyuuji.jpg","Sudah Verifikasi","1000000","2023-09-25","2023-10-19 12:00:42","2023-10-19 12:00:42",""),
("15","14","1","Bayar  VIA Tunai","2023_10_19_07_02_11_o.jpg","Sudah Verifikasi","500000","2023-09-19","2023-10-19 12:02:11","2023-10-19 12:02:11",""),
("16","39","1","Bayar VIA Gopay","2023_10_19_07_03_10_jjk.jpg","Sudah Verifikasi","1000000","2023-09-19","2023-10-19 12:03:10","2023-10-19 12:03:10",""),
("17","11","1","Bayar VIA Gopay","2023_10_19_07_04_21_o.jpg","Sudah Verifikasi","2000000","2023-09-14","2023-10-19 12:04:21","2023-10-19 12:04:21","");

CREATE TABLE `bayar_alokasi` (
  `id_bayar_alokasi` int(10) NOT NULL AUTO_INCREMENT,
  `id_bayar` int(10) NOT NULL,
  `id_tagihan` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `total_alokasi` int(17) NOT NULL,
  `dialokasikan_oleh` varchar(100) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_bayar_alokasi`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

INSERT INTO bayar_alokasi VALUES
("1","1","53","0","446000","Otomatis Oleh Sistem","2023-10-12 10:34:34","2023-10-12 10:34:34",""),
("2","2","54","0","446000","Otomatis Oleh Sistem","2023-10-12 10:38:46","2023-10-12 10:38:46",""),
("3","2","55","0","446000","Otomatis Oleh Sistem","2023-10-12 10:38:46","2023-10-12 10:38:46",""),
("4","2","65","0","1108000","Otomatis Oleh Sistem","2023-10-12 10:38:46","2023-10-12 10:38:46",""),
("5","3","65","0","500000","Otomatis Oleh Sistem","2023-10-17 09:47:09","2023-10-17 09:47:09",""),
("7","5","27","0","446000","Otomatis Oleh Sistem","2023-10-19 10:31:29","2023-10-19 10:31:29",""),
("8","5","28","0","446000","Otomatis Oleh Sistem","2023-10-19 10:31:30","2023-10-19 10:31:30",""),
("9","5","29","0","446000","Otomatis Oleh Sistem","2023-10-19 10:31:30","2023-10-19 10:31:30",""),
("10","5","39","0","2500000","Otomatis Oleh Sistem","2023-10-19 10:31:30","2023-10-19 10:31:30",""),
("11","5","30","0","446000","Otomatis Oleh Sistem","2023-10-19 10:31:30","2023-10-19 10:31:30",""),
("12","5","31","0","446000","Otomatis Oleh Sistem","2023-10-19 10:31:30","2023-10-19 10:31:30",""),
("13","5","32","0","270000","Otomatis Oleh Sistem","2023-10-19 10:31:30","2023-10-19 10:31:30",""),
("14","6","1","0","150000","Otomatis Oleh Sistem","2023-10-19 10:34:07","2023-10-19 10:34:07",""),
("15","7","1","0","296000","Otomatis Oleh Sistem","2023-10-19 10:35:20","2023-10-19 10:35:20",""),
("16","7","2","0","150000","Otomatis Oleh Sistem","2023-10-19 10:35:20","2023-10-19 10:35:20",""),
("17","8","14","0","446000","Otomatis Oleh Sistem","2023-10-19 10:38:43","2023-10-19 10:38:43",""),
("18","8","15","0","446000","Otomatis Oleh Sistem","2023-10-19 10:38:43","2023-10-19 10:38:43",""),
("19","8","16","0","446000","Otomatis Oleh Sistem","2023-10-19 10:38:43","2023-10-19 10:38:43",""),
("20","8","26","0","662000","Otomatis Oleh Sistem","2023-10-19 10:38:44","2023-10-19 10:38:44",""),
("21","9","40","0","446000","Otomatis Oleh Sistem","2023-10-19 10:41:03","2023-10-19 10:41:03",""),
("22","9","41","0","446000","Otomatis Oleh Sistem","2023-10-19 10:41:03","2023-10-19 10:41:03",""),
("23","9","42","0","446000","Otomatis Oleh Sistem","2023-10-19 10:41:03","2023-10-19 10:41:03",""),
("24","9","52","0","162000","Otomatis Oleh Sistem","2023-10-19 10:41:03","2023-10-19 10:41:03",""),
("25","10","209","0","446000","Otomatis Oleh Sistem","2023-10-19 10:48:43","2023-10-19 10:48:43",""),
("26","10","210","0","446000","Otomatis Oleh Sistem","2023-10-19 10:48:44","2023-10-19 10:48:44",""),
("27","10","211","0","446000","Otomatis Oleh Sistem","2023-10-19 10:48:44","2023-10-19 10:48:44",""),
("28","10","221","0","662000","Otomatis Oleh Sistem","2023-10-19 10:48:44","2023-10-19 10:48:44",""),
("29","11","26","0","1838000","Otomatis Oleh Sistem","2023-10-19 10:49:20","2023-10-19 10:49:20",""),
("30","11","17","0","162000","Otomatis Oleh Sistem","2023-10-19 10:49:20","2023-10-19 10:49:20",""),
("31","12","65","0","892000","Otomatis Oleh Sistem","2023-10-19 11:45:16","2023-10-19 11:45:16",""),
("32","12","56","0","446000","Otomatis Oleh Sistem","2023-10-19 11:45:16","2023-10-19 11:45:16",""),
("33","12","57","0","446000","Otomatis Oleh Sistem","2023-10-19 11:45:16","2023-10-19 11:45:16",""),
("34","12","58","0","216000","Otomatis Oleh Sistem","2023-10-19 11:45:16","2023-10-19 11:45:16",""),
("35","15","79","0","446000","Otomatis Oleh Sistem","2023-10-19 12:02:11","2023-10-19 12:02:11",""),
("36","15","80","0","54000","Otomatis Oleh Sistem","2023-10-19 12:02:12","2023-10-19 12:02:12",""),
("37","17","52","0","2000000","Otomatis Oleh Sistem","2023-10-19 12:04:21","2023-10-19 12:04:21","");

CREATE TABLE `bayar_metode` (
  `id_bayar_metode` int(10) NOT NULL AUTO_INCREMENT,
  `metode` varchar(100) NOT NULL,
  `nomor_rekening` varchar(100) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_bayar_metode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

INSERT INTO bayar_metode VALUES
("1","Transfer ke Bank BTN Rekening SMK Triatma Jaya Badung","00555-0130-0000028","2023-09-19 07:52:54","2023-09-19 07:52:54",""),
("2","Transfer ke Bank BTN Rekening OSIS SMK Triatma Jaya Badung","00555-0188-0000085","2023-09-19 07:52:54","2023-09-19 07:52:54","");

CREATE TABLE `biaya` (
  `id_biaya` int(10) NOT NULL AUTO_INCREMENT,
  `id_periode` int(10) NOT NULL,
  `deskripsi_biaya` varchar(100) NOT NULL,
  `jumlah_biaya` int(17) NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `tingkat` int(2) DEFAULT NULL,
  `id_jurusan` int(10) DEFAULT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_biaya`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

INSERT INTO biaya VALUES
("6","7","SPP Juli 2023","446000","2023-07-20","12","1","2023-08-30 10:43:57","2023-08-30 10:43:57",""),
("7","7","SPP Agustus 2023","446000","2023-08-20","12","1","2023-08-30 10:44:34","2023-08-30 10:44:34",""),
("8","7","SPP September 2023","446000","2023-09-20","12","1","2023-08-30 10:45:02","2023-08-30 10:45:02",""),
("9","7","SPP Oktober 2023","446000","2023-10-20","12","1","2023-08-30 10:45:59","2023-08-30 10:45:59",""),
("10","7","SPP November 2023","446000","2023-11-20","12","1","2023-08-30 10:46:48","2023-08-30 10:46:48",""),
("11","7","SPP Desember 2023","446000","2023-12-20","12","1","2023-08-30 10:47:23","2023-08-30 10:47:23",""),
("12","7","SPP Januari 2024","446000","2024-01-20","12","1","2023-08-30 10:48:03","2023-08-30 10:48:03",""),
("13","7","SPP Februari 2024","446000","2024-02-20","12","1","2023-08-30 10:48:40","2023-08-30 10:48:40",""),
("14","7","SPP Maret 2024","446000","2024-03-20","12","1","2023-08-30 10:49:32","2023-08-30 10:49:32",""),
("15","7","SPP April 2024","446000","2024-04-20","12","1","2023-08-30 10:50:18","2023-08-30 10:50:18",""),
("16","7","SPP Mei 2024","446000","2024-05-20","12","1","2023-08-30 10:51:09","2023-08-30 10:51:09",""),
("17","7","SPP Juni 2024","446000","2024-06-20","12","1","2023-08-30 10:51:58","2023-08-30 10:51:58",""),
("18","7","Uang Study Tour","2500000","2023-09-22","12","1","2023-08-30 11:10:03","2023-08-30 11:10:03","");

CREATE TABLE `jurusan` (
  `id_jurusan` int(10) NOT NULL AUTO_INCREMENT,
  `jurusan` varchar(100) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` timestamp NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO jurusan VALUES
("1","Pengembangan perangkat Lunak dan Gim","2023-09-05 07:14:05","2023-09-05 07:20:52",""),
("2","Tata Kecantikan","2023-09-05 07:34:55","2023-09-05 07:35:44",""),
("3","Kuliner","2023-09-05 07:35:46","2023-09-05 07:36:05",""),
("4","Perhotelan","2023-09-05 07:36:07","2023-09-05 07:36:35","");

CREATE TABLE `periode` (
  `id_periode` int(10) NOT NULL AUTO_INCREMENT,
  `periode` varchar(100) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_periode`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

INSERT INTO periode VALUES
("6","Tahun Ajar 2022/2023","2023-01-07","2023-06-30","2023-08-23 07:23:40","2023-08-23 07:23:40",""),
("7","Tahun Ajar 2023/2024","2023-01-07","2023-06-30","2023-08-23 07:23:49","2023-08-23 07:23:49",""),
("8","Tahun Ajar 2024/2025","2023-01-07","2023-06-30","2023-08-23 09:30:15","2023-08-23 09:30:15",""),
("10","Tahun Ajar 2027/2028","2023-08-25","2023-08-12","2023-08-24 10:59:34","2023-08-24 10:59:34","2023-08-24 10:59:39"),
("11","Tahun Ajar 2026/2027","2023-08-04","2023-08-11","2023-08-24 11:06:01","2023-08-24 11:06:01","2023-08-24 11:14:10"),
("12","Tahun Ajar 2025/2026","2023-08-02","2023-08-04","2023-08-24 11:14:26","2023-08-24 11:14:26",""),
("13","Tahun Ajar 2025/2026","2023-08-12","2023-08-11","2023-08-24 11:17:17","2023-08-24 11:17:17","");

CREATE TABLE `siswa` (
  `id_siswa` int(10) NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `tingkat` int(2) NOT NULL,
  `id_jurusan` int(10) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

INSERT INTO siswa VALUES
("3","4951","Bezaliel Cahya Yehuda","XII RPL","12","1","Jl. Gunung Andakasa, Gg. Matahari No. 1A","085738055323","bezaliel@gmail.com","2023-09-05 07:01:44","2023-09-05 07:01:44",""),
("4","4965","Zaid Asya Yudah","XII RPL","12","1","Jl. Tegal dukuh selatan, Gg. Srikaya II, no. 1","085738910245","zaid@gmail.com","2023-09-05 07:23:22","2023-09-05 07:23:22",""),
("5","4966","Dewa Made Martha Abimayu","XII RPL","12","1","Jl. Arjuna no II, Abian Base - Dalung","085738014582","dewa@gmail.com","2023-09-05 07:33:28","2023-09-05 07:33:28",""),
("10","4964","Williams Jacob Felanuel","XII RPL","12","1","Pesona Dalung Permain No. 13","081917913625","william@gmail.com","2023-09-05 09:39:18","2023-09-05 09:39:18","2023-09-05 09:39:23"),
("11","4953","Gede Andi Perayoga","XII RPL","12","1","Jl. Raya Anyar, Kaja no. 16","087860635630","andi@gmail.com","2023-09-05 09:41:05","2023-09-05 09:41:05",""),
("12","4967","Ferrell Rayosdelsol","XII RPL","12","1","Gg. Pura demak II no 25","081239182412","ferrell@gmail.com","2023-09-05 09:42:25","2023-09-05 09:42:25",""),
("13","4956","Komang Risma Tri Pradnyani","XII RPL","12","1","Dalung Permai","085792958529","risma@gmail.com","2023-09-05 09:44:38","2023-09-05 09:44:38",""),
("14","4955","I Putu Arya Ady Susena","XII RPL","12","1","Jl. Padma Utara no. 524","089661718111","sena@gmail.com","2023-09-05 09:46:57","2023-09-05 09:46:57",""),
("15","4952","Fibri Wiliana Putri","XII RPL","12","1","Perumahan Kuwum, Jl. Graha Asri 1 no. 19, Marga Tabanan","081339682031","fibri@gmail.com","2023-09-05 10:19:09","2023-09-05 10:19:09",""),
("16","4958","Nasywa Ramadhani","XII RPL","12","1","Jl. Merpati, Monang maning","085857972058","nasywa@gmail.com","2023-09-05 10:34:51","2023-09-05 10:34:51",""),
("17","4961","Ni Luh Chelsea Widyadari","XII RPL","12","1","Jl.  Tibu beneng, Canggu","087734632004","chelsea@gmail.com","2023-09-05 10:49:13","2023-09-05 10:49:13",""),
("18","4957","Magdalena Febiayu Kantur","XII RPL","12","1","Jl. Abian base","081246401384","Entin@gmail.com","2023-09-05 10:51:57","2023-09-05 10:51:57",""),
("19","4960","Ni Kadek Nina Antari","XII RPL","12","1","Jl. raya Kapal, Badung","08985337373","nina@gmail.com","2023-09-05 10:53:58","2023-09-05 10:53:58",""),
("20","4950","Aline syahfitri","XII RPL","12","1","jl. tunjung 1 no.7","081805594344","aline@gmail.com","2023-09-05 11:08:22","2023-09-05 11:08:22",""),
("21","4962","Ni Luh Putu Diah Martiani","XII RPL","12","1","Dalung Permai, Banjar Blubuh Sari","0895394536866","diah@gmail.com","2023-09-05 11:10:35","2023-09-05 11:10:35",""),
("22","4563","NI Putu Nia Pradnya Oktaviani","XII RPL","12","1","Jl. Tanah Lot, Tabanan","089508466041","nia@gmail.com","2023-09-05 11:13:53","2023-09-05 11:13:53",""),
("23","4959","Ni Kadek Dwi Swandewi","XII RPL","12","1","Jl. Br. Tulibung Karang","087860052445","dwi@gmail.com","2023-09-05 11:17:07","2023-09-05 11:17:07",""),
("24","4954","I Gede Erick Fujianto Lila","XII RPL","12","1","Jl. Kubu Gunung, Gg. Mawar No. 9","085973912032","erick@gmail.com","2023-09-07 11:17:08","2023-09-07 11:17:08",""),
("25","4555","maena","XII TKC","12","2","jl. dalung","911","maena@gmail.com","2023-09-12 08:14:23","2023-09-12 08:14:23",""),
("26","4556","Christin","XII TKC","12","2","jl. gatsu","08123456789","christin@gmail.com","2023-09-12 08:18:24","2023-09-12 08:18:24",""),
("27","4557","Kristy","XII TKC","12","2","jl. gatsu","0897855566","kristy@gmail.com","2023-09-12 08:19:13","2023-09-12 08:19:13",""),
("28","4558","Audrey","XII TKC","12","2","jl. mahendra datta","0817678833664","audrey@gmail.com","2023-09-12 08:21:07","2023-09-12 08:21:07",""),
("29","4559","Elaine","XII TKC","12","2","jl. land of dawn","081235566775","elaine@gmail.com","2023-09-12 08:23:44","2023-09-12 08:23:44",""),
("30","4560","Dwipet","XII TB 2","12","3","jl. banyuwangi","08666444563","dwipet@gmail.com","2023-09-12 08:25:32","2023-09-12 08:25:32",""),
("31","4561","Alvon","XII TB 2","12","3","Gg. melati","08129393943","alvon@gmail.com","2023-09-12 08:26:56","2023-09-12 08:26:56",""),
("32","4562","Dylon","XII TB 1","12","3","jl. dukuh sari","08255326373","dylon@gmail.com","2023-09-12 08:27:55","2023-09-12 08:27:55",""),
("33","4563","doni","XII TB 2","12","3","jl. gunung andakasa","082484848","doni@gmail.com","2023-09-12 08:30:37","2023-09-12 08:30:37",""),
("34","4564","Jonathan","XII TB 1","12","3","Gg. permata sari","08128347467","jonathan@gmail.com","2023-09-12 08:32:34","2023-09-12 08:32:34",""),
("35","4565","Olive","XII AP 2","12","4","Jl. doraken","08266334556","olive@gmail.com","2023-09-12 08:33:49","2023-09-12 08:33:49",""),
("36","4566","Arista","XII AP 1","12","4","Jl. simanjuntak","0863657467","arista@gmail.com","2023-09-12 08:35:02","2023-09-12 08:35:02",""),
("37","4567","deva","XII AP 1","12","4","jl. gilimanuk","0895757574","deva@gmail.com","2023-09-12 08:40:22","2023-09-12 08:40:22",""),
("38","4568","david","XII AP 2","12","4","jl. gunung agung","08647467464","david@gmail.com","2023-09-12 09:50:52","2023-09-12 09:50:52",""),
("39","4964","William Jacobus Felanuel","XII RPL","12","1","Jalan Dalung Permai","08735365472","william@gmail.com","2023-10-19 11:59:20","2023-10-19 11:59:20","");

CREATE TABLE `tagihan` (
  `id_tagihan` int(10) NOT NULL AUTO_INCREMENT,
  `id_biaya` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `potongan` int(20) NOT NULL DEFAULT 0,
  `total_terbayar` int(20) NOT NULL DEFAULT 0,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` datetime DEFAULT NULL,
  PRIMARY KEY (`id_tagihan`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4;

INSERT INTO tagihan VALUES
("1","6","3","XII RPL","","0","446000","2023-10-12 10:31:25","2023-10-12 10:31:25",""),
("2","7","3","XII RPL","","0","150000","2023-10-12 10:31:25","2023-10-12 10:31:25",""),
("3","8","3","XII RPL","","0","0","2023-10-12 10:31:25","2023-10-12 10:31:25",""),
("4","9","3","XII RPL","","0","0","2023-10-12 10:31:25","2023-10-12 10:31:25",""),
("5","10","3","XII RPL","","0","0","2023-10-12 10:31:25","2023-10-12 10:31:25",""),
("6","11","3","XII RPL","","0","0","2023-10-12 10:31:25","2023-10-12 10:31:25",""),
("7","12","3","XII RPL","","0","0","2023-10-12 10:31:25","2023-10-12 10:31:25",""),
("8","13","3","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("9","14","3","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("10","15","3","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("11","16","3","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("12","17","3","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("13","18","3","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("14","6","4","XII RPL","","0","446000","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("15","7","4","XII RPL","","0","446000","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("16","8","4","XII RPL","","0","446000","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("17","9","4","XII RPL","","0","162000","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("18","10","4","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("19","11","4","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("20","12","4","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("21","13","4","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("22","14","4","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("23","15","4","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("24","16","4","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("25","17","4","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("26","18","4","XII RPL","","0","2500000","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("27","6","5","XII RPL","","0","446000","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("28","7","5","XII RPL","","0","446000","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("29","8","5","XII RPL","","0","446000","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("30","9","5","XII RPL","","0","446000","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("31","10","5","XII RPL","","0","446000","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("32","11","5","XII RPL","","0","270000","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("33","12","5","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("34","13","5","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("35","14","5","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("36","15","5","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("37","16","5","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("38","17","5","XII RPL","","0","0","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("39","18","5","XII RPL","","0","2500000","2023-10-12 10:31:26","2023-10-12 10:31:26",""),
("40","6","11","XII RPL","","0","446000","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("41","7","11","XII RPL","","0","446000","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("42","8","11","XII RPL","","0","446000","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("43","9","11","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("44","10","11","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("45","11","11","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("46","12","11","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("47","13","11","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("48","14","11","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("49","15","11","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("50","16","11","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("51","17","11","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("52","18","11","XII RPL","","0","2162000","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("53","6","12","XII RPL","","0","446000","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("54","7","12","XII RPL","","0","446000","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("55","8","12","XII RPL","","0","446000","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("56","9","12","XII RPL","","0","446000","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("57","10","12","XII RPL","","0","446000","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("58","11","12","XII RPL","","0","216000","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("59","12","12","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("60","13","12","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("61","14","12","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("62","15","12","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("63","16","12","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("64","17","12","XII RPL","","0","0","2023-10-12 10:31:27","2023-10-12 10:31:27",""),
("65","18","12","XII RPL","","0","2500000","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("66","6","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("67","7","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("68","8","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("69","9","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("70","10","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("71","11","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("72","12","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("73","13","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("74","14","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("75","15","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("76","16","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("77","17","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("78","18","13","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("79","6","14","XII RPL","","0","446000","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("80","7","14","XII RPL","","0","54000","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("81","8","14","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("82","9","14","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("83","10","14","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("84","11","14","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("85","12","14","XII RPL","","0","0","2023-10-12 10:31:28","2023-10-12 10:31:28",""),
("86","13","14","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("87","14","14","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("88","15","14","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("89","16","14","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("90","17","14","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("91","18","14","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("92","6","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("93","7","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("94","8","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("95","9","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("96","10","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("97","11","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("98","12","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("99","13","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("100","14","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29","");
INSERT INTO tagihan VALUES
("101","15","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("102","16","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("103","17","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("104","18","15","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("105","6","16","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("106","7","16","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("107","8","16","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("108","9","16","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("109","10","16","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("110","11","16","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("111","12","16","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("112","13","16","XII RPL","","0","0","2023-10-12 10:31:29","2023-10-12 10:31:29",""),
("113","14","16","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("114","15","16","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("115","16","16","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("116","17","16","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("117","18","16","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("118","6","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("119","7","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("120","8","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("121","9","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("122","10","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("123","11","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("124","12","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("125","13","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("126","14","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("127","15","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("128","16","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("129","17","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("130","18","17","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("131","6","18","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("132","7","18","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("133","8","18","XII RPL","","0","0","2023-10-12 10:31:30","2023-10-12 10:31:30",""),
("134","9","18","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("135","10","18","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("136","11","18","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("137","12","18","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("138","13","18","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("139","14","18","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("140","15","18","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("141","16","18","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("142","17","18","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("143","18","18","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("144","6","19","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("145","7","19","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("146","8","19","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("147","9","19","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("148","10","19","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("149","11","19","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("150","12","19","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("151","13","19","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("152","14","19","XII RPL","","0","0","2023-10-12 10:31:31","2023-10-12 10:31:31",""),
("153","15","19","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("154","16","19","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("155","17","19","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("156","18","19","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("157","6","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("158","7","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("159","8","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("160","9","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("161","10","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("162","11","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("163","12","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("164","13","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("165","14","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("166","15","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("167","16","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("168","17","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("169","18","20","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("170","6","21","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("171","7","21","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("172","8","21","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("173","9","21","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("174","10","21","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("175","11","21","XII RPL","","0","0","2023-10-12 10:31:32","2023-10-12 10:31:32",""),
("176","12","21","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("177","13","21","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("178","14","21","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("179","15","21","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("180","16","21","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("181","17","21","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("182","18","21","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("183","6","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("184","7","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("185","8","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("186","9","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("187","10","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("188","11","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("189","12","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("190","13","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("191","14","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("192","15","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("193","16","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("194","17","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("195","18","22","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("196","6","23","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("197","7","23","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("198","8","23","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("199","9","23","XII RPL","","0","0","2023-10-12 10:31:33","2023-10-12 10:31:33",""),
("200","10","23","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34","");
INSERT INTO tagihan VALUES
("201","11","23","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("202","12","23","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("203","13","23","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("204","14","23","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("205","15","23","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("206","16","23","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("207","17","23","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("208","18","23","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("209","6","24","XII RPL","","0","446000","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("210","7","24","XII RPL","","0","446000","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("211","8","24","XII RPL","","0","446000","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("212","9","24","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("213","10","24","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("214","11","24","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("215","12","24","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("216","13","24","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("217","14","24","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("218","15","24","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("219","16","24","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("220","17","24","XII RPL","","0","0","2023-10-12 10:31:34","2023-10-12 10:31:34",""),
("221","18","24","XII RPL","","0","662000","2023-10-12 10:31:34","2023-10-12 10:31:34","");

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hak_akses` int(1) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `dihapus_pada` date DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=I
-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2021 at 06:15 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtoko_buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(50) NOT NULL,
  `judul_buku` varchar(200) NOT NULL,
  `id_pengarang` varchar(20) NOT NULL,
  `id_penerbit` varchar(20) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `berat` float NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `id_pengarang`, `id_penerbit`, `id_kategori`, `stok`, `berat`, `harga`, `deskripsi`, `gambar`, `deleted`) VALUES
('BU-10', 'Apel Emas', 'PG-2', 'PN-2', 'K-2', 8, 1, 92000, 'Tahukah kalian buah paling berharga di seluruh muka Bumi? Jawabannya adalah: Apel Emas. Apel Emas adalah mahkota seluruh buah. Raja dari raja segala jenis buah. Bentuknya seperti apel biasa, tapi warnanya emas. Sebutir apel emas tidak hanya mengenyangkan, tapi juga menyembuhkan penyakit apa pun yang diderita manusia. Dan jika orang yang memakannya tidak sedang sakit, mengunyah apel emas akan memberikan rasa bahagia, damai, serta tenteram. Tapi Apel Emas tidak sembarang tumbuh. Dia adalah hasil perjuangan sekelompok manusia yang yang amat menyayangi hutan, sungai, dan danau. Tidak merusaknya. Apakah kau juga mau menikmati Apel Emas? Jika demikian, mari kita sayangi lingkungan sekitar.', 'photo6185758530338925289.jpg', 0),
('BU-11', 'Malam yang Menegangkan', 'PG-2', 'PN-2', 'K-2', 8, 1, 92000, 'Kerja sama. Kerja sama. Kerja sama adalah kunci mengatasi banyak masalah. Malam itu, serigala buas melolong mendatangi perkebunan jagung untuk memangsa hewan ternak. Bebek ber-kwek kwek kwek ketakutan. Ayam ber-petok petok petok lari. Kambing mengembik gemetar. Semua panik! Aduh, apa yang harus mereka lakukan? Kerja sama. Jika kalian ingin mengalahkan musuh yang lebih kuat. Mengatasi masalah yang lebih besar. Mari bekerja sama, maka kita akan lebih mudah mengatasinya.', 'photo6185758530338925288.jpg', 0),
('BU-12', 'Milea Suara Dari Dilan', 'PG-6', 'PN-7', 'K-2', 8, 1, 89000, '“Dilan memberi penggambaran lain dari sebuah penaklukan cinta & bagaimana indahnya cinta sederhana anak zaman dahulu.” @refaniris\r\n“Cuma satu yang kuinginkan, aku ingin cowok seperti Dilan.” @_SLovaFC\r\n“Dilan brengsek! Dia selalu tahu caranya menjadi pusat perhatian, bahkan ketika jadi buku, setiap serinya selalu ditunggu.” @Tedy_Pensil\r\n“Membaca Dilan itu seperti jatuh cinta lagi, lagi, dan lagi. Ah, indah, deh. Rasanya gak akan pernah bosan membacanya.” @agungwyd\r\n“Bukan cuma sekadar novel, tapi bisa menjadikan yang malas baca jadi mau baca.” @cobra_iqq\r\n“Kisah cintanya gak lebay. Dilan tahu bagaimana memperlakukan wanita. Novelnya keren, bahasanya gak bertele-tele.” @AH_DILAN\r\n“Terima kasih Dilan telah menginspirasiku lewat ceritamu bersama Milea. Terima kasih Surayah, novelmu seru.” @EnciSrifiyani\r\n“Dari Dilan kita belajar mengistimewakan wanita, romantis yang gak kuno, bahkan menjadi ayah & bunda yang hebat :)” @ginaalna\r\n“Kurasa Dilan satu-satunya novel yang aku harap ceritanya t', 'photo6185758530338925290.jpg', 0),
('BU-15', 'Informatika Smp/Mts Jl.1/K13N', 'PG-8', 'PN-9', 'K-3', 7, 1, 87500, 'Buku Informatika untuk SMP/MTs ini disusun untuk memenuhi kebutuhan pembelajaran peserta didik dalam Kurikulum 2013 Revisi. Buku ini disesuaikan dengan perkembangan teknologi yang ada, dengan tetap memperhatikan aspek pemanfaatan bagi peserta didik. Penyajian buku ini dilakukan secara sederhana dan step by step sehingga mudah dipahami oleh peserta didik. Melalui buku ini, diharapkan peserta didik dapat berperan aktif dalam pemanfaatan teknologi yang berkembang dengan sangat pesat tanpa mengesampingkan batasan-batasan dalam menggunakan teknologi.', 'photo6185758530338925292.jpg', 0),
('BU-16', 'Informatika Smp/Mts Jl.2/K13N', 'PG-8', 'PN-9', 'K-3', 7, 1, 90000, 'Buku Informatika untuk SMP/MTs ini disusun untuk memenuhi kebutuhan pembelajaran peserta didik dalam Kurikulum 2013 Revisi. Buku ini disesuaikan dengan perkembangan teknologi yang ada, dengan tetap memperhatikan aspek pemanfaatan bagi peserta didik. Penyajian buku ini dilakukan secara sederhana dan step by step sehingga mudah dipahami oleh peserta didik. Melalui buku ini, diharapkan peserta didik dapat berperan aktif dalam pemanfaatan teknologi yang berkembang dengan sangat pesat tanpa mengesampingkan batasan-batasan dalam menggunakan teknologi.', 'photo6185758530338925293.jpg', 0),
('BU-17', 'Informatika SMP/MTS JL.3/K13N', 'PG-8', 'PN-9', 'K-3', 7, 1, 92000, 'Buku Informatika untuk SMP/MTs ini disusun untuk memenuhi kebutuhan pembelajaran peserta didik dalam Kurikulum 2013 Revisi. Buku ini disesuaikan dengan perkembangan teknologi yang ada, dengan tetap memperhatikan aspek pemanfaatan bagi peserta didik. Penyajian buku ini dilakukan secara sederhana dan step by step sehingga mudah dipahami oleh peserta didik. Melalui buku ini, diharapkan peserta didik dapat berperan aktif dalam pemanfaatan teknologi yang berkembang dengan sangat pesat tanpa mengesampingkan batasan-batasan dalam menggunakan teknologi.', 'photo6185758530338925294.jpg', 0),
('BU-2', 'Mulia dengan Manhaj Salaf', 'PG-1', 'PN-3', 'K-5', 51, 1, 150000, 'Allah Yang Mahamulia telah menurunkan kitab-Nya yang mulia melalui Malaikat Jibril yang mulia kepada Rasul-Nya yang mulia Muhammad.\r\nAllah berfirman, \"Dan sungguh, inilah jalan-Ku yang lurus. Maka ikutilah! Jangan kamu ikuti jalan-jalan (yang lain) yang akan mencerai-beraikan kamu dari jalan-Nya. Demikianlah Dia memerintahkan kepadamu agar kamu bertaqwa\". (QS. Al-An\'am: 153).', '1915947217518878581.jpg', 0),
('BU-3', 'Dunia Lebih Jelek Daripada Bangkai Kambing', 'PG-1', 'PN-3', 'K-5', 50, 1, 50000, 'Kehidupan dunia adalah kehidupan sementara, fana, dan akan hancur. Kehidupan dunia ini hanyalah permainan, senda gurau, kesenangan yang memukau, mempesona dan menipu manusia.\r\n\r\nRasulullah shalallahuâ€™alaihi wa sallam membuat perumpamaan bahwa dunia ini lebih jelek dan lebih hina daripada bangkai kambing. Dunia tidak ada harganya meskipun hanya seberat sayap nyamuk. Kesenangan dunia itu hanya sedikit dan sebentar, sedangkan akhirat itulah yang kekal Abadi.', '1853344483576784537.jpg', 0),
('BU-4', 'Sebaik Baik Amal Adalah Shalat', 'PG-1', 'PN-3', 'K-5', 50, 1, 32000, 'Shalat adalah tiang agama, tidak akan tegak agama ini kecuali dengannya. Shalat adalah ibadah yang pertama kali diwajibkan dan termasuk amal perbuatan yang pertama kali akan dihisab pada hari Kiamat.', '1849824660192323617.jpg', 0),
('BU-5', ' Al-Masih Dalam Pandangan Pemikir Muslim', 'PG-5', 'PN-8', 'K-5', 10, 1, 75000, 'Fokus buku ini adalah menjelaskan pendapat para pemikir Islam Abad Pertengahan (al-Tabari, al-Jahiz, Ibn Hazm, al-Ghazzali, Ibn Arabi) dan era modern (Mu?ammad Abduh dan Mu?ammad Rasyid Rida, Mahmud Syaltut, Abbas Mahmud Aqqad, dan Fathi Utsman) terhadap ajaran dan doktrin pokok agama Kristen, mulai dari doktrin Trinitas, ketuhanan Kristus, hubungan antara ”Bapa” dan ”Anak”, Logos, doktrin penyaliban dan penebusan, kematian Yesus di tiang salib, dst. serta polemik yang terjadi di zaman mereka.', 'photo6185758530338925286.jpg', 0),
('BU-6', 'Amalan Sunnah Setahun', 'PG-1', 'PN-1', 'K-5', 50, 1, 175000, 'Buku ini terdiri dari 27 bab dan terbit dengan tampilan desain yang elegan dan layout yang menarik, serta penyajian isi buku yang sistematis, ringkas dan lengkap. In syaa Allah buku ini dapat menjadi buku panduan amalan bagi setiap Muslim dan Muslimah, dalam menetapkan keutamaan (Fadhail) atau pun melaksanakan amalan-amalan tertentu dalam beribadah kepada Allah Taâ€™ala, maka ini adalah mutlak hak Allah â€˜Azza Wa Jalla. Dan hendaknya setiap Muslim dan Muslimah berkeyakinan dengan ketetapan Allah Taâ€™ala saja yang bersumber dari Al-Quran dan Sunnah Nabi-Nya.', '1860567646077193234.jpg', 0),
('BU-9', 'Filsafat dan Agama', 'PG-5', 'PN-8', 'K-5', 10, 1, 75500, 'Namun, peristiwa yang banyak terjadi akhir-akhir ini mengisyaratkan butuhnya pemikiran yang filosofis. Pemikiran dogmatis yang begitu saja menerima kebenaran suatu pendapat tanpa lebih dahulu mempertanyakannya; ketidakmampuan atau ketidakmauan untuk berpikir kritis dan mendalam; sikap gampang untuk percaya; ketidakmampuan menerima perbedaan pendapat; sikap sinis terhadap kritik; dan lain-lain.', 'photo6185758530338925287.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` varchar(20) NOT NULL,
  `nama_customer` varchar(100) NOT NULL,
  `jk_customer` enum('Laki-Laki','Perempuan') NOT NULL,
  `alamat_customer` varchar(200) NOT NULL,
  `email_customer` varchar(100) NOT NULL,
  `telp_customer` varchar(20) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `jk_customer`, `alamat_customer`, `email_customer`, `telp_customer`, `deleted`) VALUES
('CUS-1', 'Jofrel', 'Laki-Laki', 'Manado', 'asd@gmail.com', '085230626418', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(20) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `deleted`) VALUES
('K-2', 'Fiksi', 0),
('K-3', 'Pendidikan', 0),
('K-5', 'Rohani', 0);

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(20) NOT NULL,
  `nama_penerbit` varchar(100) NOT NULL,
  `alamat_penerbit` varchar(100) NOT NULL,
  `email_penerbit` varchar(50) NOT NULL,
  `telp_penerbit` varchar(20) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama_penerbit`, `alamat_penerbit`, `email_penerbit`, `telp_penerbit`, `deleted`) VALUES
('PN-1', 'Khazanah Fawaid', 'Indonesia', 'tunasfawaid@gmail.com', '0821100039689', 0),
('PN-2', 'Gramedia Book Store', 'Jalan Sam Ratulangi No. 45, Ranotana, Sario, Wenang Sel., Kec. Wenang, Kota Manado, Sulawesi Utara', 'customercare@gramedia.com', '(0431) 862692', 0),
('PN-3', 'Pustaka At Taqwa', 'Jakarta', 'order@pustakaattaqwa.com', '081511117015', 0),
('PN-7', 'Mizan Publishing', 'Jalan Cinambo No. 135, Cisaranten Wetan, Bandung 40294, Indonesia.', 'info@mizan.com', ' 022-7834310', 0),
('PN-8', 'BPK GUNUNG MULIA', 'Jalan Kwitang Raya No.22-23, Jakarta Pusat,\r\nDKI Jakarta 10420, Indonesia', 'ecommerce@bpkgm.com', '62213901208', 0),
('PN-9', 'PENERBIT ERLANGGA', 'Jl. H. Baping Raya No. 100\r\nCiracas, Jakarta Timur 13740', ' info@erlangga.co.id', '(021) 8717006', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengarang`
--

CREATE TABLE `pengarang` (
  `id_pengarang` varchar(20) NOT NULL,
  `nama_pengarang` varchar(100) NOT NULL,
  `alamat_pengarang` varchar(200) NOT NULL,
  `email_pengarang` varchar(50) NOT NULL,
  `telp_pengarang` varchar(20) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengarang`
--

INSERT INTO `pengarang` (`id_pengarang`, `nama_pengarang`, `alamat_pengarang`, `email_pengarang`, `telp_pengarang`, `deleted`) VALUES
('PG-1', 'Yazid bin Abdul Qadir Jawas', 'Bogor', 'xxx@xxx.com', '0000', 0),
('PG-2', 'Tere Liye', '-', '-@gmail.com', '0', 0),
('PG-5', 'Olaf H. Schumann', '-', '-@gmail.com', '0', 0),
('PG-6', 'Pidi Baiq', '-', '-@gmail.com', '0', 0),
('PG-8', 'Henry Pandia', '-', '-@gmail.com', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(50) NOT NULL,
  `id_customer` varchar(20) NOT NULL,
  `id_buku` varchar(50) NOT NULL,
  `tgl_transaksi` datetime NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `transaksi`
--
DELIMITER $$
CREATE TRIGGER `kembalikan_buku` AFTER DELETE ON `transaksi` FOR EACH ROW BEGIN
	UPDATE buku SET stok=stok+OLD.jumlah WHERE id_buku=OLD.id_buku;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tipe_user` enum('Customer','Admin') NOT NULL,
  `id_customer` varchar(20) DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `tipe_user`, `id_customer`, `deleted`) VALUES
('admin', 'admin', 'Admin', NULL, 0),
('jofrel', '121212', 'Customer', 'CUS-1', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `FK_buku_pengarang` (`id_pengarang`),
  ADD KEY `FK_buku_penerbit` (`id_penerbit`),
  ADD KEY `FK_buku_kategori` (`id_kategori`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indexes for table `pengarang`
--
ALTER TABLE `pengarang`
  ADD PRIMARY KEY (`id_pengarang`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `FK_transaksi_customer` (`id_customer`),
  ADD KEY `FK_transaksi_buku` (`id_buku`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD KEY `FK_user_customer` (`id_customer`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `FK_buku_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `FK_buku_penerbit` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id_penerbit`),
  ADD CONSTRAINT `FK_buku_pengarang` FOREIGN KEY (`id_pengarang`) REFERENCES `pengarang` (`id_pengarang`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `FK_transaksi_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `FK_transaksi_customer` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_user_customer` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

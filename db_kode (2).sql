-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2024 pada 15.58
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kode`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `question`
--

CREATE TABLE `question` (
  `ID` int(11) NOT NULL,
  `QuizID` int(11) NOT NULL,
  `nomor_soal` int(11) NOT NULL,
  `Question` text NOT NULL,
  `OptionA` text NOT NULL,
  `OptionB` text NOT NULL,
  `OptionC` text NOT NULL,
  `OptionD` text NOT NULL,
  `CorrectAnswer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `question`
--

INSERT INTO `question` (`ID`, `QuizID`, `nomor_soal`, `Question`, `OptionA`, `OptionB`, `OptionC`, `OptionD`, `CorrectAnswer`) VALUES
(1, 901, 1, 'Kapan agung lahir?', 'G lahir', '17 Agustus 1945', '12 Mei 1948', '13 Agustus 2006', '13 Agustus 2006'),
(3, 901, 2, 'Kapan agung lahir2?', 'G lahir', '17 Agustus 1945', '12 Mei 1948', '13 Agustus 2006', '13 Agustus 2006'),
(4, 901, 3, 'Kapan agung lahir3?', 'G lahir', '17 Agustus 1945', '12 Mei 1948', '13 Agustus 2006', '13 Agustus 2006'),
(5, 901, 4, 'Apa ibu kota Indonesia?', 'Surabaya', 'Bandung', 'Jakarta', 'Medan', 'Jakarta'),
(6, 901, 5, 'Siapa penemu lampu?', 'Albert Einstein', 'Nikola Tesla', 'Thomas Edison', 'Alexander Graham Bell', 'Thomas Edison'),
(7, 901, 6, 'Siapa penulis novel \"Laskar Pelangi\"?', 'Andrea Hirata', 'Dee Lestari', 'Tere Liye', 'Ika Natassa', 'Andrea Hirata'),
(8, 901, 7, 'Berapa banyak hari dalam satu tahun?', '365', '366', '360', '364', '365'),
(9, 901, 8, 'Siapa pencipta lagu \"Indonesia Raya\"?', 'W.R. Supratman', 'Iwan Fals', 'Guruh Soekarnoputra', 'Slamet Riyanto', 'W.R. Supratman'),
(10, 901, 9, 'Apa simbol kimia untuk emas?', 'E', 'Ag', 'Au', 'G', 'Au'),
(11, 901, 10, 'Siapa pelukis \"Mona Lisa\"?', 'Vincent van Gogh', 'Pablo Picasso', 'Leonardo da Vinci', 'Michelangelo', 'Leonardo da Vinci'),
(12, 901, 11, 'Siapa pahlawan yang terkenal dari Jawa Barat?', 'Diponegoro', 'Cut Nyak Dien', 'Tuanku Imam Bonjol', 'Ki Hajar Dewantara', 'Ki Hajar Dewantara'),
(13, 901, 12, 'Apa nama sungai terpanjang di dunia?', 'Sungai Nil', 'Sungai Amazon', 'Sungai Mississippi', 'Sungai Yangtze', 'Sungai Nil'),
(14, 901, 13, 'Siapa ilmuwan yang merumuskan hukum gravitasi?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Stephen Hawking', 'Isaac Newton'),
(15, 901, 14, 'Apa nama planet terdekat dari matahari?', 'Venus', 'Mars', 'Jupiter', 'Mercury', 'Mercury'),
(16, 901, 15, 'Siapa penulis \"Doraemon\"?', 'Osamu Tezuka', 'Leiji Matsumoto', 'Fujiko F. Fujio', 'Hayao Miyazaki', 'Fujiko F. Fujio'),
(17, 901, 16, 'Apa nama ibukota Jepang?', 'Kyoto', 'Osaka', 'Tokyo', 'Hiroshima', 'Tokyo'),
(18, 901, 17, 'Siapa aktor utama dalam film \"Pirates of the Caribbean\"?', 'Johnny Depp', 'Brad Pitt', 'Leonardo DiCaprio', 'Tom Hanks', 'Johnny Depp'),
(19, 901, 18, 'Apa nama patung yang terkenal di Rio de Janeiro?', 'Statue of Liberty', 'Christ the Redeemer', 'Eiffel Tower', 'Big Ben', 'Christ the Redeemer'),
(20, 901, 19, 'Siapa presiden Amerika Serikat yang pertama?', 'Abraham Lincoln', 'George Washington', 'Thomas Jefferson', 'John Adams', 'George Washington'),
(21, 901, 20, 'Apa nama sungai yang melintasi Mesir?', 'Sungai Amazon', 'Sungai Tigris', 'Sungai Euphrates', 'Sungai Nil', 'Sungai Nil'),
(22, 901, 21, 'Siapa penulis \"Harry Potter\"?', 'J.R.R. Tolkien', 'George Orwell', 'J.K. Rowling', 'Charles Dickens', 'J.K. Rowling'),
(23, 901, 22, 'Apa ibukota Perancis?', 'Berlin', 'Roma', 'London', 'Paris', 'Paris'),
(24, 901, 23, 'Siapa ilmuwan yang menemukan radioaktivitas?', 'Marie Curie', 'Albert Einstein', 'Niels Bohr', 'Ernest Rutherford', 'Marie Curie'),
(25, 901, 24, 'Apa nama sungai terpanjang di Eropa?', 'Sungai Thames', 'Sungai Volga', 'Sungai Danube', 'Sungai Seine', 'Sungai Volga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz_result`
--

CREATE TABLE `quiz_result` (
  `ID` int(11) NOT NULL,
  `QuizID` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `absen` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `tanggal` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `quiz_result`
--

INSERT INTO `quiz_result` (`ID`, `QuizID`, `nama`, `absen`, `mark`, `tanggal`) VALUES
(1, 901, 'agung', 1, 4, '2024-04-22'),
(2, 901, 'agung', 1, 5, '2024-04-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `absen` int(11) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `absen`, `is_admin`, `nama`, `password`, `marks`) VALUES
(1, 1, 0, 'agung', '', 8),
(2, 90, 0, 'sss', 'kepo', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `quiz_result`
--
ALTER TABLE `quiz_result`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `absen` (`absen`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `question`
--
ALTER TABLE `question`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `quiz_result`
--
ALTER TABLE `quiz_result`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

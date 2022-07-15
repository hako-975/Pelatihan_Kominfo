-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Des 2021 pada 02.25
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `nim` bigint(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`nim`, `nama`, `kelas`, `jenis_kelamin`, `alamat`) VALUES
(201011402126, 'Myra Stevenson', '03TPLP016', 'Laki-Laki', 'Ap #334-939 Sem Road'),
(201011402127, 'Marcia Washington', '03TPLP016', 'Perempuan', 'Ap #125-3163 In Ave'),
(201011402128, 'Maris Salazar', '03TPLP016', 'Laki-Laki', '733-8788 Aliquet Road'),
(201011402129, 'Eve Foreman', '03TPLP016', 'Laki-Laki', 'Ap #527-3458 Scelerisque Rd.'),
(201011402130, 'Jenette Peck', '03TPLP016', 'Laki-Laki', 'Ap #503-7172 Mus. Road'),
(201011402131, 'Halee Blackburn', '03TPLP016', 'Laki-Laki', 'Ap #548-5127 Turpis Rd.'),
(201011402132, 'Eugenia Pennington', '03TPLP016', 'Laki-Laki', '767-4138 A, Road'),
(201011402133, 'Melissa Nixon', '03TPLP016', 'Laki-Laki', '597-8661 Adipiscing Street'),
(201011402134, 'Keith Downs', '03TPLP016', 'Laki-Laki', 'P.O. Box 108, 1754 Augue. Av.'),
(201011402135, 'Anika Valenzuela', '03TPLP016', 'Laki-Laki', 'P.O. Box 240, 1448 Orci St.'),
(201011402136, 'Chloe Turner', '03TPLP016', 'Laki-Laki', '525-3508 Non, St.'),
(201011402137, 'Timon Frank', '03TPLP016', 'Laki-Laki', 'Ap #175-2729 Auctor Av.'),
(201011402138, 'Shannon Fulton', '03TPLP016', 'Laki-Laki', 'Ap #581-3068 Iaculis Street'),
(201011402139, 'Keaton Mccormick', '03TPLP016', 'Laki-Laki', '547-3306 Vestibulum Rd.'),
(201011402140, 'Lionel Boyle', '03TPLP016', 'Laki-Laki', 'Ap #250-4760 Purus, Road'),
(201011402141, 'Rosalyn Goff', '03TPLP016', 'Laki-Laki', 'Ap #801-5419 Ligula Street'),
(201011402142, 'Olivia Farrell', '03TPLP016', 'Laki-Laki', '7757 Libero. St.'),
(201011402143, 'Theodore Whitley', '03TPLP016', 'Laki-Laki', 'P.O. Box 739, 4406 Ac Av.'),
(201011402144, 'Autumn Castro', '03TPLP016', 'Laki-Laki', '5302 A Avenue'),
(201011402145, 'Ross Roy', '03TPLP016', 'Laki-Laki', '8434 Dictum Street'),
(201011402146, 'Quyn Jordan', '03TPLP016', 'Laki-Laki', 'Ap #847-9180 Sed Ave'),
(201011402147, 'Kimberley Watkins', '03TPLP016', 'Laki-Laki', 'Ap #510-6457 Et, Ave'),
(201011402148, 'Baxter Lang', '03TPLP016', 'Laki-Laki', 'P.O. Box 369, 4614 Risus. Ave'),
(201011402149, 'Martin Deleon', '03TPLP016', 'Laki-Laki', 'P.O. Box 799, 8342 Tincidunt, Rd.'),
(201011402150, 'Sarah Buck', '03TPLP016', 'Laki-Laki', '194-1689 Sagittis St.'),
(201011402151, 'Ira Mcneil', '03TPLP016', 'Laki-Laki', 'Ap #135-5016 Enim Street'),
(201011402152, 'Fitzgerald Clark', '03TPLP016', 'Laki-Laki', 'P.O. Box 702, 1772 Nunc Avenue'),
(201011402153, 'Neve Velazquez', '03TPLP016', 'Laki-Laki', '635-5046 Eleifend Rd.'),
(201011402154, 'Rose Hinton', '03TPLP016', 'Laki-Laki', 'Ap #961-136 Aliquam Road'),
(201011402155, 'Illiana Hebert', '03TPLP016', 'Laki-Laki', '812-3547 Nonummy Av.'),
(201011402156, 'Molly Cross', '03TPLP016', 'Laki-Laki', '753-9585 Consectetuer St.'),
(201011402157, 'Stephen Hensley', '03TPLP016', 'Laki-Laki', '8256 Dolor Ave'),
(201011402158, 'Mark Koch', '03TPLP016', 'Laki-Laki', '363-404 Nulla Ave'),
(201011402159, 'Mira Whitfield', '03TPLP016', 'Laki-Laki', '4623 Mauris St.'),
(201011402160, 'Chastity Deleon', '03TPLP016', 'Laki-Laki', '7330 Consequat Ave'),
(201011402161, 'Erich Petersen', '03TPLP016', 'Laki-Laki', '396-9403 Penatibus Ave'),
(201011402162, 'Kasper Crosby', '03TPLP016', 'Laki-Laki', '319-1467 Ornare Av.'),
(201011402163, 'Timothy Holland', '03TPLP016', 'Laki-Laki', '891-4936 Ligula. St.'),
(201011402164, 'Leonard Smith', '03TPLP016', 'Laki-Laki', 'Ap #194-1855 Augue Rd.'),
(201011402165, 'Flynn Bird', '03TPLP016', 'Laki-Laki', 'P.O. Box 563, 2685 Urna St.'),
(201011402166, 'Jamalia Frank', '03TPLP016', 'Laki-Laki', 'Ap #634-3716 Integer Avenue'),
(201011402167, 'Eve Reilly', '03TPLP016', 'Laki-Laki', '796-5964 Consectetuer St.'),
(201011402168, 'Tiger Freeman', '03TPLP016', 'Laki-Laki', 'P.O. Box 629, 2185 Vitae Road'),
(201011402169, 'Hamish Holman', '03TPLP016', 'Laki-Laki', 'Ap #463-5740 Dictum Ave'),
(201011402170, 'Ainsley Barron', '03TPLP016', 'Laki-Laki', '966-9830 Cursus. St.'),
(201011402171, 'Darryl Sellers', '03TPLP016', 'Laki-Laki', 'Ap #751-8090 Ut Ave'),
(201011402172, 'Brenden Horton', '03TPLP016', 'Laki-Laki', '1363 Ornare, Road'),
(201011402173, 'Signe Kidd', '03TPLP016', 'Laki-Laki', 'Ap #362-7078 Diam Ave'),
(201011402174, 'Isaiah Cummings', '03TPLP016', 'Laki-Laki', 'Ap #129-7295 Pulvinar Rd.'),
(201011402175, 'Kieran Langley', '03TPLP016', 'Laki-Laki', 'Ap #473-7667 Mauris Road'),
(201011402176, 'Walker Guzman', '03TPLP016', 'Laki-Laki', '4648 Amet, Rd.'),
(201011402177, 'Zephania George', '03TPLP016', 'Laki-Laki', 'Ap #670-7116 Eget Ave'),
(201011402178, 'Barbara Brewer', '03TPLP016', 'Laki-Laki', 'P.O. Box 275, 9097 Eu, Road'),
(201011402179, 'Seth Rasmussen', '03TPLP016', 'Laki-Laki', '6937 Sit Av.'),
(201011402180, 'Tarik Mullins', '03TPLP016', 'Laki-Laki', '228-8195 Ut Ave'),
(201011402181, 'Hamish Pacheco', '03TPLP016', 'Laki-Laki', 'P.O. Box 131, 1535 Cursus Rd.'),
(201011402182, 'Walter Baker', '03TPLP016', 'Laki-Laki', '3970 Aenean Av.'),
(201011402183, 'Carol Holt', '03TPLP016', 'Laki-Laki', '6331 Ipsum. Av.'),
(201011402184, 'Imelda Mills', '03TPLP016', 'Laki-Laki', '260-3518 Orci Avenue'),
(201011402185, 'Dean Gates', '03TPLP016', 'Laki-Laki', '552-872 Sit Rd.'),
(201011402186, 'Athena Moody', '03TPLP016', 'Laki-Laki', 'P.O. Box 722, 9663 Pede St.'),
(201011402187, 'Nash Kent', '03TPLP016', 'Laki-Laki', '9405 Tristique Av.'),
(201011402188, 'Fitzgerald Fisher', '03TPLP016', 'Laki-Laki', '504-7183 Nam Avenue'),
(201011402189, 'Ainsley Pickett', '03TPLP016', 'Laki-Laki', '7266 In Rd.'),
(201011402190, 'Madison Warren', '03TPLP016', 'Laki-Laki', 'Ap #929-7473 Leo, Road'),
(201011402191, 'Stuart Hood', '03TPLP016', 'Laki-Laki', '2913 A, Avenue'),
(201011402192, 'Simone Ryan', '03TPLP016', 'Laki-Laki', 'Ap #887-1732 Dolor Rd.'),
(201011402193, 'Amy Marquez', '03TPLP016', 'Laki-Laki', '917-7451 Sagittis. St.'),
(201011402194, 'Damian Mccormick', '03TPLP016', 'Laki-Laki', '6312 Nullam Avenue'),
(201011402195, 'Harper Burke', '03TPLP016', 'Laki-Laki', '783-202 Metus. Ave'),
(201011402196, 'Kyla Gomez', '03TPLP016', 'Laki-Laki', 'Ap #427-6042 Sit Road'),
(201011402197, 'Henry Hutchinson', '03TPLP016', 'Laki-Laki', 'Ap #782-642 Pede, Road'),
(201011402198, 'Adria Gibson', '03TPLP016', 'Laki-Laki', '447-5343 Dis Avenue'),
(201011402199, 'Charissa Thomas', '03TPLP016', 'Laki-Laki', 'Ap #699-1136 Elit, St.'),
(201011402200, 'Nelle Pitts', '03TPLP016', 'Laki-Laki', 'Ap #150-1471 Nunc, Ave'),
(201011402201, 'Sonia Malone', '03TPLP016', 'Laki-Laki', '244-3196 A Ave'),
(201011402202, 'Nina Jackson', '03TPLP016', 'Laki-Laki', 'P.O. Box 576, 8760 Quam Rd.'),
(201011402203, 'Kareem Houston', '03TPLP016', 'Laki-Laki', '599-230 Vivamus Av.'),
(201011402204, 'Carlos Rich', '03TPLP016', 'Laki-Laki', 'P.O. Box 553, 1948 Eget St.'),
(201011402205, 'Branden Mckee', '03TPLP016', 'Laki-Laki', '821-2242 Tincidunt Rd.'),
(201011402206, 'Yoko Barr', '03TPLP016', 'Laki-Laki', 'Ap #192-8254 Enim, Ave'),
(201011402207, 'James Donovan', '03TPLP016', 'Laki-Laki', '4317 Et Ave'),
(201011402208, 'Kieran Sykes', '03TPLP016', 'Laki-Laki', '110 Mus. St.'),
(201011402209, 'Cynthia Quinn', '03TPLP016', 'Laki-Laki', 'P.O. Box 111, 3216 Ornare Street'),
(201011402210, 'Henry Vaughan', '03TPLP016', 'Laki-Laki', '319-3609 Porta St.'),
(201011402211, 'Aristotle Ewing', '03TPLP016', 'Laki-Laki', '773-1297 Libero. Avenue'),
(201011402212, 'Oliver Fox', '03TPLP016', 'Laki-Laki', 'Ap #889-1016 Erat Ave'),
(201011402213, 'Carter Wallace', '03TPLP016', 'Laki-Laki', 'P.O. Box 831, 8066 Aliquam St.'),
(201011402214, 'Keaton England', '03TPLP016', 'Laki-Laki', '8438 Id Ave'),
(201011402215, 'Reece Coleman', '03TPLP016', 'Laki-Laki', 'P.O. Box 645, 1171 Arcu Ave'),
(201011402216, 'Lacota Peters', '03TPLP016', 'Laki-Laki', '605-196 Velit Rd.'),
(201011402217, 'Andrew Cross', '03TPLP016', 'Laki-Laki', 'Ap #432-5714 Et St.'),
(201011402218, 'Brett Russo', '03TPLP016', 'Laki-Laki', 'Ap #853-2294 Arcu. St.'),
(201011402219, 'April Tran', '03TPLP016', 'Laki-Laki', 'P.O. Box 560, 9305 Turpis St.'),
(201011402220, 'Oren Fletcher', '03TPLP016', 'Laki-Laki', 'P.O. Box 520, 6150 Odio. St.'),
(201011402221, 'Mara Barber', '03TPLP016', 'Laki-Laki', 'Ap #419-5347 Maecenas Avenue'),
(201011402222, 'Audra Parrish', '03TPLP016', 'Laki-Laki', 'P.O. Box 153, 1194 Magna. Ave'),
(201011402223, 'Rashad Bray', '03TPLP016', 'Laki-Laki', '527-5033 Vehicula Avenue'),
(201011402224, 'Rinah Briggs', '03TPLP016', 'Laki-Laki', 'Ap #163-4200 Purus, Avenue'),
(201011402225, 'Dale Galloway', '03TPLP016', 'Laki-Laki', 'Ap #348-9204 Et, Streetd');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

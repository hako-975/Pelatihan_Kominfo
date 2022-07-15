<?php
	require 'koneksi.php';
	
	$tbl_mahasiswa = mysqli_query($koneksi, "SELECT * FROM tbl_mahasiswa");
	
	if (isset($_GET['cari'])) 
	{
		$keyword = $_GET['keyword'];
		$tbl_mahasiswa = mysqli_query($koneksi, "SELECT * FROM tbl_mahasiswa WHERE nim LIKE '%$keyword%' OR nama LIKE '%$keyword%' OR kelas LIKE '%$keyword%' OR jenis_kelamin LIKE '%$keyword%' OR alamat LIKE '%$keyword%'");

		$resetBtn = true;
	}
?>


<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Daftar Mahasiswa</title>
</head>

<body>
	<a href="tambah_mahasiswa.php">Tambah Mahasiswa</a><br><br>
	
	<h2>Daftar Mahasiswa</h2>
	
	<form method="GET">
		<input type="search" name="keyword" value="<?= (isset($_GET['cari']) ? $_GET['keyword'] : ''); ?>">
		<button type="submit" name="cari">Cari</button>
		<?php if (isset($resetBtn)): ?>
			<a href="index.php">Reset</a>
		<?php endif ?>
	</form>
	<br>
	
	<table border="1" cellpadding="10" cellspacing="0">
		<tr>
			<th>NIM</th>
			<th>Nama</th>
			<th>Kelas</th>
			<th>Jenis Kelamin</th>
			<th>Alamat</th>
			<th colspan="2">Aksi</th>
		</tr>
		<?php foreach ($tbl_mahasiswa as $d) : ?>
			<tr>
				<td><?= $d['nim']; ?></td>
				<td><?= $d['nama']; ?></td>
				<td><?= $d['kelas']; ?></td>
				<td><?= $d['jenis_kelamin']; ?></td>
				<td><?= $d['alamat']; ?></td>
				<td><a href="ubah_mahasiswa.php?nim=<?= $d['nim']; ?>">Edit</a></td>
				<td><a href="hapus_mahasiswa.php?nim=<?= $d['nim']; ?>"onclick="return confirm('Apakah Anda yakin ingin menghapus Mahasiswa dengan NIM <?= $d['nim']; ?>?')">Delete</a></td>
			</tr>
		<?php endforeach ?>
	</table>
</body>

</html>
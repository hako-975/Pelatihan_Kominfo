<?php 
	require 'koneksi.php';

	if (isset($_POST['btn_tambah_mahasiswa'])) 
	{
		$nim = $_POST['nim'];
		$nama = $_POST['nama'];
		$kelas = $_POST['kelas'];
		$jenis_kelamin = $_POST['jenis_kelamin'];
		$alamat = $_POST['alamat'];
		$insert = mysqli_query($koneksi, "INSERT INTO tbl_mahasiswa (nim, nama, kelas, jenis_kelamin, alamat) VALUES ('$nim', '$nama', '$kelas', '$jenis_kelamin', '$alamat')");

		if ($insert) 
		{
			echo "
				<script>
					alert('Data berhasil ditambahkan!')
					window.location.href = 'index.php';
				</script>
			";	
		}
		else
		{
			echo "
				<script>
					alert('Data gagal ditambahkan!')
					window.location.href = 'index.php';
				</script>
			";	
		}
	}
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Tambah Mahasiswa</title>
</head>
<body>
	<a href="index.php">Daftar Mahasiswa</a><br><br>

	<h2>Tambah Mahasiswa</h2>
	<form method="POST" name="formTambahMahasiswa" onsubmit="return validateForm()">
		<table>
			<tr>
				<td><label for="nim">NIM</label></td>
				<td><input type="number" name="nim" id="nim"></td>
			</tr>
			<tr>
				<td><label for="nama">Nama</label></td>
				<td><input type="text" name="nama" id="nama"></td>
			</tr>
			<tr>
				<td><label for="kelas">Kelas</label></td>
				<td><input type="text" name="kelas" id="kelas"></td>
			</tr>
			<tr>
				<td><label>Jenis Kelamin</label></td>
			</tr>
			<tr>
				<td>
					<input type="radio" checked name="jenis_kelamin" id="laki_laki" value="Laki-Laki">
					<label for="laki_laki">Laki-Laki</label>
				</td>
				<td>
					<input type="radio" name="jenis_kelamin" id="perempuan" value="Perempuan"><label for="perempuan">Perempuan</label>
				</td>
			</tr>
			<tr>
				<td><label for="alamat">Alamat</label></td>
				<td><textarea name="alamat" id="alamat"></textarea></td>
			</tr>
			<tr>
				<td><button type="submit" name="btn_tambah_mahasiswa">Tambahkan!</button></td>
			</tr>
		</table>
	</form>

	<script>
		function validateForm() 
		{
			if (document.forms["formTambahMahasiswa"]["nim"].value == '') 
			{
				alert("Nim harus diisi!");
				document.forms["formTambahMahasiswa"]["nim"].focus();
				return false;
			}
			
			if (document.forms["formTambahMahasiswa"]["nama"].value == '') 
			{
				alert("Nama harus diisi!");
				document.forms["formTambahMahasiswa"]["nama"].focus();
				return false;
			}

			if (document.forms["formTambahMahasiswa"]["kelas"].value == '') 
			{
				alert("Kelas harus diisi!");
				document.forms["formTambahMahasiswa"]["kelas"].focus();
				return false;
			}

			if (document.forms["formTambahMahasiswa"]["alamat"].value == '') 
			{
				alert("Alamat harus diisi!");
				document.forms["formTambahMahasiswa"]["alamat"].focus();
				return false;
			}
		}
	</script>
</body>
</html>
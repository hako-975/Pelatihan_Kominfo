<?php 
	require 'koneksi.php';
	
	$nim = $_GET['nim'];
	$getMahasiswaByNim = mysqli_query($koneksi, "SELECT * FROM tbl_mahasiswa WHERE nim = '$nim'");
	$data = mysqli_fetch_assoc($getMahasiswaByNim);

	if (isset($_POST['btn_ubah_mahasiswa'])) 
	{
		$nama = $_POST['nama'];
		$kelas = $_POST['kelas'];
		$jenis_kelamin = $_POST['jenis_kelamin'];
		$alamat = $_POST['alamat'];
		$update = mysqli_query($koneksi, "UPDATE tbl_mahasiswa SET nama = '$nama', kelas = '$kelas', jenis_kelamin = '$jenis_kelamin', alamat = '$alamat' WHERE nim = '$nim'");

		if ($update) 
		{
			echo "
				<script>
					alert('Data berhasil diubah!')
					window.location.href = 'index.php';
				</script>
			";	
		}
		else
		{
			echo "
				<script>
					alert('Data gagal diubah!')
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
	<title>Ubah Mahasiswa</title>
</head>
<body>
	<a href="index.php">Daftar Mahasiswa</a><br><br>

	<h2>Ubah Mahasiswa</h2>
	<form method="POST" name="formUbahMahasiswa" onsubmit="return validateForm()">
		<table>
			<tr>
				<td><label for="nama">Nama</label></td>
				<td><input type="text" name="nama" id="nama" value="<?= $data['nama']; ?>"></td>
			</tr>
			<tr>
				<td><label for="kelas">Kelas</label></td>
				<td><input type="text" name="kelas" id="kelas" value="<?= $data['kelas']; ?>"></td>
			</tr>
			<tr>
				<td><label>Jenis Kelamin</label></td>
			</tr>
			<?php if ($data['jenis_kelamin'] == 'Laki-Laki'): ?>
				<tr>
					<td>
						<input type="radio" checked name="jenis_kelamin" id="laki_laki" value="Laki-Laki">
						<label for="laki_laki">Laki-Laki</label>
					</td>
					<td>
						<input type="radio" name="jenis_kelamin" id="perempuan" value="Perempuan"><label for="perempuan">Perempuan</label>
					</td>
				</tr>
			<?php else: ?>
				<tr>
					<td>
						<input type="radio" name="jenis_kelamin" id="laki_laki" value="Laki-Laki">
						<label for="laki_laki">Laki-Laki</label>
					</td>
					<td>
						<input type="radio" checked name="jenis_kelamin" id="perempuan" value="Perempuan"><label for="perempuan">Perempuan</label>
					</td>
				</tr>
			<?php endif ?>
			<tr>
				<td><label for="alamat">Alamat</label></td>
				<td><textarea name="alamat" id="alamat"><?= $data['alamat']; ?></textarea></td>
			</tr>
			<tr>
				<td><button type="submit" name="btn_ubah_mahasiswa">Ubah!</button></td>
			</tr>
		</table>
	</form>

	<script>
		function validateForm() 
		{
			if (document.forms["formUbahMahasiswa"]["nim"].value == '') 
			{
				alert("Nim harus diisi!");
				document.forms["formUbahMahasiswa"]["nim"].focus();
				return false;
			}
			
			if (document.forms["formUbahMahasiswa"]["nama"].value == '') 
			{
				alert("Nama harus diisi!");
				document.forms["formUbahMahasiswa"]["nama"].focus();
				return false;
			}

			if (document.forms["formUbahMahasiswa"]["kelas"].value == '') 
			{
				alert("Kelas harus diisi!");
				document.forms["formUbahMahasiswa"]["kelas"].focus();
				return false;
			}

			if (document.forms["formUbahMahasiswa"]["alamat"].value == '') 
			{
				alert("Alamat harus diisi!");
				document.forms["formUbahMahasiswa"]["alamat"].focus();
				return false;
			}
		}
	</script>
</body>
</html>
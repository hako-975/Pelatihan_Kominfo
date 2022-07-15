<?php 
	require 'koneksi.php';
	$nim = $_GET['nim'];

	$delete = mysqli_query($koneksi, "DELETE FROM tbl_mahasiswa WHERE nim = '$nim'");
	if ($delete) 
	{
		echo "
			<script>
				alert('Data berhasil dihapus!');
				window.location.href = 'index.php';
			</script>
		";	
	}
	else
	{
		echo "
			<script>
				alert('Data gagal dihapus!');
				window.location.href = 'index.php';
			</script>
		";	
	}
?>
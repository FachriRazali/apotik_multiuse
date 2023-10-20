<?php
$koneksi = new mysqli('localhost', 'root', '', 'multiuser')
or die(mysqli_error($koneksi));

if (mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}
 

if(isset($_POST['simpan'])) {
    $idpasien = $_POST['idpasien'];
    $nmpasien = $_POST['nmpasien'];
    $jk = $_POST['jk'];
    $alamat = $_POST['alamat'];
    $koneksi->query("INSERT INTO pasien (idpasien, nmpasien, jk, alamat) values ('$idpasien', '$nmpasien', '$jk', '$alamat')");

    header('location:halaman_admin.php');
}

if (isset($_GET['idpasien'])) {
    $idpasien = $_GET['idpasien'];
    $koneksi->query("DELETE FROM pasien WHERE idpasien = '$idpasien'");
    header('location:halaman_admin.php');
}

if (isset($_POST['edit'])) {
    $idPasien = $_POST['idpasien'];
    $nmPasien = $_POST['nmpasien'];
    $jk = $_POST['jk'];
    $alamat = $_POST['alamat'];

    $koneksi->query("UPDATE pasien SET idpasien='$idpasien', nmpasien='$nmpasien', jk='$jk', alamat='$alamat'");
    header("location:halaman_admin.php");
}
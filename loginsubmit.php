<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<?php
// menjalankan session
session_start();

$username = $_POST['username'];
$password = $_POST['password'];

mysql_connect("namahost", "dbuser", "dbpass");
mysql_select_db("dbname");

// mencari password terenkripsi berdasarkan username
$query = "SELECT * FROM user WHERE username = '$username'";
$hasil = mysql_query($query) or die("Error");
$data  = mysql_fetch_array($hasil);

$pengacak  = "NDJS3289JSKS190JISJI";

// cek kesesuaian password terenkripsi dari form login
// dengan password terenkripsi dari database
if (md5($pengacak.md5($password).$pengacak) == $data['password'])
{
    // jika sesuai, maka buat session untuk username
    $_SESSION['username'] = $username;

	// menampilkan menu ke halaman akses
	echo "<h2>Login sukses</h2>";
	
}
else echo "<h2>Login Gagal</h2>";

?>

<body>
</body>
</html>
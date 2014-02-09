<?php
session_start();
if(!isset($_SESSION['username'])) {
header('location:login.php'); }
else { $username = $_SESSION['username']; }
require_once("Connections/koneksi.php");

$query = mysql_query("SELECT * FROM user WHERE username = '$username'");
$hasil = mysql_fetch_array($query);
?>
<html>
<head>
<title>Halaman Sukses Login</title>
</head>
<body>
<center>
<?php
echo "<h2>Selamat Datang, $username </h2>";
?>
<a href="logout.php"><b>Logout</a>
</center>
</body>
</html>
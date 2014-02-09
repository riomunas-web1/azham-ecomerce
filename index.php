<?php
session_start();

if(!isset($_SESSION['username'])){
    //jika session belum di set/register
    die("Anda belum register kan session");
}

//jika sudah register kita lanjut
?>
<h2>Selamat Datang</h2>

<?php
echo $_SESSION['username'];
?>
<html>
<head>
<title>Halaman Sukses Login</title>
</head>
<body>
<center>

<a href="logout.php"><b>Logout</a>
</center>
</body>
</html>
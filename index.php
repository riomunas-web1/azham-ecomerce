<?php
session_start();

if (!isset($_SESSION['user_sid'])) {
    //jika session belum di set/register
    header("Location: input_form_login.php");
    // die("Anda belum register kan session");
}

//jika sudah register kita lanjut
?>

<html>
    <h2>Selamat Datang</h2>

    <?php echo $_SESSION['username']; ?>

    <head>
        <title>Home </title>
    </head>
    <body>
    <center>
            <a href="logout.php"><b>Logout</a>
    </center>
</body>
</html>
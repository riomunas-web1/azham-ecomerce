<?php
session_start();
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
        <?php if (isset($_SESSION['user_sid'])) :?>
            <a href="logout.php"><b>Logout</a>
        <?php endif; ?>
    </center>
</body>
</html>
    <?php
    session_start();
    include "koneksi.php";
    error_reporting(0);

    if (empty($_SESSION['username']) AND empty($_SESSION['password'])){include "input_form_login.php";}
    else{
    ?>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <title>Login</title>
    </head>
    <body>

    <?php
    $sql = mysql_query("SELECT * FROM register WHERE username = '$_SESSION[username]', '$_SESSION[password]'");
    while ($data = mysql_fetch_array($sql))
    {
     $username = $data['username'];
    }
    ?>
    <h2>Selamat Datang <?php echo "$username"; ?>!</h2>
       </body>
    </html>
    <?php } ?>
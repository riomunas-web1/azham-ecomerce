<?php require_once('Connections/koneksi.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {
  $insertSQL = sprintf("INSERT INTO register (username, email, password, `confirm password`, alamat, no_telpon, keterangan) VALUES (%s, %s, %s, %s, %s, %s, %s)",
                       GetSQLValueString($_POST['username'], "text"),
                       GetSQLValueString($_POST['email'], "text"),
                       GetSQLValueString($_POST['password'], "text"),
                       GetSQLValueString($_POST['confirm_password'], "text"),
                       GetSQLValueString($_POST['alamat'], "text"),
                       GetSQLValueString($_POST['no_telpon'], "text"),
                       GetSQLValueString($_POST['keterangan'], "text"));

  mysql_select_db($database_koneksi, $koneksi);
  $Result1 = mysql_query($insertSQL, $koneksi) or die(mysql_error());
  
  $username = addslashes(strip_tags ($_POST['username']));
$password = addslashes(strip_tags ($_POST['password']));
$confirm = addslashes(strip_tags ($_POST['confirm_password']));
//script ini untuk mengecek apakah form sudah terisi semua
if ($username&&$password&&$confirm) {
//berfunsgi untuk mengecek form tidak boleh lebih dari 10
 if (strlen($username)> 10){
 echo "username tidak boleh lebih dari 10 karakter";
 }
 else {
//password harus 6-25 karakter
 if (strlen($password)> 8 || strlen($confirm)<6){
 echo "Password harus antara 6-8 karakter";
 }
 else {
//untuk mengecek apakah form password dan form konfirmasi password sudah sama
 if ($password == $confirm){
 $sql_get = mysql_query ("SELECT * FROM users WHERE username = '$username'");
 $num_row = mysql_num_rows($sql_get);
//fungsi script ini adalah untuk mengecek ketersediaan username, jika tidak tersedia maka program akan berjalan
 if ($num_row ==0) {
 $password = md5($password);
 $confirm = md5($confirm);
 $sql_insert = mysql_query("INSERT INTO users VALUES ('','$username','$password','$confirm_password')");
 echo "Pendaftaran berhasil. Login <a href='koneksi.php'>disini</a>";
 }
 else {
 echo "Username sudah terdaftar";
 }
 }
 else {
 echo "Password yang kamu masukan tidak sama!";
 
}
 
}
 
}
 
}
 
else {
 echo "Tolong penuhi form pendaftaran!";
 }


  $insertGoTo = "form_register.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}
?>

<form method="post" name="form1" action="<?php echo $editFormAction; ?>">
  <table align="center">
    <tr valign="baseline">
      <td nowrap align="right">Username:</td>
      <td><input type="text" name="username" value="" size="32"></td>
    </tr>
    <tr valign="baseline">
      <td nowrap align="right">Email:</td>
      <td><input type="text" name="email" value="" size="32"></td>
    </tr>
    <tr valign="baseline">
      <td nowrap align="right">Password:</td>
      <td><input type="password" name="password" value="" size="32"></td>
    </tr>
    <tr valign="baseline">
      <td nowrap align="right">Confirm password:</td>
      <td><input type="password" name="confirm_password" value="" size="32"></td>
    </tr>
    <tr valign="baseline">
      <td nowrap align="right" valign="top">Alamat:</td>
      <td><textarea name="alamat" cols="50" rows="5"></textarea></td>
    </tr>
    <tr valign="baseline">
      <td nowrap align="right">No_telpon:</td>
      <td><input type="text" name="no_telpon" value="+62" size="32"></td>
    </tr>
    <tr valign="baseline">
      <td nowrap align="right" valign="top">Keterangan:</td>
      <td><textarea name="keterangan" cols="50" rows="5"></textarea></td>
    </tr>
    <tr valign="baseline">
      <td nowrap align="right">&nbsp;</td>
      <td><input name="Submit" type="submit" value="Kirim">
      <input name="Submit2" type="reset" value="Batal"></td>
    </tr>
  </table>
  <input type="hidden" name="MM_insert" value="form1">
</form>
<p>&nbsp;</p>

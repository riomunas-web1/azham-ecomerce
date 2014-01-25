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
  $insertSQL = sprintf("INSERT INTO login (username, password) VALUES (%s, %s)",
                       GetSQLValueString($_POST['username'], "text"),
                       GetSQLValueString($_POST['password'], "text"));
					   
 $username = addslashes(strip_tags ($_POST['username']));
$password = addslashes(strip_tags ($_POST['password']));

//script ini untuk mengecek apakah form sudah terisi semua
if ($username&&$password) {
//berfunsgi untuk mengecek form tidak boleh lebih dari 10
 if (strlen($username)> 8){
 echo "username tidak boleh lebih dari 8 karakter";
 }
 else {
//password harus 6-25 karakter
 if (strlen($password)> 8 || strlen($confirm)<6){
 echo "Password harus antara 6-8 karakter";
 }
 else {
//untuk mengecek apakah form password dan form konfirmasi password sudah sama
 
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


  mysql_select_db($database_koneksi, $koneksi);
  $Result1 = mysql_query($insertSQL, $koneksi) or die(mysql_error());

  $insertGoTo = "form_login.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1">
  <table align="center">
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Username:</td>
      <td><input type="text" name="username" value="" maxlength="8" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Password:</td>
      <td><input type="password" name="password" value="" maxlength="11" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">&nbsp;</td>
      <td><input name="Submit" type="submit" value="masuk" />
      <input name="Submit2" type="reset" value="batal" /></td>
    </tr>
  </table>
  <p align="center"><a href="input_form_register.php">Register</a> if you don't have an account.</p>
  <p align="center"><a href="input_form_forget_password.php">Recover</a> your password if you don't remember it. </p>
  <p>
    <input type="hidden" name="MM_insert" value="form1" />
  </p>
</form>
<p>&nbsp;</p>
</body>
</html>
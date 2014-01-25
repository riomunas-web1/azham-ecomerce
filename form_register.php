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

$maxRows_register = 10;
$pageNum_register = 0;
if (isset($_GET['pageNum_register'])) {
  $pageNum_register = $_GET['pageNum_register'];
}
$startRow_register = $pageNum_register * $maxRows_register;

mysql_select_db($database_koneksi, $koneksi);
$query_register = "SELECT * FROM register";
$query_limit_register = sprintf("%s LIMIT %d, %d", $query_register, $startRow_register, $maxRows_register);
$register = mysql_query($query_limit_register, $koneksi) or die(mysql_error());
$row_register = mysql_fetch_assoc($register);

if (isset($_GET['totalRows_register'])) {
  $totalRows_register = $_GET['totalRows_register'];
} else {
  $all_register = mysql_query($query_register);
  $totalRows_register = mysql_num_rows($all_register);
}
$totalPages_register = ceil($totalRows_register/$maxRows_register)-1;
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table border="1">
  <tr>
    <td>username</td>
    <td>email</td>
    <td>password</td>
    <td>confirm password</td>
    <td>alamat</td>
    <td>no_telpon</td>
    <td>keterangan</td>
  </tr>
  <?php do { ?>
    <tr>
      <td><?php echo $row_register['username']; ?></td>
      <td><?php echo $row_register['email']; ?></td>
      <td><?php echo $row_register['password']; ?></td>
      <td><?php echo $row_register['confirm password']; ?></td>
      <td><?php echo $row_register['alamat']; ?></td>
      <td><?php echo $row_register['no_telpon']; ?></td>
      <td><?php echo $row_register['keterangan']; ?></td>
    </tr>
    <?php } while ($row_register = mysql_fetch_assoc($register)); ?>
</table>
</body>
</html>
<?php
mysql_free_result($register);
?>

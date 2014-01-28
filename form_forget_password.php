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

$maxRows_forget_password = 10;
$pageNum_forget_password = 0;
if (isset($_GET['pageNum_forget_password'])) {
  $pageNum_forget_password = $_GET['pageNum_forget_password'];
}
$startRow_forget_password = $pageNum_forget_password * $maxRows_forget_password;

mysql_select_db($database_koneksi, $koneksi);
$query_forget_password = "SELECT * FROM forget_password";
$query_limit_forget_password = sprintf("%s LIMIT %d, %d", $query_forget_password, $startRow_forget_password, $maxRows_forget_password);
$forget_password = mysql_query($query_limit_forget_password, $koneksi) or die(mysql_error());
$row_forget_password = mysql_fetch_assoc($forget_password);

if (isset($_GET['totalRows_forget_password'])) {
  $totalRows_forget_password = $_GET['totalRows_forget_password'];
} else {
  $all_forget_password = mysql_query($query_forget_password);
  $totalRows_forget_password = mysql_num_rows($all_forget_password);
}
$totalPages_forget_password = ceil($totalRows_forget_password/$maxRows_forget_password)-1;
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
  	<td>sid</td>
    <td>username</td>
  </tr>
  <?php do { ?>
    <tr>
      <td><?php echo $row_forget_password['sid']; ?></td>
      <td><?php echo $row_forget_password['username']; ?></td>
    </tr>
    <?php } while ($row_forget_password = mysql_fetch_assoc($forget_password)); ?>
</table>
</body>
</html>
<?php
mysql_free_result($forget_password);
?>

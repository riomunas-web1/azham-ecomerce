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

$maxRows_admin = 10;
$pageNum_admin = 0;
if (isset($_GET['pageNum_admin'])) {
  $pageNum_admin = $_GET['pageNum_admin'];
}
$startRow_admin = $pageNum_admin * $maxRows_admin;

mysql_select_db($database_koneksi, $koneksi);
$query_admin = "SELECT * FROM `admin`";
$query_limit_admin = sprintf("%s LIMIT %d, %d", $query_admin, $startRow_admin, $maxRows_admin);
$admin = mysql_query($query_limit_admin, $koneksi) or die(mysql_error());
$row_admin = mysql_fetch_assoc($admin);

if (isset($_GET['totalRows_admin'])) {
  $totalRows_admin = $_GET['totalRows_admin'];
} else {
  $all_admin = mysql_query($query_admin);
  $totalRows_admin = mysql_num_rows($all_admin);
}
$totalPages_admin = ceil($totalRows_admin/$maxRows_admin)-1;
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
    <td>userid</td>
    <td>passid</td>
  </tr>
  <?php do { ?>
    <tr>
      <td><?php echo $row_admin['userid']; ?></td>
      <td><?php echo $row_admin['passid']; ?></td>
    </tr>
    <?php } while ($row_admin = mysql_fetch_assoc($admin)); ?>
</table>
</body>
</html>
<?php
mysql_free_result($admin);
?>

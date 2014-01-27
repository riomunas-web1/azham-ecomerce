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

$maxRows_barang_jenis = 10;
$pageNum_barang_jenis = 0;
if (isset($_GET['pageNum_barang_jenis'])) {
  $pageNum_barang_jenis = $_GET['pageNum_barang_jenis'];
}
$startRow_barang_jenis = $pageNum_barang_jenis * $maxRows_barang_jenis;

mysql_select_db($database_koneksi, $koneksi);
$query_barang_jenis = "SELECT * FROM barang_jenis";
$query_limit_barang_jenis = sprintf("%s LIMIT %d, %d", $query_barang_jenis, $startRow_barang_jenis, $maxRows_barang_jenis);
$barang_jenis = mysql_query($query_limit_barang_jenis, $koneksi) or die(mysql_error());
$row_barang_jenis = mysql_fetch_assoc($barang_jenis);

if (isset($_GET['totalRows_barang_jenis'])) {
  $totalRows_barang_jenis = $_GET['totalRows_barang_jenis'];
} else {
  $all_barang_jenis = mysql_query($query_barang_jenis);
  $totalRows_barang_jenis = mysql_num_rows($all_barang_jenis);
}
$totalPages_barang_jenis = ceil($totalRows_barang_jenis/$maxRows_barang_jenis)-1;
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
    <td>nama_jenis</td>
    <td>keterangan</td>
  </tr>
  <?php do { ?>
    <tr>
      <td><?php echo $row_barang_jenis['sid']; ?></td>
      <td><?php echo $row_barang_jenis['nama_jenis']; ?></td>
      <td><?php echo $row_barang_jenis['keterangan']; ?></td>
    </tr>
    <?php } while ($row_barang_jenis = mysql_fetch_assoc($barang_jenis)); ?>
</table>
</body>
</html>
<?php
mysql_free_result($barang_jenis);
?>

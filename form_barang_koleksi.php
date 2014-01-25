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

$maxRows_barang_koleksi = 10;
$pageNum_barang_koleksi = 0;
if (isset($_GET['pageNum_barang_koleksi'])) {
  $pageNum_barang_koleksi = $_GET['pageNum_barang_koleksi'];
}
$startRow_barang_koleksi = $pageNum_barang_koleksi * $maxRows_barang_koleksi;

mysql_select_db($database_koneksi, $koneksi);
$query_barang_koleksi = "SELECT * FROM barang_koleksi";
$query_limit_barang_koleksi = sprintf("%s LIMIT %d, %d", $query_barang_koleksi, $startRow_barang_koleksi, $maxRows_barang_koleksi);
$barang_koleksi = mysql_query($query_limit_barang_koleksi, $koneksi) or die(mysql_error());
$row_barang_koleksi = mysql_fetch_assoc($barang_koleksi);

if (isset($_GET['totalRows_barang_koleksi'])) {
  $totalRows_barang_koleksi = $_GET['totalRows_barang_koleksi'];
} else {
  $all_barang_koleksi = mysql_query($query_barang_koleksi);
  $totalRows_barang_koleksi = mysql_num_rows($all_barang_koleksi);
}
$totalPages_barang_koleksi = ceil($totalRows_barang_koleksi/$maxRows_barang_koleksi)-1;
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
    <td>id_koleksi</td>
    <td>nama_barang</td>
    <td>harga</td>
    <td>diskon</td>
    <td>stock</td>
    <td>tipe</td>
    <td>gambar</td>
  </tr>
  <?php do { ?>
    <tr>
      <td><?php echo $row_barang_koleksi['id_koleksi']; ?></td>
      <td><?php echo $row_barang_koleksi['nama_barang']; ?></td>
      <td><?php echo $row_barang_koleksi['harga']; ?></td>
      <td><?php echo $row_barang_koleksi['diskon']; ?></td>
      <td><?php echo $row_barang_koleksi['stock']; ?></td>
      <td><?php echo $row_barang_koleksi['tipe']; ?></td>
      <td><?php echo $row_barang_koleksi['gambar']; ?></td>
    </tr>
    <?php } while ($row_barang_koleksi = mysql_fetch_assoc($barang_koleksi)); ?>
</table>
</body>
</html>
<?php
mysql_free_result($barang_koleksi);
?>

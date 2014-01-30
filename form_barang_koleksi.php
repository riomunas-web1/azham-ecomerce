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

mysql_select_db($database_koneksi, $koneksi);
$query_barang_kolek = "SELECT * FROM barang_koleksi";
$barang_kolek = mysql_query($query_barang_kolek, $koneksi) or die(mysql_error());
$row_barang_kolek = mysql_fetch_assoc($barang_kolek);
$totalRows_barang_kolek = mysql_num_rows($barang_kolek);
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
    <td>nama_barang</td>
    <td>status</td>
    <td>harga</td>
    <td>diskon</td>
    <td>stock</td>
    <td>tipe</td>
    <td>gambar</td>
  </tr>
  <?php do { ?>
    <tr>
      <td><?php echo $row_barang_kolek['sid']; ?></td>
      <td><?php echo $row_barang_kolek['nama_barang']; ?></td>
      <td><?php echo $row_barang_kolek['status']; ?></td>
      <td><?php echo $row_barang_kolek['harga']; ?></td>
      <td><?php echo $row_barang_kolek['diskon']; ?></td>
      <td><?php echo $row_barang_kolek['stock']; ?></td>
      <td><?php echo $row_barang_kolek['tipe']; ?></td>
      <td><?php echo $row_barang_kolek['gambar']; ?></td>
    </tr>
    <?php } while ($row_barang_kolek = mysql_fetch_assoc($barang_kolek)); ?>
</table>
</body>
</html>
<?php
mysql_free_result($barang_kolek);
?>

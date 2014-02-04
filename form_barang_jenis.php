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
$query_barang_jenis = "SELECT * FROM barang_jenis";
$barang_jenis = mysql_query($query_barang_jenis, $koneksi) or die(mysql_error());
$row_barang_jenis = mysql_fetch_assoc($barang_jenis);
$totalRows_barang_jenis = mysql_num_rows($barang_jenis);
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

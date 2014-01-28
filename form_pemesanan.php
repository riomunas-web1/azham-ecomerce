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

$maxRows_form_pemesanan = 10;
$pageNum_form_pemesanan = 0;
if (isset($_GET['pageNum_form_pemesanan'])) {
  $pageNum_form_pemesanan = $_GET['pageNum_form_pemesanan'];
}
$startRow_form_pemesanan = $pageNum_form_pemesanan * $maxRows_form_pemesanan;

mysql_select_db($database_koneksi, $koneksi);
$query_form_pemesanan = "SELECT * FROM pemesanan";
$query_limit_form_pemesanan = sprintf("%s LIMIT %d, %d", $query_form_pemesanan, $startRow_form_pemesanan, $maxRows_form_pemesanan);
$form_pemesanan = mysql_query($query_limit_form_pemesanan, $koneksi) or die(mysql_error());
$row_form_pemesanan = mysql_fetch_assoc($form_pemesanan);

if (isset($_GET['totalRows_form_pemesanan'])) {
  $totalRows_form_pemesanan = $_GET['totalRows_form_pemesanan'];
} else {
  $all_form_pemesanan = mysql_query($query_form_pemesanan);
  $totalRows_form_pemesanan = mysql_num_rows($all_form_pemesanan);
}
$totalPages_form_pemesanan = ceil($totalRows_form_pemesanan/$maxRows_form_pemesanan)-1;
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
    <td>tanggal</td>
    <td>jam</td>
    <td>status_bayar</td>
    <td>total_harga</td>
    <td>biaya_kirim</td>
    <td>total_pembayaran</td>
    <td>status_kirim</td>
  </tr>
  <?php do { ?>
    <tr>
      <td><?php echo $row_form_pemesanan['sid']; ?></td>
      <td><?php echo $row_form_pemesanan['tanggal']; ?></td>
      <td><?php echo $row_form_pemesanan['jam']; ?></td>
      <td><?php echo $row_form_pemesanan['status_bayar']; ?></td>
      <td><?php echo $row_form_pemesanan['total_harga']; ?></td>
      <td><?php echo $row_form_pemesanan['biaya_kirim']; ?></td>
      <td><?php echo $row_form_pemesanan['total_pembayaran']; ?></td>
      <td><?php echo $row_form_pemesanan['status_kirim']; ?></td>
    </tr>
    <?php } while ($row_form_pemesanan = mysql_fetch_assoc($form_pemesanan)); ?>
</table>
<p><a href="input_pemesanan.php">kembali</a></p>
</body>
</html>
<?php
mysql_free_result($form_pemesanan);
?>

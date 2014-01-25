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

$maxRows_form_pelanggan = 10;
$pageNum_form_pelanggan = 0;
if (isset($_GET['pageNum_form_pelanggan'])) {
  $pageNum_form_pelanggan = $_GET['pageNum_form_pelanggan'];
}
$startRow_form_pelanggan = $pageNum_form_pelanggan * $maxRows_form_pelanggan;

mysql_select_db($database_koneksi, $koneksi);
$query_form_pelanggan = "SELECT * FROM pelanggan";
$query_limit_form_pelanggan = sprintf("%s LIMIT %d, %d", $query_form_pelanggan, $startRow_form_pelanggan, $maxRows_form_pelanggan);
$form_pelanggan = mysql_query($query_limit_form_pelanggan, $koneksi) or die(mysql_error());
$row_form_pelanggan = mysql_fetch_assoc($form_pelanggan);

if (isset($_GET['totalRows_form_pelanggan'])) {
  $totalRows_form_pelanggan = $_GET['totalRows_form_pelanggan'];
} else {
  $all_form_pelanggan = mysql_query($query_form_pelanggan);
  $totalRows_form_pelanggan = mysql_num_rows($all_form_pelanggan);
}
$totalPages_form_pelanggan = ceil($totalRows_form_pelanggan/$maxRows_form_pelanggan)-1;
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
    <td>id_pelanggan</td>
    <td>nama_pelanggan</td>
    <td>jenis_kelamin</td>
    <td>alamat</td>
    <td>kota</td>
    <td>kode_pos</td>
    <td>email</td>
    <td>no_telpon</td>
  </tr>
  <?php do { ?>
    <tr>
      <td><?php echo $row_form_pelanggan['id_pelanggan']; ?></td>
      <td><?php echo $row_form_pelanggan['nama_pelanggan']; ?></td>
      <td><?php echo $row_form_pelanggan['jenis_kelamin']; ?></td>
      <td><?php echo $row_form_pelanggan['alamat']; ?></td>
      <td><?php echo $row_form_pelanggan['kota']; ?></td>
      <td><?php echo $row_form_pelanggan['kode_pos']; ?></td>
      <td><?php echo $row_form_pelanggan['email']; ?></td>
      <td><?php echo $row_form_pelanggan['no_telpon']; ?></td>
    </tr>
    <?php } while ($row_form_pelanggan = mysql_fetch_assoc($form_pelanggan)); ?>
</table>
</body>
</html>
<?php
mysql_free_result($form_pelanggan);
?>

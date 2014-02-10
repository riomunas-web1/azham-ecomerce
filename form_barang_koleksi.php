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

$currentPage = $_SERVER["PHP_SELF"];

$maxRows_form_barang_koleksi = 1;
$pageNum_form_barang_koleksi = 0;
if (isset($_GET['pageNum_form_barang_koleksi'])) {
  $pageNum_form_barang_koleksi = $_GET['pageNum_form_barang_koleksi'];
}
$startRow_form_barang_koleksi = $pageNum_form_barang_koleksi * $maxRows_form_barang_koleksi;

mysql_select_db($database_koneksi, $koneksi);
$query_form_barang_koleksi = "SELECT * FROM barang_koleksi";
$query_limit_form_barang_koleksi = sprintf("%s LIMIT %d, %d", $query_form_barang_koleksi, $startRow_form_barang_koleksi, $maxRows_form_barang_koleksi);
$form_barang_koleksi = mysql_query($query_limit_form_barang_koleksi, $koneksi) or die(mysql_error());
$row_form_barang_koleksi = mysql_fetch_assoc($form_barang_koleksi);

if (isset($_GET['totalRows_form_barang_koleksi'])) {
  $totalRows_form_barang_koleksi = $_GET['totalRows_form_barang_koleksi'];
} else {
  $all_form_barang_koleksi = mysql_query($query_form_barang_koleksi);
  $totalRows_form_barang_koleksi = mysql_num_rows($all_form_barang_koleksi);
}
$totalPages_form_barang_koleksi = ceil($totalRows_form_barang_koleksi/$maxRows_form_barang_koleksi)-1;

$queryString_form_barang_koleksi = "";
if (!empty($_SERVER['QUERY_STRING'])) {
  $params = explode("&", $_SERVER['QUERY_STRING']);
  $newParams = array();
  foreach ($params as $param) {
    if (stristr($param, "pageNum_form_barang_koleksi") == false && 
        stristr($param, "totalRows_form_barang_koleksi") == false) {
      array_push($newParams, $param);
    }
  }
  if (count($newParams) != 0) {
    $queryString_form_barang_koleksi = "&" . htmlentities(implode("&", $newParams));
  }
}
$queryString_form_barang_koleksi = sprintf("&totalRows_form_barang_koleksi=%d%s", $totalRows_form_barang_koleksi, $queryString_form_barang_koleksi);

session_start();

$_SESSION['nama'] = 'rio berliandinata munas';

mysql_select_db($database_koneksi, $koneksi);
$query_barang_koleks = "
    SELECT 
        barang_koleksi.sid sid,
        nama_barang,
        harga,
        stock,
        nama_jenis,
        gambar
    FROM barang_koleksi
    LEFT JOIN barang_jenis ON barang_koleksi.barang_jenis = barang_jenis.sid
";
$barang_koleks = mysql_query($query_barang_koleks, $koneksi) or die(mysql_error());
$row_barang_koleks = mysql_fetch_assoc($barang_koleks);
$totalRows_barang_koleks = mysql_num_rows($barang_koleks);
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
    <td>harga</td>
    <td>stock</td>
    <td>tipe</td>
    <td>gambar</td>
  </tr>
  <?php do { ?>
    <tr>
      <td><?php echo $row_barang_koleks['sid']; ?></td>
      <td><?php echo $row_barang_koleks['nama_barang']; ?></td>
      <td><?php echo $row_barang_koleks['harga']; ?></td>
      <td><?php echo $row_barang_koleks['stock']; ?></td>
      <td><?php echo $row_barang_koleks['nama_jenis']; ?></td>
      <td><?php echo $row_barang_koleks['gambar']; ?></td>
    </tr>
    <?php } while ($row_barang_koleks = mysql_fetch_assoc($barang_koleks)); ?>
</table>
<table border="0">
  <tr>
    <td><?php if ($pageNum_form_barang_koleksi > 0) { // Show if not first page ?>
        <a href="<?php printf("%s?pageNum_form_barang_koleksi=%d%s", $currentPage, 0, $queryString_form_barang_koleksi); ?>">First</a>
        <?php } // Show if not first page ?></td>
    <td><?php if ($pageNum_form_barang_koleksi > 0) { // Show if not first page ?>
        <a href="<?php printf("%s?pageNum_form_barang_koleksi=%d%s", $currentPage, max(0, $pageNum_form_barang_koleksi - 1), $queryString_form_barang_koleksi); ?>">Previous</a>
        <?php } // Show if not first page ?></td>
    <td><?php if ($pageNum_form_barang_koleksi < $totalPages_form_barang_koleksi) { // Show if not last page ?>
        <a href="<?php printf("%s?pageNum_form_barang_koleksi=%d%s", $currentPage, min($totalPages_form_barang_koleksi, $pageNum_form_barang_koleksi + 1), $queryString_form_barang_koleksi); ?>">Next</a>
        <?php } // Show if not last page ?></td>
    <td><?php if ($pageNum_form_barang_koleksi < $totalPages_form_barang_koleksi) { // Show if not last page ?>
        <a href="<?php printf("%s?pageNum_form_barang_koleksi=%d%s", $currentPage, $totalPages_form_barang_koleksi, $queryString_form_barang_koleksi); ?>">Last</a>
        <?php } // Show if not last page ?></td>
  </tr>
</table>
</body>
</html>
<?php
mysql_free_result($form_barang_koleksi);

mysql_free_result($barang_koleks);
?>

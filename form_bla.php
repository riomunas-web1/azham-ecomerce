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

$maxRows_form_bla = 10;
$pageNum_form_bla = 0;
if (isset($_GET['pageNum_form_bla'])) {
  $pageNum_form_bla = $_GET['pageNum_form_bla'];
}
$startRow_form_bla = $pageNum_form_bla * $maxRows_form_bla;

mysql_select_db($database_koneksi, $koneksi);
$query_form_bla = "SELECT * FROM `input`";
$query_limit_form_bla = sprintf("%s LIMIT %d, %d", $query_form_bla, $startRow_form_bla, $maxRows_form_bla);
$form_bla = mysql_query($query_limit_form_bla, $koneksi) or die(mysql_error());
$row_form_bla = mysql_fetch_assoc($form_bla);

if (isset($_GET['totalRows_form_bla'])) {
  $totalRows_form_bla = $_GET['totalRows_form_bla'];
} else {
  $all_form_bla = mysql_query($query_form_bla);
  $totalRows_form_bla = mysql_num_rows($all_form_bla);
}
$totalPages_form_bla = ceil($totalRows_form_bla/$maxRows_form_bla)-1;
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
    <td>game</td>
    <td>keterangan</td>
  </tr>
  <?php do { ?>
    <tr>
      <td><?php echo $row_form_bla['game']; ?></td>
      <td><?php echo $row_form_bla['keterangan']; ?></td>
    </tr>
    <?php } while ($row_form_bla = mysql_fetch_assoc($form_bla)); ?>
</table>
</body>
</html>
<?php
mysql_free_result($form_bla);
?>

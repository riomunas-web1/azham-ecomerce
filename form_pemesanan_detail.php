<?php require_once('Connections/koneksi.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {

    function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") {
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

$maxRows_pemesanan_detail = 10;
$pageNum_pemesanan_detail = 0;
if (isset($_GET['pageNum_pemesanan_detail'])) {
    $pageNum_pemesanan_detail = $_GET['pageNum_pemesanan_detail'];
}
$startRow_pemesanan_detail = $pageNum_pemesanan_detail * $maxRows_pemesanan_detail;

mysql_select_db($database_koneksi, $koneksi);
$query_pemesanan_detail = "SELECT * FROM pemesanan_detail";
$query_limit_pemesanan_detail = sprintf("%s LIMIT %d, %d", $query_pemesanan_detail, $startRow_pemesanan_detail, $maxRows_pemesanan_detail);
$pemesanan_detail = mysql_query($query_limit_pemesanan_detail, $koneksi) or die(mysql_error());
$row_pemesanan_detail = mysql_fetch_assoc($pemesanan_detail);

if (isset($_GET['totalRows_pemesanan_detail'])) {
    $totalRows_pemesanan_detail = $_GET['totalRows_pemesanan_detail'];
} else {
    $all_pemesanan_detail = mysql_query($query_pemesanan_detail);
    $totalRows_pemesanan_detail = mysql_num_rows($all_pemesanan_detail);
}
$totalPages_pemesanan_detail = ceil($totalRows_pemesanan_detail / $maxRows_pemesanan_detail) - 1;
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
                <td></td>
                <td>kode_barang</td>
                <td>nama_barang</td>
                <td>quantity</td>
                <td>harga</td>
            </tr>
<?php do { ?>
                <tr>
                    <td><?php echo $row_pemesanan_detail['nama_barang']; ?></td>
                    <td><?php echo $row_pemesanan_detail['pemesanan']; ?></td>
                    <td><?php echo $row_pemesanan_detail['jumlah']; ?></td>
                    <td><?php echo $row_pemesanan_detail['harga']; ?></td>
                </tr>
<?php } while ($row_pemesanan_detail = mysql_fetch_assoc($pemesanan_detail)); ?>
        </table>
        <p>&nbsp;</p>
    </body>
</html>
<?php
mysql_free_result($pemesanan_detail);
?>

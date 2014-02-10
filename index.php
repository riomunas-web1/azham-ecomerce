<?php require_once('Connections/koneksi.php'); ?>
<?php
session_start();
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

$currentPage = $_SERVER["PHP_SELF"];

$maxRows_form_barang_koleksi = 10;
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
$totalPages_form_barang_koleksi = ceil($totalRows_form_barang_koleksi / $maxRows_form_barang_koleksi) - 1;

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

//session_start();
//
//if (!isset($_SESSION['user_sid'])) {
//    //jika session belum di set/register
//    header("Location: input_form_login.php");
//    // die("Anda belum register kan session");
//}
//jika sudah register kita lanjut
?>

<html>
    <h2>Selamat Datang</h2>

    <head>
        <title>Home </title>
    </head>
    <body>
    <center>
        <form action="" method="POST">
            <table border="1">
                <tr>
                    <td>Item</td>
                    <td>harga</td>
                    <td>stock</td>
                    <td>gambar</td>
                    <!--<td style="text-align: center">Beli</td>-->
                </tr>
                <?php do { ?>
                    <tr>
                        <td>
                            <?php
                            $nama_barang = $row_form_barang_koleksi['nama_barang'];
                            $sid = $row_form_barang_koleksi['sid'];
                            ?>

                            <a href="trx_konfirmasi_beli.php?sid=<?php echo $sid ?>"><?php echo $nama_barang ?></a>
                        </td>
                        <td><?php echo $row_form_barang_koleksi['harga']; ?></td>
                        <td><?php echo $row_form_barang_koleksi['stock']; ?></td>
                        <td>
                            <?php
                            $path = $row_form_barang_koleksi['gambar'];
                            if (strlen($path) == 0) {
                                echo 'no-image';
                            }
                            ?>
                        </td>
                    </tr>
                <?php } while ($row_form_barang_koleksi = mysql_fetch_assoc($form_barang_koleksi)); ?>
            </table>
        </form>
        <table border="0">
            <tr>
                <td><?php if ($pageNum_form_barang_koleksi > 0) { // Show if not first page     ?>
                        <a href="<?php printf("%s?pageNum_form_barang_koleksi=%d%s", $currentPage, 0, $queryString_form_barang_koleksi); ?>">First</a>
                    <?php } // Show if not first page   ?></td>
                <td><?php if ($pageNum_form_barang_koleksi > 0) { // Show if not first page   ?>
                        <a href="<?php printf("%s?pageNum_form_barang_koleksi=%d%s", $currentPage, max(0, $pageNum_form_barang_koleksi - 1), $queryString_form_barang_koleksi); ?>">Previous</a>
                    <?php } // Show if not first page   ?></td>
                <td><?php if ($pageNum_form_barang_koleksi < $totalPages_form_barang_koleksi) { // Show if not last page   ?>
                        <a href="<?php printf("%s?pageNum_form_barang_koleksi=%d%s", $currentPage, min($totalPages_form_barang_koleksi, $pageNum_form_barang_koleksi + 1), $queryString_form_barang_koleksi); ?>">Next</a>
                    <?php } // Show if not last page   ?></td>
                <td><?php if ($pageNum_form_barang_koleksi < $totalPages_form_barang_koleksi) { // Show if not last page   ?>
                        <a href="<?php printf("%s?pageNum_form_barang_koleksi=%d%s", $currentPage, $totalPages_form_barang_koleksi, $queryString_form_barang_koleksi); ?>">Last</a>
                    <?php } // Show if not last page   ?></td>
            </tr>
        </table>
    </center>
    
    <hr/>
    <?php 
    print_r($_SESSION);
    ?>
</body>
</html>
<?php
mysql_free_result($form_barang_koleksi);
?>

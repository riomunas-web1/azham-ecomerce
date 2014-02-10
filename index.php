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


if (isset($_GET['cat']) && $_GET['cat'] != 0) {
    $cat = $_GET['cat'];
    $_SESSION['cat'] = $cat;
} else {
    unset($_SESSION['cat']);
//    if (isset($_SESSION['cat'])) {
//        $cat = $_SESSION['cat'];
//    } else {
    $cat = "0";
//    }
}

$maxRows_form_barang_koleksi = 10;
$pageNum_form_barang_koleksi = 0;
if (isset($_GET['pageNum_form_barang_koleksi'])) {
    $pageNum_form_barang_koleksi = $_GET['pageNum_form_barang_koleksi'];
}
$startRow_form_barang_koleksi = $pageNum_form_barang_koleksi * $maxRows_form_barang_koleksi;

mysql_select_db($database_koneksi, $koneksi);

$filter = isset($_SESSION['cat'])?sprintf("where barang_jenis = '%s'", $_SESSION["cat"]):'';
$query_form_barang_koleksi = sprintf("SELECT * FROM barang_koleksi %s", $filter);
$barang_jenis = "";

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
                stristr($param, "totalRows_form_barang_koleksi") == false &&
                stristr($param, "cat") == false) {
            array_push($newParams, $param);
        }
    }
    if (count($newParams) != 0) {
        $queryString_form_barang_koleksi = "&" . htmlentities(implode("&", $newParams));
    }
}

$queryString_form_barang_koleksi = sprintf("&stotalRows_form_barang_koleksi=%d%s", $totalRows_form_barang_koleksi, $queryString_form_barang_koleksi);
?>

<html>

    <head>
        <title>Home </title>
    </head>
    <body>
        <h2><a href="index.php"> Selamat Datang</a></h2>
        [ 
        <?php
        mysql_select_db($database_koneksi, $koneksi);
        $query = sprintf("select * FROM barang_jenis");
        $result = mysql_query($query);

        while ($data = mysql_fetch_assoc($result)) {
            ?>
            <a href="<?php printf("%s?cat=%s%s", $currentPage, $data['sid'], $queryString_form_barang_koleksi); ?>"><?php echo $data['nama_jenis'] ?></a>
            <?php
        }
        ?>
<!--            <a href="<?php printf("%s?cat=%s%s", $currentPage, 'all', $queryString_form_barang_koleksi); ?>">All</a>-->
        ]

        [ <a href="trx_pembayaran.php">Pembayaran</a> ]



        <hr/>
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
                <td><?php if ($pageNum_form_barang_koleksi > 0) { // Show if not first page          ?>
                        <a href="<?php printf("%s?cat=%s&pageNum_form_barang_koleksi=%d%s", $currentPage, $cat, 0, $queryString_form_barang_koleksi); ?>">First</a>
                    <?php } // Show if not first page    ?></td>
                <td><?php if ($pageNum_form_barang_koleksi > 0) { // Show if not first page        ?>
                        <a href="<?php printf("%s?cat=%s&pageNum_form_barang_koleksi=%d%s", $currentPage, $cat, max(0, $pageNum_form_barang_koleksi - 1), $queryString_form_barang_koleksi); ?>">Previous</a>
                    <?php } // Show if not first page    ?></td>
                <td><?php if ($pageNum_form_barang_koleksi < $totalPages_form_barang_koleksi) { // Show if not last page        ?>
                        <a href="<?php printf("%s?cat=%s&pageNum_form_barang_koleksi=%d%s", $currentPage, $cat, min($totalPages_form_barang_koleksi, $pageNum_form_barang_koleksi + 1), $queryString_form_barang_koleksi); ?>">Next</a>
                    <?php } // Show if not last page    ?></td>
                <td><?php if ($pageNum_form_barang_koleksi < $totalPages_form_barang_koleksi) { // Show if not last page        ?>
                        <a href="<?php printf("%s?cat=%s&pageNum_form_barang_koleksi=%d%s", $currentPage, $cat, $totalPages_form_barang_koleksi, $queryString_form_barang_koleksi); ?>">Last</a>
                    <?php } // Show if not last page    ?></td>
            </tr>
        </table>
        

<a href="index.php/?jenis=jenis_1">Computer</a>

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

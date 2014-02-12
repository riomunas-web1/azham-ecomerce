<?php
require_once('Connections/koneksi.php');
session_start();

if (!isset($_GET['caller'])) {
    if (isset($_SESSION['caller'])) {
        unset($_SESSION['caller']);
    }
} else {
    $_SESSION['caller'] = $_GET['caller'];
}

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
if (isset($_GET['sid'])) {
    //ambil data detail dari database
    mysql_select_db($database_koneksi, $koneksi);
    $query = sprintf("select * from barang_koleksi where sid = %s", GetSQLValueString($_GET['sid'], "text"));
    $result = mysql_query($query);
    $barang_koleksi = mysql_fetch_object($result);

    $sid = $barang_koleksi->sid;
    $nama_barang = $barang_koleksi->nama_barang;
    $harga = $barang_koleksi->harga;
} else {
    header("Location:index.php");
}
?>

<?php
//qty yang sudah ada di sesssion
if (!isset($_SESSION['keranjang'])) {
    $_SESSION['keranjang'] = array();
}

//cek apakah sid sudah ada di session
//kalau sudah ada update qty yang ada
$is_id_exist = false;
$exist_qty = 0;
foreach ($_SESSION['keranjang'] as $keranjang => $item) {
    if ($sid == $item['sid']) {
        $exist_qty = $item['qty'];
        $is_id_exist = true;
        break;
    }
}

if (isset($_POST['qty'])) {
    $qty = $_POST['qty'];
    if ($qty > 0) {
        if (!isset($_SESSION['keranjang'])) {
            $_SESSION['keranjang'] = array();
        }

        //cek apakah sid sudah ada di session
        //kalau sudah ada update qty yang ada
        $is_id_exist = false;
        foreach ($_SESSION['keranjang'] as $keranjang => &$item) {
            if ($sid == $item['sid']) {
                $item['qty'] = $qty;
                $is_id_exist = true;
                break;
            }
        }

        if (!$is_id_exist) {
            array_push($_SESSION['keranjang'], array(
                'sid' => $sid,
                'qty' => $qty
                    )
            );
        }
        if (isset($_SESSION['caller'])) {
            header(sprintf("Location:%s", $_SESSION['caller']));
        } else {
            header("Location:index.php");
        }
    } else {
        echo "<p>Quantity barang harus lebih besar dari 0</p>";
    }
}
?>


<form action="" method="POST">
    Nama barang : <?php echo $nama_barang ?> <br/>
    Harga : <?php echo $harga ?> <br/>
    Jumlah pesanan : <input name="qty" type="number" maxlength="3" style="width: 30px" 
                            value="<?php echo isset($_POST['qty']) ? $_POST['qty'] : $exist_qty ?>"/>
                            <?php
                            $btn_label = "";
                            if (isset($_SESSION['caller'])) {
                                $btn_label = "Update";
                            } else {
                                $btn_label = "Beli";
                            }
                            ?>
    <button type="submit"><?php echo $btn_label ?></button>
    <input type="hidden" name="sid" value="<?php echo $sid ?>"
</form>
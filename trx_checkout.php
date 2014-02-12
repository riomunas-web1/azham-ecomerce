<?php
require_once('Connections/koneksi.php');
session_start();

if (!isset($_SESSION['register_sid'])) {
    $_SESSION['caller'] = 'trx_checkout.php';
    header("Location:input_form_login.php");
}

//kalau keranjang belum ada kembalikan ke halaman index.php
if (!isset($_SESSION['keranjang'])) {
    header("Location:index.php");
} else {
    if (count($_SESSION['keranjang']) ==0 ) {
        unset($_SESSION['keranjang']);
        header("Location:index.php");
    }
}

$total = 0;

if (!isset($_POST['checkout'])) {
    ?>
    <form method="post" action="">
        <table border="1">
            <?php if (isset($_SESSION['keranjang'])) { ?>
                <tr>
                    <td>Nama Barang</td>
                    <td colspan="2">@harga</td>
                    <td>Qty</td>
                    <td colspan="2">Jumlah</td>
                    <td>Update</td>
                </tr><?php
                foreach ($_SESSION['keranjang'] as $item) {
                    mysql_select_db($database_koneksi, $koneksi);
                    $query = sprintf(
                            "select * "
                            . "from barang_koleksi "
                            . "left join barang_jenis on barang_koleksi.barang_jenis = barang_jenis.sid "
                            . "where barang_koleksi.sid = '%s'", $item['sid']);
                    $result = mysql_query($query) or die(mysql_error());
                    $barang_koleksi = mysql_fetch_array($result);
                    ?>
                    <tr>
                        <td><?php echo $barang_koleksi['nama_barang'] ?></td>
                        <td>Rp. </td>
                        <td><?php echo number_format($barang_koleksi['harga'], 0, ',', '.') ?></td>
                        <td><?php echo (int) $item['qty'] ?></td>
                        <td>Rp. </td>
                        <td style="text-align: right"><?php echo number_format((int) $item['qty'] * $barang_koleksi['harga'], 0, ',', '.') ?></td>
                        <td><a href="trx_konfirmasi_beli.php?sid=<?php echo $item['sid'] ?>&caller=trx_checkout.php">Edit Qty</a> | <a href="trx_checkout_delete.php?sid=<?php echo $item['sid']?>">Delete</a></td>
                    </tr>
                    <?php
                    $total = $total + (int) $item['qty'] * $barang_koleksi['harga'];
                }
                ?>
                <tr>
                    <td colspan="4" style="text-align: right">Total : </td>
                    <td >Rp. </td>
                    <td ><?php echo number_format($total, 0, ',', '.') ?></td>
                    <td> &nbsp;</td>
                </tr>
                <?php
            }
            ?>
        </table>
        << <a href="index.php">Lanjutkan Belanja</a>  <button type="submit" name="checkout">Checkout</button>
    </form>
    <?php
} else {
    //input data ke pemesanan
    mysql_select_db($database_koneksi, $koneksi);
    $result = mysql_query("select uuid() as sid", $koneksi);
    $uuid = mysql_fetch_array($result);
    $sid = $uuid['sid'];
    $sql = sprintf("insert INTO pemesanan (sid, tanggal, total_harga, register) values ('%s', now(), %d, '%s')", $sid, $total, $_SESSION['register_sid']);
    $result = mysql_query($sql, $koneksi) or die(mysql_error());

    //input data ke pemesanan detail
    $sql = "insert INTO pemesanan_detail (sid, pemesanan, kode_barang, jumlah) values";
    $first = true;

    foreach ($_SESSION['keranjang'] as $item) {
        $barang_sid = $item['sid'];
        $barang_qty = (int) $item['qty'];
        $sql .= ($first ? "" : ",") . " (uuid(), '$sid', '$barang_sid', $barang_qty)";
        $first = false;
    }
    
    $result = mysql_query($sql, $koneksi) or die(mysql_error());
    if ($result == 1) {
        unset($_SESSION['keranjang']);
        echo 'Pesanan sudah disimpan <br/>';
        echo 'Silakan melakukan pembayaran dan konfirmasi pembayaran <br/>';
        echo '<a href="index.php">Kembali ke halaman awal</a>';
    } else {
        echo "Gagal menyimpan pesanan";
    }
}
?>
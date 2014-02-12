<?php
require_once('Connections/koneksi.php');
session_start();

if (!isset($_SESSION['register_sid'])) {
    $_SESSION['caller'] = 'trx_pembayaran.php';
    header("Location:input_form_login.php");
}

//kalau keranjang belum ada kembalikan ke halaman index.php
if (!isset($_SESSION['keranjang']))
    header("Location:index.php");

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
                    </tr>
                    <?php
                    $total = $total + (int) $item['qty'] * $barang_koleksi['harga'];
                }
                ?>
                <tr>
                    <td colspan="4" style="text-align: right">Total : </td>
                    <td >Rp. </td>
                    <td ><?php echo number_format($total, 0, ',', '.') ?></td>
                </tr>
                <?php
            }
            ?>
        </table>
        <button type="submit" name="checkout">Checkout</button>
    </form>
    <?php
} else {
    $sql = sprintf("insert INTO pemesanan (sid, tanggal, total_harga, register) values (uuid(), now(), %d, '%s')", $total, $_SESSION['register_sid']);
    $result = mysql_query($sql, $koneksi);

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
<?php
require_once('Connections/koneksi.php');
session_start();

if (!isset($_SESSION['register_sid'])) {
    $_SESSION['caller'] = 'trx_checkout.php';
    header("Location:input_form_login.php");
}

if (!isset($_POST['submit'])) {
    $sql = sprintf("select pemesanan_detail.sid, pemesanan.sid as pemesanan, barang_koleksi.nama_barang,  jumlah as qty, harga 
                from pemesanan_detail 
                left join pemesanan on pemesanan_detail.pemesanan = pemesanan.sid 
                left join barang_koleksi on pemesanan_detail.barang_koleksi = barang_koleksi.sid 
                where pemesanan.register = '%s' and status_bayar = 0", $_SESSION['register_sid']);
    mysql_select_db($database_koneksi, $koneksi);
    $result = mysql_query($sql) or die(mysql_error());
    if (mysql_num_rows($result) == 0) {
        echo "Data transaksi belum ada <br/>";
        echo '<a href="index.php">Kembali ke halaman awal</a>';
        die();
    }
    ?>
    <form method="post" action="">
        <table border="1">
            <tr>
                <td>Nama Barang</td>
                <td colspan="2">@harga</td>
                <td>Qty</td>
                <td colspan="2">Jumlah</td>
            </tr>
            <?php
            $total = 0;
            $pemesanan_sid;
            while ($pemesanan = mysql_fetch_array($result)) {
                ?>
                <tr>
                    <td><?php echo $pemesanan['nama_barang'] ?></td>
                    <td>Rp. </td>
                    <td><?php echo number_format($pemesanan['harga'], 0, ',', '.') ?></td>
                    <td><?php echo (int) $pemesanan['qty'] ?></td>
                    <td>Rp. </td>
                    <td style="text-align: right"><?php echo number_format((int) $pemesanan['qty'] * $pemesanan['harga'], 0, ',', '.') ?></td>
                </tr>
                <?php
                $total = $total + ($pemesanan['qty'] * $pemesanan['harga']);
                $pemesanan_sid = $pemesanan['pemesanan'];
            }
            ?>
            <tr>
                <td colspan="4" style="text-align: right">Total : </td>
                <td >Rp. </td>
                <td ><?php echo number_format($total, 0, ',', '.') ?></td>
            </tr>
        </table>
        <p>
            <input type="hidden" name ="pemesanan" value="<?php echo $pemesanan_sid ?>"/>
            Konfirmasi Transfer : <input type="text" style="width: 500px" name="keterangan_pembayaran"/> <br/><i>(ex: Sudah transfer Rp. 200.000 dari bca an budi)</i>
        </p>
        <p><button type="submit" name="submit">Submit</button></p>
    </form>
    <?php
} else {
    //update table pemesanan
    if (isset($_POST['keterangan_pembayaran']) && isset($_POST['keterangan_pembayaran'])) {
        $sql = sprintf(
                "update pemesanan "
                . "set status_bayar = 1, "
                . "keterangan_pembayaran = '%s' "
                . "where sid = '%s' ", $_POST['keterangan_pembayaran'], $_POST['pemesanan']);
        echo $sql;
        $result = mysql_query($sql, $koneksi) or die(mysql_error());
        if ($result) {
            echo 'Konfirmasi sudah disimpan <br/>';
            echo 'Silakan tunggu konfirmasi dari kami melalui e-mail <br/>';
            echo '<a href="index.php">Kembali ke halaman awal</a>';
        }
    }
}
?>
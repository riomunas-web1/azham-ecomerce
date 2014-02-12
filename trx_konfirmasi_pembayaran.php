<?php
require_once('Connections/koneksi.php');
session_start();

if (!isset($_POST['submit'])) {    
    ?>
    <form method="post" action="">
        <table border="1">
                <tr>
                    <td>Nama Barang</td>
                    <td colspan="2">@harga</td>
                    <td>Qty</td>
                    <td colspan="2">Jumlah</td>
                </tr>
                    <tr>
                        <td><?php echo $barang_koleksi['nama_barang'] ?></td>
                        <td>Rp. </td>
                        <td><?php echo number_format($barang_koleksi['harga'], 0, ',', '.') ?></td>
                        <td><?php echo (int) $item['qty'] ?></td>
                        <td>Rp. </td>
                        <td style="text-align: right"><?php echo number_format((int) $item['qty'] * $barang_koleksi['harga'], 0, ',', '.') ?></td>
                    </tr>
                    
                <tr>
                    <td colspan="4" style="text-align: right">Total : </td>
                    <td >Rp. </td>
                    <td ><?php echo number_format($total, 0, ',', '.') ?></td>
                </tr>
        </table>
        <button type="submit" name="submit">Submit</button>
    </form>
    <?php
} else {
    echo 'Pesanan sudah disimpan <br/>';
    echo 'Silakan melakukan pembayaran dan konfirmasi pembayaran <br/>';
    echo '<a href="index.php">Kembali ke halaman awal</a>';
}
?>
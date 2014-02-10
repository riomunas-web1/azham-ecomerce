<?php

require_once('Connections/koneksi.php');
session_start();

if (isset($_SESSION['keranjang'])) {
    $total = 0;
    foreach ($_SESSION['keranjang'] as $item) {
        mysql_select_db($database_koneksi, $koneksi);
        $query = sprintf(
                "select * "
                . "from barang_koleksi "
                . "left join barang_jenis on barang_koleksi.barang_jenis = barang_jenis.sid "
                . "where barang_koleksi.sid = '%s'", $item['sid']);
        $result = mysql_query($query) or die(mysql_error());
        $barang_koleksi = mysql_fetch_array($result);
        
        echo 'nama barang : '.$barang_koleksi['nama_barang'].'<br/>';
        echo 'qty : '.(int) $item['qty'].'<br/>';
        echo '@harga'.$barang_koleksi['harga'].'<br/>';
        echo 'jumlah : Rp. '.number_format((int) $item['qty'] * $barang_koleksi['harga'], 2, ',', '.').'<br/>';
        $total = $total + (int) $item['qty'] * $barang_koleksi['harga'];
//        print_r($barang_koleksi);
        echo '<hr/>';
    }
    echo 'total : Rp. '.number_format($total, 2, ',', '.');
}

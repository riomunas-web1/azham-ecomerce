<?php 

//koneksi database
require_once('Connections/koneksi.php');

//pilih database
mysql_select_db($database_koneksi, $koneksi);


$result = mysql_query("SET FOREIGN_KEY_CHECKS=0;", $koneksi) or die (mysql_error());
$result = mysql_query("truncate barang_jenis", $koneksi) or die (mysql_error());
$result = mysql_query("truncate barang_koleksi", $koneksi) or die (mysql_error());
$result = mysql_query("truncate forget_password", $koneksi) or die (mysql_error());
$result = mysql_query("truncate pelanggan", $koneksi) or die (mysql_error());
$result = mysql_query("truncate pemesanan", $koneksi) or die (mysql_error());
$result = mysql_query("truncate pemesanan_detail", $koneksi) or die (mysql_error());
$result = mysql_query("truncate barang_koleksi", $koneksi) or die (mysql_error());
$result = mysql_query("SET FOREIGN_KEY_CHECKS=1", $koneksi) or die (mysql_error());

//generate data barang_jenis
$sql = "insert into barang_jenis (sid, nama_jenis, keterangan) values ";
for ($i=0; $i < 5; $i++) { 
	$sql .= ($i==0?"":", ")."(uuid(), 'jenis $i', 'keterangan jenis $i')" ;
}

$result = mysql_query($sql, $koneksi) or die(mysql_error());

//generate data barang_koleksi
$sql = "select * from barang_jenis";

$result = mysql_query($sql, $koneksi) or die(mysql_error());

$sql = "";

$sql  = "insert into barang_koleksi (sid, nama_barang, harga, stock, barang_jenis) values ";
$first = true;
while($row = mysql_fetch_assoc($result)) {	
	$sql .= ($first?"":", ");
	$first = false;
	for($i=0; $i<100; $i++) {
		$harga = ($i*100)+1000;
		$sql .= ($i==0?"":", ")."(uuid(), 'barang ".$row['nama_jenis']." $i', $harga, 10, '".$row['sid'] ."') ";
	}
}

$result = mysql_query($sql, $koneksi) or die(mysql_error());
echo ($result?"Done...":"Error");

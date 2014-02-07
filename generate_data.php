<?php 

//koneksi database
require_once('Connections/koneksi.php');

//pilih database
mysql_select_db($database_koneksi, $koneksi);

//generate data barang_jenis
$sql = "insert into barang_jenis (sid, nama_jenis, keterangan) values ";
for ($i=0; $i < 5; $i++) { 
	$sql .= ($i==0?"":", ")."(uuid(), 'nama$i', 'keterangan$i')" ;
}

$result = mysql_query("truncate barang_jenis", $koneksi) or die(mysql_error());
$result = mysql_query($sql, $koneksi) or die(mysql_error());

//generate data barang_koleksi
$sql = "insert into barang_koleksi (sid, nama_jenis, keterangan) values ";
for ($i=0; $i < 5; $i++) { 
	$sql .= ($i==0?"":", ")."(uuid(), 'nama$i', 'keterangan$i')" ;
}

$result = mysql_query("truncate barang_koleksi", $koneksi) or die(mysql_error());
$result = mysql_query($sql, $koneksi) or die(mysql_error());
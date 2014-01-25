<?php
$angka=range(0,9); //membuat jangkauan generate dari angka 0 s/d 9
shuffle($angka); //untuk mengacak array
$ambilangka=array_rand($angka,6); //teknik pencetakan secara acak dengan menggunakan array
$angkastring=implode("-",$ambilangka); //menambahkan string "-"
$password=$angkastring;
echo "Nama ini memiliki Password : <b>$password</b>";
?>
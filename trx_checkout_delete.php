<?php

require_once('Connections/koneksi.php');
session_start();

if (!isset($_SESSION['register_sid'])) {
    $_SESSION['caller'] = 'trx_checkout.php';
    header("Location:input_form_login.php");
}
//unset($_SESSION['keranjang'][0]);
if (!isset($_GET['sid'])) {
    header("Location:trx_checkout.php");
}

$sid = $_GET['sid'];
for ($i=0; $i<count($_SESSION['keranjang']); $i++) {
    if ($_SESSION['keranjang'][$i]['sid'] == $sid) {
        array_splice($_SESSION['keranjang'], $i,1);
        break;
    }    
}
header("Location:trx_checkout.php");
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


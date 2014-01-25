<?php require_once('Connections/koneksi.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
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

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {
  $insertSQL = sprintf(
    "INSERT INTO barang_koleksi 
      (id_koleksi, nama_barang, harga, diskon, stock, tipe, gambar) 
    VALUES (%s, %s, %s, %s, %s, %s, %s)",
       GetSQLValueString($_POST['id_koleksi'], "int"),
       GetSQLValueString($_POST['nama_barang'], "text"),
       GetSQLValueString($_POST['harga'], "int"),
       GetSQLValueString($_POST['diskon'], "int"),
       GetSQLValueString($_POST['stock'], "int"),
       GetSQLValueString($_POST['tipe'], "text"),
       GetSQLValueString($_FILES['gambar']['name'], "text"));

    mysql_select_db($database_koneksi, $koneksi);
    $Result1 = mysql_query($insertSQL, $koneksi) or die(mysql_error());

    #copy file
    $direktori = 'files/'; //Folder penyimpanan file
    $max_size  = 1000000*10; //Ukuran file maximal 10mb
    $nama_file = $_FILES['gambar']['name']; //Nama file yang akan di Upload
    $file_size = $_FILES['gambar']['size']; //Ukuran file yang akan di Upload
    $nama_tmp  = $_FILES['gambar']['tmp_name']; //Nama file sementara
    $upload = $direktori . $nama_file; //Memposisikan direktori penyimpanan dan file
    move_uploaded_file($nama_tmp, $upload);

$nama_barang = $_POST['nama_barang'];  
$harga = $_POST['harga'];  
$jumlah = $_POST['stock'];  
$status = $_POST['status'];  

$subtotal = $harga * $jumlah ;  
$diskon = $diskon;

//menghitung total keseluruhan  
$total = $subtotal - $diskon;  
 


  $insertGoTo = "form_barang_koleksi.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<form action="<?php echo $editFormAction; ?>" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <table align="center">
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Id_koleksi:</td>
      <td><input type="text" name="id_koleksi" value="" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Nama_barang:</td>
      <td><input type="text" name="nama_barang" value="" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Harga:</td>
      <td><input type="text" name="harga" value="" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Diskon:</td>
      <td><input type="text" name="diskon" value="" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Stock:</td>
      <td><input type="text" name="stock" value="" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Tipe:</td>
      <td valign="baseline"><table>
        <tr>
          <td><input type="radio" name="tipe" value="accesories" />
            accesories</td>
        </tr>
        <tr>
          <td><input type="radio" name="tipe" value="computer" />
            computer</td>
        </tr>
        <tr>
          <td><input type="radio" name="tipe" value="gadget" />
            gadget</td>
        </tr>
      </table></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Gambar:</td>
      
      <td>
    <form name="form" enctype="multipart/form-data" action="proses.php" method="POST">
    <input type="hidden" name="MAX_FILE_SIZE" value="10000000" />
    <input type="file" name="gambar" style="cursor:pointer;" />
    <!-- <input type="submit" name="submit" value="Upload" /> -->
    <br />Ukuran File Maximal: 10mb.
    </form></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">&nbsp;</td>
      <td><input name="Submit" type="submit" value="Kirim" />
      <input name="Submit2" type="reset" value="Batal" /></td>
    </tr>
  </table>
  <input type="hidden" name="MM_insert" value="form1" />
</form>
<p>&nbsp;</p>
</body>
</html>
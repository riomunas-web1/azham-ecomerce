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

mysql_select_db($database_koneksi, $koneksi);
$query_barang_jenis = "SELECT * FROM barang_jenis";
$barang_jenis = mysql_query($query_barang_jenis, $koneksi) or die(mysql_error());
$row_barang_jenis = mysql_fetch_assoc($barang_jenis);
$totalRows_barang_jenis = mysql_num_rows($barang_jenis);

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {
  $insertSQL = sprintf("INSERT INTO barang_koleksi (sid, nama_barang, harga, stock, tipe, gambar) VALUES (uuid(), %s, %s, %s, %s, %s)",
                       GetSQLValueString($_POST['nama_barang'], "text"),
                       GetSQLValueString($_POST['harga'], "int"),
                       GetSQLValueString($_POST['stock'], "int"),
                       GetSQLValueString($_POST['tipe'], "text"),
                       GetSQLValueString($_FILES['gambar']['name'], "text"));
					   
    if (empty($_POST['nama_barang']) || empty($_POST['harga']) || empty($_POST['stock'])| empty($_POST['stock'])| empty($_FILES['gambar']['name'])) {  
        echo '<script language="javascript">  
        alert("Data Harus Diisi Semua");  
        window.location="input_form_barang_koleksi.php";  
        </script>';  
         exit(); 
    }  
    else {  
      echo '<script language="javascript">alert("Data Berhasil Disimpan");
window.location="form_barang_koleksi.php";
</script>'; 
		 
       }  


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
      <td nowrap="nowrap" align="right">Nama_barang:</td>
      <td><input type="text" name="nama_barang" value="" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Harga:</td>
      <td><input type="text" name="harga" value="" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Stock:</td>
      <td><select name="stock">
        <option value="1" <?php if (!(strcmp("1", ""))) {echo "SELECTED";} ?>>1</option>
        <option value="2" <?php if (!(strcmp("2", ""))) {echo "SELECTED";} ?>>2</option>
        <option value="3" <?php if (!(strcmp("3", ""))) {echo "SELECTED";} ?>>3</option>
        <option value="4" <?php if (!(strcmp("4", ""))) {echo "SELECTED";} ?>>4</option>
        <option value="5" <?php if (!(strcmp("5", ""))) {echo "SELECTED";} ?>>5</option>
        <option value="6" <?php if (!(strcmp("6", ""))) {echo "SELECTED";} ?>>6</option>
        <option value="7" <?php if (!(strcmp("7", ""))) {echo "SELECTED";} ?>>7</option>
      </select></td>
    </tr>    
<tr valign="baseline">
      <td nowrap="nowrap" align="right">Barang_jenis:</td>
      <td><select name="barang_jenis">
        <?php 
do {  
?>
        <option value="<?php echo $row_barang_jenis['sid']?>" ><?php echo $row_barang_jenis['nama_jenis']?></option>
        <?php
} while ($row_barang_jenis = mysql_fetch_assoc($barang_jenis));
?>
      </select></td>
    </tr>
    <tr> </tr>
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
      <td><input type="submit" value="Kirim" />
      <input name="Reset" type="reset" value="Batal" /></td>
    </tr>
  </table>
  <input type="hidden" name="MM_insert" value="form1" />
</form>
<p>&nbsp;</p>
</body>
</html>
<?php
mysql_free_result($barang_jenis);
?>

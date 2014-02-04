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
  $insertSQL = sprintf("INSERT INTO pemesanan (sid, tanggal, jam, status_bayar, total_harga, biaya_kirim, total_pembayaran, status_kirim) VALUES (uuid(), %s, %s, %s, %s, %s, %s, %s)",
                       GetSQLValueString($_POST['tanggal'], "date"),
                       GetSQLValueString($_POST['jam'], "date"),
                       GetSQLValueString($_POST['status_bayar'], "text"),
                       GetSQLValueString($_POST['total_harga'], "int"),
                       GetSQLValueString($_POST['biaya_kirim'], "int"),
                       GetSQLValueString($_POST['total_pembayaran'], "int"),
                       GetSQLValueString($_POST['status_kirim'], "text"));
					   
if (empty($_POST['nama_pelanggan']) || empty($_POST['alamat'])) {  
        echo '<script language="javascript">  
        alert("Data Harus Diisi Semua");  
        window.location="input_pemesanan.php"; 
        </script>';  
         exit(); 
    }  
    else {  
      echo '<script language="javascript">alert("Data Berhasil Disimpan");
window.location="form_pemesanan.php";
</script>'; 
		 
       }  

  mysql_select_db($database_koneksi, $koneksi);
  $Result1 = mysql_query($insertSQL, $koneksi) or die(mysql_error());

  $insertGoTo = "form_pemesanan.php";
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
<link type="text/css" href="js/themes/base/ui.all.css" rel="stylesheet" /> 
<script type="text/javascript" src="js/jquery-1.3.2.js"></script>
<script type="text/javascript" src="js/ui.core.js"></script>
<script type="text/javascript" src="js/ui.datepicker.js"></script>


<script type="text/javascript"> 
      $(document).ready(function(){
        $("#tanggal").datepicker({
		dateFormat  : "yy-mm-dd", 
          changeMonth : true,
          changeYear  : true
		  
        });
      });
	  
    </script>
    
</head>

<body>
<form action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1">
  <table align="center">
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Tanggal:</td>
      <td><input type="text"  name="tanggal" id="tanggal" size="32"/></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Jam:</td>
      <td><input type="text" name="jam" value="" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Status_bayar:</td>
      <td><select name="status_bayar">
        <option value="sudah" <?php if (!(strcmp("sudah", ""))) {echo "SELECTED";} ?>>sudah</option>
        <option value="belum" <?php if (!(strcmp("belum", ""))) {echo "SELECTED";} ?>>belum</option>
       </select></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Total_harga:</td>
      <td><input type="text" name="total_harga" value="" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Biaya_kirim:</td>
      <td><input type="text" name="biaya_kirim" value="" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Total_pembayaran:</td>
      <td><input type="text" name="total_pembayaran" value="" size="32" /></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Status_kirim:</td>
      <td><select name="status_kirim">
        <option value="delivered" <?php if (!(strcmp("delivered", ""))) {echo "SELECTED";} ?>>delivered</option>
        <option value="pending" <?php if (!(strcmp("pending", ""))) {echo "SELECTED";} ?>>pending</option>
       </select></td>
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
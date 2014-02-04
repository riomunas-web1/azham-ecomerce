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
  $insertSQL = sprintf("INSERT INTO barang_jenis (sid, nama_jenis, keterangan) VALUES (uuid(), %s, %s)",
                       GetSQLValueString($_POST['nama_jenis'], "text"),
                       GetSQLValueString($_POST['keterangan'], "text"));
					   
if (empty($_POST['nama_jenis']) || empty($_POST['keterangan'])) {  
        echo '<script language="javascript">  
        alert("Data Harus Diisi Semua");  
        window.location="input_form_barang_jenis.php"; 
        </script>';  
         exit(); 
    }  
    else {  
      echo '<script language="javascript">alert("Data Berhasil Disimpan");
window.location="form_barang_jenis.php";
</script>'; 
		 
       }  

  mysql_select_db($database_koneksi, $koneksi);
  $Result1 = mysql_query($insertSQL, $koneksi) or die(mysql_error());

  $insertGoTo = "form_barang_jenis.php";
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
<form action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1">
  <table align="center">
    <tr valign="baseline">
      <td nowrap="nowrap" align="right">Nama_jenis:</td>
      <td><select name="nama_jenis">
        <option value="accesories" <?php if (!(strcmp("accesories", ""))) {echo "SELECTED";} ?>>accesories</option>
        <option value="camera" <?php if (!(strcmp("camera", ""))) {echo "SELECTED";} ?>>camera</option>
        <option value="computer" <?php if (!(strcmp("computer", ""))) {echo "SELECTED";} ?>>computer</option>
        <option value="laptop" <?php if (!(strcmp("laptop", ""))) {echo "SELECTED";} ?>>laptop</option>
        <option value="gadget" <?php if (!(strcmp("gadget", ""))) {echo "SELECTED";} ?>>gadget</option>
        <option value="printer" <?php if (!(strcmp("printer", ""))) {echo "SELECTED";} ?>>printer</option>
      </select></td>
    </tr>
    <tr valign="baseline">
      <td nowrap="nowrap" align="right" valign="top">Keterangan:</td>
      <td><textarea name="keterangan" cols="50" rows="5"></textarea></td>
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
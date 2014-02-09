<?php require_once('Connections/koneksi.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {

    function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") {
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
    $editFormAction .= "" . htmlentities($_SERVER['QUERY_STRING']);
}

$message = "";
if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {
//if (($_POST["MM_insert"] == "form1")) {
    //cek ke database
    $sql = sprintf("select * from register where username = %s and password = %s", 
            GetSQLValueString($_POST['username'], "text"),
            GetSQLValueString($_POST['password'], "text"));
    
    $result = mysql_query($sql);
    if (mysql_num_rows($result) == 1) {
        $register = mysql_fetch_object($result);
        session_start();
        $_SESSION['user_sid'] = ($register->sid);
        header("Location: index.php");
    } else {
        $message = "Login Salah !!!";
    }
}


// if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {
//   $insertSQL = sprintf("INSERT INTO login (sid, username, password) VALUES (uuid(), %s, %s)",
//                        GetSQLValueString($_POST['username'], "text"),
//                        GetSQLValueString($_POST['password'], "text"));
//  session_start();
//       session_register("username");
//       session_register("password");
//       $_SESSION[username]     = $r[username];
//       $_SESSION[password]     = $r[password];
//       header('location:index.php');
//     }
//     else{ echo "LOGIN GAGAL! <br> <a href='index.php'><< Kembali</a>"; 
// if (empty($_POST['username']) || empty($_POST['password'])) {  
//         echo '<script language="javascript">  
//         alert("Data Harus Diisi Semua");  
//         window.location="input_form_login.php";  
//         </script>';  
//          exit(); 
//     }  
//     else {  
//        }  
//   mysql_select_db($database_koneksi, $koneksi);
//   $Result1 = mysql_query($insertSQL, $koneksi) or die(mysql_error());
//   $insertGoTo = "index.php";
//   if (isset($_SERVER['QUERY_STRING'])) {
//     $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
//     $insertGoTo .= $_SERVER['QUERY_STRING'];
//   }
//   header(sprintf("Location: %s", $insertGoTo));
// }
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
    </head>
    <body>
        <center><?php echo (strlen($message)==0)? "": $message  ?></center>
        <form action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1">
            <table align="center">
                <tr valign="baseline">
                    <td nowrap="nowrap" align="right">Username:</td>
                    <td><input type="text" name="username"  value="" maxlength="8" size="32" /></td>
                </tr>
                <tr valign="baseline">
                    <td nowrap="nowrap" align="right">Password:</td>
                    <td><input type="password" name="password"  value="" maxlength="11" size="32" /></td>
                </tr>
                <tr valign="baseline">
                    <td nowrap="nowrap" align="right">&nbsp;</td>
                    <td><input name="Submit" type="submit" value="masuk" />
                        <input name="Submit2" type="reset" value="batal" /></td>
                </tr>
            </table>
            <p align="center"><a href="input_form_register.php">Register</a> if you don't have an account.</p>
            <p align="center"><a href="input_form_forget_password.php">Recover</a> your password if you don't remember it. </p>
            <p>
                <input type="hidden" name="MM_insert" value="form1" />
            </p>
        </form>
        <p>&nbsp;</p>
    </body>
</html>
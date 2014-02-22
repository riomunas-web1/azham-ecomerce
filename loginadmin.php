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
  $insertSQL = sprintf("INSERT INTO `admin` (sid, userid, passid) VALUES (uuid(), 'user1'. 'rahasia')",
                       GetSQLValueString($_POST['userid'], "int"),
                       GetSQLValueString($_POST['passid'], "int"));



  mysql_select_db($database_koneksi, $koneksi);
  $Result1 = mysql_query($insertSQL, $koneksi) or die(mysql_error());
}

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form2")) {
  $insertSQL = sprintf("INSERT INTO `admin` (userid, passid) VALUES (%s, %s)",
                       GetSQLValueString($_POST['userid'], "text"),
                       GetSQLValueString($_POST['passid'], "int"));
if (empty($_POST['userid']) || empty($_POST['passid'])) {  
        echo '<script language="javascript">  
        alert("Data Harus Diisi Semua");  
        window.location="input_data_admin.php"; 
        </script>';  
         exit(); 
    }  
    else {  
      echo '<script language="javascript">alert("Data Berhasil Disimpan");
window.location="form_data_admin.php";
</script>'; 
		 
       }  
  mysql_select_db($database_koneksi, $koneksi);
  $Result1 = mysql_query($insertSQL, $koneksi) or die(mysql_error());

  $insertGoTo = "data_admin.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $insertGoTo .= (strpos($insertGoTo, '?')) ? "&" : "?";
    $insertGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $insertGoTo));
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Custom Login Form Styling</title>
        <meta name="description" content="Custom Login Form Styling with CSS3" />
        <meta name="keywords" content="css3, login, form, custom, input, submit, button, html5, placeholder" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<script src="js/modernizr.custom.63321.js"></script>
		<!--[if lte IE 7]><style>.main{display:none;} .support-note .note-ie{display:block;}</style><![endif]-->
		<style>	
			@import url(http://fonts.googleapis.com/css?family=Montserrat:400,700|Handlee);
			body {
				background: #eedfcc url(images/bg3.jpg) no-repeat center top;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				background-size: cover;
			}
			.container > header h1,
			.container > header h2 {
				color: #fff;
				text-shadow: 0 1px 1px rgba(0,0,0,0.5);
			}
		</style>
</head>

<body>
<form action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1">
  <input type="hidden" name="MM_insert" value="form1" />
</form>
<form action="<?php echo $editFormAction; ?>" method="post" name="form2" id="form2">
  <section class="main">
	<center><?php echo (strlen($message) == 0) ? "" : $message ?></center>		
		<form class="form-5 clearfix" action="<?php echo $editFormAction; ?>" method="post" name="form1" id="form1">
				    <p>
				        <input type="text" id="login" name="username" placeholder="Username">
				        <input type="password" name="password" id="password" placeholder="Password"> 
				    </p>
				    <button type="submit" name="submit">
				    	<i class="icon-arrow-right"></i>
				    	<span>Sign in</span>
						
				    </button>     
				
				</form>
  <p><center>
  <a href="input_forget_password.php">Recover</a> your password if you don't remember it</center></p>
  <p>&nbsp;</p>
  <p>
    <input type="hidden" name="MM_insert" value="form2" />
  </p>
</form>
<p>&nbsp;</p>
</body>
</html>
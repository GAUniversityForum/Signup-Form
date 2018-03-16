<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>


<h1 align="center">
  <strong>Student Issues and Uploads</strong></h1>
<div align="center">
  <table width="450" border="0" cellpadding="0">
    <tr>
      <th scope="col"><a href="NACIT Discussion Forum/index.php">Home</a></th>
      <th scope="col"><a href="NACIT Discussion Forum/index.php">Logout</a></th>
      <th scope="col">View Issues</th>
    </tr>
  </table>
</div>
<p align="center">Type your issues here </p>
<form action="" method="POST" enctype="multipart/form-data">
  <div align="left">
    <p><br>
      <textarea name="message" rows="10" cols="80"></textarea>
    </p>
    <p>
      <input type="submit" name="Upload" id="Upload" value="Upload" />
      <label for="Upload">Upload File</label>
    </p>
    <p>
      <input type="submit" name="Browse" id="Browse" value="Browse" />
           <a href="sign_up.sql"> <label for="Browse"> (Pdf, Word)</label></a>
    </p>
    <p><label>Cartegory</label> 
      <select name="Course">
        <option value=""></option>
        <option value=""></option>
      </select></tr> </p>
    <input type="submit" value="Submit"/>
  </div>
</form>
<?php



$name=$_REQUEST['name'];
$email=$_REQUEST['email'];
$message=$_REQUEST['message'];
if (($name=="")||($email=="")||($message==""))
{
echo "All fields are required, please fill <a href=\"\">the form</a> again.";  
}
else
$from="From: $name<$email>\r\nReturn-path: $email";
$subject="Message sent using your contact form";
mail("youremail@yoursite.com", $subject, $message, $from);
echo "Email sent!";


?>
</body>
</html>
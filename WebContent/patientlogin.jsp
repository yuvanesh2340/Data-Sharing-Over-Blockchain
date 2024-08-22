<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="dbconn.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
 <%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
   <%@ page import="java.util.*" %>
    <%@ page import="java.util.Random" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css1/bootstrap.min.css">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>

<title>Patient login</title>
<style>
*{margin:0px; padding:0px;font-family: Helvetica, Arial, sans-serif;}

input[type=text]{
    width: 90%;
    padding: 12px 20px;
    margin: 8px 26px;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	font-size:16px;
}
button {
       background-color: #b71b1b;
    color: white;
    padding: 6px 22px;
    margin: 10px 37px;

    border: none;
    cursor: pointer;
  width: 61%;
    height: 46px;
	font-size:20px;
}
button:hover {
    opacity: 0.8;
}
h3{
color:green;
}
body{
background-image:url("image/2.webp");
background-size: cover;
}
</style>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>


<body >
<% String id=session.getAttribute("pid").toString(); %>
            
        
     



 
<center>
<br><br><br><br><br><br>
<h3> Patient Login Here!!!</h3>
  <form action="Patientloginservlet" method="post">
  
  <input type="text" name="pid"  placeholder="Enter Your Patient-ID" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
   
   <!-- <input type="text" name="otp" placeholder="Enter Qr Pass Code" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
   --><input type="submit" value="Login" style="width:100px;height:40px;border-radius: 10px;"><br><br>

   
   <div class="myDiv3">

</div>
   
  </form>
  </center>
  <script>

function myFunction(data) {

var size = 248;
if(data == "") {
	console.log("out")
    $("#alert").append("<p style='color:#fff;font-size:20px'>Please Enter A Url Or Text</p>"); // If Input Is Blank
    return false;
} else {
    if( $("#image").is(':empty')) {
		console.log("in")
	  //QR Code Image
      $("#image").append("<img src='http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "' alt='qr' />");
	  
	  //This Provide An Image Download Link
      $("#link").append("<a style='color:#fff;' href='http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "'>Download QR Code</a>");
	  
	  //This Provide the Image Link Path In Text
     // $("#code").append("<p style='color:#fff;'><strong>Image Link:</strong> http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "</p>");
      return true;
	} else {
		console.log("else out")
      $("#image").html("");
      $("#link").html("");
      $("#code").html("");
	  
      //QR Code Image
      $("#image").append("<img src='http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "' alt='qr' />");
	  
	  //This Provide An Image Download Link
      $("#link").append("<a style='color:#fff;' href='http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "'>Download QR Code</a>");
	  
	  //This Provide the Image Link Path In Text
      $("#code").append("<p style='color:#fff;'><strong>Image Link:</strong> http://chart.apis.google.com/chart?cht=qr&chl=" + data + "&chs=" + size + "</p>");
      return false;
    }
  }
}
</script>
</body>
</html>
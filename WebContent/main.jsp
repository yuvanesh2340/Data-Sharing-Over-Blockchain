<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
.mydiv{
margin:170px;
}
body{
background-image:url("image/18.jpeg");
background-size:cover;
}
a{
text-decoration:none;
color:black;
}
</style>
<%
		Random r1=new Random(); 

		 String key2="ABCDEFGH123456789";
		 char c5=key2.charAt(r1.nextInt(key2.length()));
		 char c6=key2.charAt(r1.nextInt(key2.length()));
		 char c7=key2.charAt(r1.nextInt(key2.length()));
		 char c8=key2.charAt(r1.nextInt(key2.length()));
		 char c9=key2.charAt(r1.nextInt(key2.length()));
		 String t6=""+c5+""+c6+""+c7+""+c8+""+c9;
		 %>
<body>
<center>
<div class="mydiv">
  <form action="MailSendkey" method="post">
  <input type="hidden" name="otp" placeholder="Password" value="<%=t6 %>" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
    <input type="email" name="pid" placeholder="Enter Patient-email" style="width:250px;height:40px;border-radius: 1px;text-align:center;"><br><br>
  
  <input type="submit" value="Enter" style="width:100px;height:40px;border-radius: 10px;"><br><br>

   
   <div class="myDiv3">
 <a href="patientregister.jsp">New Patient Signup</a>
</div>
   
  </form>
  </div>
  </center>
</body>
</html>
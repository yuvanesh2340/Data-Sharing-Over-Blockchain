<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="dbconn.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Insert title here</title>

<style>

.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color: #77c732; 
}

body {
  background-image: url("image/7.jpg");
  background-repeat: no-repeat; 
  background-size: cover;
}

</style>


</head>
<body>

<% Random r=new Random();
	
	int f=r.nextInt(100000);
	String filekey= ""+f;
	
	%>
	<%
		Random r1=new Random(); 

		 String key2="123456789";
		 char c5=key2.charAt(r1.nextInt(key2.length()));
		 char c6=key2.charAt(r1.nextInt(key2.length()));
		 char c7=key2.charAt(r1.nextInt(key2.length()));
		 char c8=key2.charAt(r1.nextInt(key2.length()));
		 char c9=key2.charAt(r1.nextInt(key2.length()));
		 String t6=""+c5+""+c6+""+c7+""+c8+""+c9;
		 %>


<br><br><br>
<center>
<div class="myDiv2">
Patient Register
</div>
</center>
<br><br>

<div class="myDiv">
<center>
  <form action="Patientregservlet" method="post">
  <input type="text" name="pid" value="P<%=t6%>" placeholder="Username" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="text" name="username" placeholder="Username" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="text" name="email" placeholder="Emaiid" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
   <input type="text" name="phonenumber" placeholder="Phonenumber" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
 
  <input type="text" name="password" placeholder="Password"  id="password1" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="text" name="cpassword" id="password2" placeholder="Confirm Password" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  
  <input type="submit" value="Submit" style="width:100px;height:40px;border-radius: 10px;"><br><br>
 
  </form>
  </center>
</div>



</body>
  <script>
				window.onload = function () {
					document.getElementById("password1").onchange = validatePassword;
					document.getElementById("password2").onchange = validatePassword;
				}

				function validatePassword() {
					var pass2 = document.getElementById("password2").value;
					var pass1 = document.getElementById("password1").value;
					if (pass1 != pass2)
						document.getElementById("password2").setCustomValidity("Password Doesn't Match");
					else
						document.getElementById("password2").setCustomValidity('');
					//empty string means no validation error
				}
			</script>
</html>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
/* .myDiv {
  border: 5px outset #77c732;
  background-color: lightblue;    
  border-radius: 10px;
  width:600px;
  height:400px;
  margin: auto;
  padding-top:30px;
  box-shadow: 25px 20px 20px #888888;
  
} */
.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color: black; 
}
.myDiv3 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color: #f5e342; 
}

body {
  background-image: url("image/16.jpeg");
  background-repeat: no-repeat; 
  background-size: cover;
}
.mydiv{
margin:90px;
}

</style>




</head>
<body>

<br><br><br>
<center>
<div class="myDiv2">
Admin Login
</div>
</center>
<br><br>

<div class="myDiv">
<center>
  <form action="Adminloginservlet" method="post">
  <input type="text" name="username" placeholder="Username" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="text" name="password" placeholder="Password" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="submit" value="Submit" style="width:100px;height:40px;border-radius: 10px;"><br><br>

   
   <!-- <div class="myDiv3">
New User <a href="patientregister.jsp">Signup</a>
</div> -->
   
  </form>
  </center>
</div>


</body>
</html>
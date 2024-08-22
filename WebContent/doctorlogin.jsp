<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>

.myDiv2 {
  font-size:25px;  
  font-style: bold;
font-weight: bold;
color: blue; 
}
.myDiv3 {
  font-size:25px;  
  font-style: bold;
font-weight: bold;
color: blue; 
}

body {
  background-image: url("image/3.jpg");
  background-repeat: no-repeat; 
  background-size: cover;
}
a{
text-decoration:none;

}

</style>




</head>
<body>

<br><br><br>
<center>
<div class="myDiv2">
Doctor Login
</div>
</center>
<br><br>

<div class="myDiv">
<center>
  <form action="Doctorloginservlet" method="post">
  <input type="text" name="did" placeholder="Doctor-ID" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <select id="appointment_for" name="Doctor" required style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>>
          <option value="Cardiologist">Cardiologist</option>
          <option value="Radiologist">Radiologist</option>
          <option value="Urologist">Urologist</option>
          <option value="Pedaitrician">Pedaitrician</option>
          <option value="Nueralogist">Nueralogist<option>
         
        
        </select><br><br>
  <input type="text" name="password" placeholder="Password" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <input type="submit" value="Login" style="width:100px;height:40px;border-radius: 10px;background-color:lightgreen;"><br><br>

   
   <div class="myDiv3">
 <a href="doctorregister.jsp">New Doctor Signup</a>
</div>
   
  </form>
  </center>
</div>


</body>
</html>
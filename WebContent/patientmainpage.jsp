<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
 
</head>
<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  
 
}

li {
  float: right;
  padding-right:100px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;
  text-decoration:BLINK;

  
}

body {
  background-image: url("image/p1.jfif");
  background-repeat: no-repeat; 
  background-size: cover;
}

</style>



<body>



<ul class="container-fluid justify-content-start">

<li><a href="homepage.jsp" class="btn btn-outline-warning">Logout</a></li>
<li><a href="download.jsp" class="btn btn-outline-light">Download</a></li>
<li><a href="reportview.jsp" class="btn btn-outline-light">Report </a></li>
<li><a href="Doctordes.jsp" class="btn btn-outline-light">Doctor Discription</a></li>
<li><a href="patienappointview.jsp" class="btn btn-outline-light">View</a></li>
  <li><a href="Appointment.jsp" class="btn btn-outline-light">Appointment</a></li>
        
</ul>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbconn.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/techhome.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
a{
  text-decoration: none;
}
body{

background-image:url(image/t1.jpeg);
background-size:1550px 690px;

}

</style>

<%String tech=session.getAttribute("tech").toString(); 

%>

<body>
<nav>
  <div class="navicon">
    <div></div>
  </div>

  <a href="homepage.jsp">Home</a>
  <a href="tinfo.jsp">Information</a>
  <a href="techadd.jsp">Add</a>
  <a href="homepage.jsp">Logout</a>
 

</nav>

</body>

</html>
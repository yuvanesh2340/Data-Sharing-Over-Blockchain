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
<link rel="stylesheet" href="css/bootstrap.min.css">

<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
 background: rgb(160,199,198);
background: linear-gradient(90deg, rgba(160,199,198,1) 0%, rgba(38,188,213,1) 0%);
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

  text-decoration: none;
}

body {
background-image:url("image/h20.jpg");
background-size:cover;
 background-repeat: no-repeat;
}

</style>


</head>
<%String dtype=session.getAttribute("dtype").toString(); 
String demail=session.getAttribute("demail").toString();
%>
<%
       
       Connection con;
       
       
       con=Dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM `hos`.`appointment` where doctype='"+dtype+"' and status='Appointment'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 int count=rs.getInt(1);
   
       
       


%>
<body>

<ul>

<li><a href="homepage.jsp">Logout</a></li>
<li><a href="Consultpatientlist.jsp">Consult List</a></li>
<li><a href="doctordataview.jsp">Patient Form</a></li>
<li><a href="docreportview.jsp">Patient Report view</a></li>
<li><a href="dview.jsp">Appointment View(<%=count %>)</a></li>

        
</ul>

</body>
<%} %>
</html>
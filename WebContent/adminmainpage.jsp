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

<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
   background: linear-gradient(to left, #db4914 0%, #0af574 100%);
}

li {
  float: right;
  padding-right:105px;
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
  background-image: url("image/h1.png");
  background-repeat: no-repeat; 
  background-size: cover;
}

</style>


</head>
<%
       
       Connection con;
       
       
       con=Dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM `hos`.`report` where status='Requested' ");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 int count=rs.getInt(1);
   
       
       


%>
       
<body>

<ul>

<li><a href="homepage.jsp">Logout</a></li>
<li><a href="response.jsp">Response(<%=count %>)</a></li>
<li><a href="approve.jsp">Approve</a></li>
<li><a href="doctordetails.jsp">Doctor</a></li>
  <li><a href="patientdetails.jsp">Patient</a></li>
        
</ul>

</body>
<%}
       %>
</html>
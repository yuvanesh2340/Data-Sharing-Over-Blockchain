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
</head>
<Style>
p{
Color:red;
text-align:center;}
</Style>
<%String mail=session.getAttribute("pemail").toString(); %>
<body>
<div class="container">
             <p>View Page </p>
  <table class="table table-dark table-hover">
    <thead>
      <tr>
        <th>Name</th>
        <th> Email</th>
        <th>Doctor</th>
         <th>Status</th>
        <th>File name</th>
             <th>Request</th>

       
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=Dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `hos`.`report` where pemail='"+mail+"'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 
   
    	
    	
    	  
    	   
       %>
    <tbody>
      <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
    
        <td><%=rs.getString(6)%></td>
         <td><%=rs.getString(7)%></td>
       
        	 
        <td><a href="Requestac.jsp?id=<%=rs.getString(1) %>"><button class="btn btn-primary">Request Report</button></a>
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</body>
</html>
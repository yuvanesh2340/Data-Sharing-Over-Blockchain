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
<link rel="stylesheet" href="css/confrm.css">
</head>
<Style>
p{
Color:red;
text-align:center;}
</Style>
<body>

<%
String pemail=session.getAttribute("pemail").toString();
%>
<div class="container">
             <p class="title"><span class="title-word title-word-1">DOCTOR DESCRIPTION </span></p>
  <table class="table table-dark table-hover">
    <thead>
      <tr>
        <th>patient Name</th>
        <th>Patient Email</th>
     
        <th>Doctor Type</th>
         <th>Date</th>
        <th>Gender</th>
         <th>Doctor</th>
        <th>Disease</th>
        <th>Description</th>
       
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=Dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `hos`.`patientreq` where pemail='"+pemail+"' and status='Done'  ");
       
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 
   
    	
    	String image=rs.getString(9);
    	  
    	   
       %>
    <tbody>
      <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
         <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(5)%></td>
       <td><%=rs.getString(8)%></td>
       <td><%=rs.getString(11)%></td>
       
        	
        
      </tr>
    </tbody>
    	<%} %> 
  </table>
</div>
</body>
</html>
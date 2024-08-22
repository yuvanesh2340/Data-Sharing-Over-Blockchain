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
<style>

body{
background-image:url(image/pexels-erkan-utu-239853.jpg);
background-size:1600px 690px;
opacity:0.9;

}

</style>
<body>

<%
String pemail=session.getAttribute("pemail").toString();
%>
<div class="container">
             <center><p class="title"><span class="title-word title-word-1">CONFIRMATION </span></p></center>
  <table class="table table-success table-striped">
    <thead>
      <tr>
        <th>patient Name</th>
        <th>Patient Email</th>
        <th>Gender</th>
        <th>Doctor Type</th>
         <th>Age</th>
        <th>Apointment Date</th>
       
        <th>Doctor</th>
        <th>Appointed</th>
       
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=Dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `hos`.`appointment` where email='"+pemail+"' and status='Appointed'  ");
       
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 
   
    	
    	String image=rs.getString(9);
    	  
    	   
       %>
    <tbody>
      <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(6)%></td>
      <td><%=rs.getString(4)%></td>
        <td><%=rs.getString(7)%></td>
        <td><%=rs.getString(8)%></td>
       <td><%=rs.getString(11)%></td>
       
        	
        <td><a href="forward.jsp?name=<%=rs.getString(2) %>&&pemail=<%=rs.getString(3) %>&&dtype=<%=rs.getString(4)%>&&date=<%=rs.getString(8)%>&&doctor=<%=rs.getString(11)%>&&gender=<%=rs.getString(6)%>&&age=<%=rs.getString(7)%>&&id=<%=rs.getString(1)%>"><button class="btn btn-primary">FORWARD</button></a>
      </tr>
    </tbody>
    	<%} %> 
  </table>
</div>
</body>
</html>
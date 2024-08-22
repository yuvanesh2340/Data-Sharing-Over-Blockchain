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
<button type="button" class="btn btn-dark"  onclick="history.back();" style="float:right;">BACK</button><br><br>
<body>

<%String tech=session.getAttribute("tech").toString(); 

%>
<div class="container">
             <p>CONFIRMATION </p>
  <table class="table  table-hover">
    <thead>
      <tr>
         <th>Patient Name</th>
        <th>Doctor Name</th>
  
        <th>Specialist</th>
         <th>Need</th>
          <th>Description</th>
        <th>Report</th>
           <th>Uploaded</th>
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=Dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `hos`.`patientreq` where test='"+tech+"' and status='Consulted' ");
       
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 
   
    	
    	String image=rs.getString(9);
    	  
    	   
       %>
    <tbody>
      <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(3)%></td>

        <td><%=rs.getString(8)%></td>
        <td><%=rs.getString(11)%></td>
       
        	  
      <td><a href="Reportadd.jsp?id=<%=rs.getString(10)%>&&pemail=<%=rs.getString(2)%>&&pname=<%=rs.getString(1)%>&&doctor=<%=rs.getString(5)%>&&rfor=<%=rs.getString(8)%>&&dtype=<%=rs.getString(3)%>&&tech=<%=tech%>"><button class="btn btn-primary">Report</button></a>
      <td><a href="reportuploadac.jsp?id=<%=rs.getString(10)%>"><button class="btn btn-dark">DONE</button></a>
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</body>
</html>
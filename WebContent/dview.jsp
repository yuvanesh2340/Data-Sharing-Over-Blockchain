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
<button type="button" class="btn btn-primary" onclick="history.back();" style="float:right"> Back </button><br><br>
<body>

<%String dtype=session.getAttribute("dtype").toString(); 
String demail=session.getAttribute("demail").toString();
%>
<div class="container">
             <p>APPOINTED HERE!! </p>
  <table class="table  table-hover">
    <thead>
      <tr>
        <th>Ptient Name</th>
        <th>Patient Email</th>
  
        <th>Specialist</th>
         <th>Appointment Date	</th>
        <th>Report</th>
                <th>Picture</th>
                        <th>Remark</th>
                
        
       
       
      </tr>
    </thead>
     <%
       
       Connection con;
       
       
       con=Dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `hos`.`appointment` where doctype='"+dtype+"' and status='Appointment'  ");
       
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    
    	 
   
    	
    	String image=rs.getString(9);
    	  
    	   
       %>
    <tbody>
      <tr>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
      
        <td><%=rs.getString(8)%></td>
        <td><%=rs.getString(8)%></td>
       
        	  <td><img class="card-img-top" src="Local1/<%=image %>" width="40" height="50" alt="Card image cap"></td>
        <td><a href="Appoint.jsp?id=<%=rs.getString(1) %>&&demail=<%=demail%>"><button class="btn btn-primary">Make Appointment</button></a>
      </tr>
    </tbody>
    	<%} %>
  </table>
</div>
</body>
</html>
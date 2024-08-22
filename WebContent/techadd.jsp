<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="dbconn.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="javax.servlet.http.HttpSession" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="https://cdn.zingchart.com/zingchart.min.js"></script>
<title>Insert title here</title>

<style>

.myDiv2 {
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color:red; 
}

table,td,th {
  border: 2px solid black;
  
}
table {
  border-collapse: collapse;
  width: 90%;
}

td {
  text-align: center;
 height: 40px;
}
th{
 height: 30px;
 color: black;
}

.backtag{
float:right;
margin-right:20px;
font-size:20px;
}

</style>


</head>
<button type="button" onclick="history.back();" style="float:right" class="btn btn-dark">Back</button>
<body>
<div class="backtag">

</div>
<br>
<center>
<div class="myDiv2">

</div>

 <%

String tech=session.getAttribute("tech").toString();

%> 
 

<br><br><br>
<table>

<th>NAME</th>
<th>PATIENT  Id.</th>

<th>Doctor Id.</th>
<th>Doctor </th>

<th> CONDITION</th>
<th> REPORT</th>

<%	

	 Connection d = Dbconn.create();
	 PreparedStatement p = d.prepareStatement("SELECT * FROM `hos`.`report` where tech='"+tech+"'");
	ResultSet rp = p.executeQuery();
	
		while (rp.next()){
					
		
			
											
	%>
	
	 <tr>
		<td><%=rp.getString(2) %></td>                            
      <td><%=rp.getString(3) %></td>
      <td><%=rp.getString(4) %></td>
      <td><%=rp.getString(5) %></td>                            
      <td><%=rp.getString(6) %></td>
      <td><%=rp.getString(7) %></td>
              </tr>
				
	<%
	}		
	%> 

</table>

</center>





</body>
</html>
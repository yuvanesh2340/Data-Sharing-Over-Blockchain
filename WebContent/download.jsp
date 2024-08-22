<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="dbconn.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
    
    <%@ page import="java.util.*" %>
    <%@ page import="java.util.Random" %>
    <%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
   

<title> Generator</title>
</head>

<style>
*{margin:0px; padding:0px;font-family: Helvetica, Arial, sans-serif;}
h1 { text-align: center; text-shadow: 2px 2px 0px rgba(255,255,255,.7), 5px 7px 0px rgba(0, 0, 0, 0.1);  font-size:50px; margin-top:40px; color:#fff; }
input[type=text]{
    width: 90%;
    padding: 12px 20px;
    margin: 8px 26px;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
	font-size:16px;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 26px;
    border: none;
    cursor: pointer;
  width: 61%;
    height: 46px;
	font-size:20px;
}
button:hover {
    opacity: 0.8;
}

</style>
 
<% String emmm=session.getAttribute("pemail").toString(); %>
<button type="button" onclick="history.back();" class="btn btn-primary" style="float:right;     width: 91px;">Back</button>
<body >

<div class="col-sm-6"></div>
        <div class="col-sm-12">
        <center>
        <table class="table table-success table-striped"  style="width:100%;">
        <tr>
        
        <th>Condition</th>
        <th>Filekey </th>        
        <th>Doctor</th>
        <th>File-Name</th>
	 <th>Download</th>       
        </tr>
             <% 
  String sno="";
 String file=""; 



Connection con = Dbconn.create();
PreparedStatement p = con.prepareStatement("SELECT * FROM `hos`.`report` where pemail='"+emmm+"' and status='Responsed' ");
ResultSet rs=p.executeQuery();

	while(rs.next())
	{									
		sno=rs.getString(1);
	
		file=rs.getString(6);
	%>
	<tr>
<td><%=rs.getString(6)%></td>
<td><%=rs.getString(9)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(7)%></td>


<td><a href="downloadac.jsp?fname1=<%=rs.getString(7)%>&&fkeyl=<%=rs.getString(9)%>"><button class="btn-btn-info btn-sm"> Download</button></a></td>
</tr>
<%}%>
            </table>
        </center>
        </div>
      
</body>
</html>
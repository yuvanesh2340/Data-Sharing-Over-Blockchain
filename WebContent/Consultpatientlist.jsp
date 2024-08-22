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
 color: red;
}

.backtag{
float:right;
margin-right:20px;
font-size:20px;
}

</style>


</head>
<body>
<div class="backtag">
<a href="doctormainpage.jsp">Back</a>
</div>
<br>
<center>
<div class="myDiv2">
Patient Details(Doctor)
</div>

<%

String uname=session.getAttribute("demail").toString();

%>
 

<br><br><br>
<table>
<!-- <th>Pharmacyname</th> -->
<th>Name</th>
<th>Email</th>
<th>Date</th>
<th>Doctor Type</th>
<th>Gender</th>
<th>Age</th>

<th>Discription</th>


<!-- <th>Remarks</th> -->

<%
String idlist="";
String pnamelist="";
String pemaillist="";
String genderlist="";
String datelist="";
String agelist="";
String placelist="";
String diseaslist="";
String condilist=""; 
String descriptlist="";


%>





<%	

	 Connection d = Dbconn.create();
	 PreparedStatement p = d.prepareStatement("SELECT * FROM `hos`.`patientreq` where doctor='"+uname+"' and status='Done'");
	ResultSet rp = p.executeQuery();
	
		while (rp.next()){
					
			idlist=rp.getString(1);
			pnamelist=rp.getString(2);
			pemaillist=rp.getString(3);
			genderlist=rp.getString(5);
			datelist=rp.getString(4);
			agelist=rp.getString(6);
			placelist=rp.getString(7);
			diseaslist=rp.getString(8);
			condilist=rp.getString(9);
			descriptlist=rp.getString(10);			
											
	%>
	
	 <tr>
		<td><%=rp.getString(1)%></td>                            
      <td><%=rp.getString(2)%></td>
      <td><%=rp.getString(4)%></td>
      <td><%=rp.getString(3)%></td>
      <td><%=rp.getString(6)%></td>
      <td><%=rp.getString(7)%></td>

      <td><%=rp.getString(11)%></td>
        
				
	<%
	}		
	%> 

</table>

</center>





</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  background-color: #006400;
}

li {
  float: right;
  padding-right:95px;
}

li a {
  display: block;
  color: white;
  text-align: center;
  text-style:bold;
  padding: 14px 16px;
  text-decoration: none;
}

.myDiv2 {
margin:70px;
  font-size:25px;  
  font-style: italic;
font-weight: bold;
color:#0ae5f5; 
}

table {

  width: 30%;
}
td {
  height: 50px;
   text-align: left;
}

.backtag{
float:right;
margin-right:50px;
font-size:30px;
}
a{text-decoration:none;
color:red;
}
</style>


</head>
<body>

<% String id=request.getParameter("id"); %>

<br>
<div class="backtag">
<a href="doctormainpage.jsp">Back</a>
</div>
<center>
<div class="myDiv2">
Doctor Entry Page
</div>
<br>
<form action="Doctoraddac.jsp" method="post">

<table>

<tr>
<td>id</td>
<td><input type="text" name="id" value=<%=id %> placeholder="Disease" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br></td>
</tr>


<tr>
<td>Disease</td>
<td><select id="type" type="text" name="disease" placeholder="Disease" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br>
  <option value="Xray">xray</option>
          <option value="Scan">Scan</option>
     
<!--           <option value="Btest">Blood test</option> -->
</select></td></tr>




<tr>
<td>Description</td>
<td><input type="text" name="description" placeholder="Description" style="width:250px;height:40px;border-radius: 10px;text-align:center;"><br><br></td>
</tr>


<tr>
<td colspan="2"><input type="submit" value="Submit" style="width:110px;height:35px;border-radius: 10px;text-align:center; background-color: #0ae5f5; color:white;margin-left:90px;"><br><br></td>
</tr>

</table>
</form>



</center>


</body>
</html>
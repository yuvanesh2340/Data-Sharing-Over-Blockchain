<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

</style>


</head>
<body>


<!-- <ul>
		
        <li><a href="homepageadmission.jsp">Logout</a></li>
        <li><a href="studentdataviewjsp.jsp">View</a></li>
        <li><a href="homepageadmission.jsp">Home</a></li>
  
</ul>
 -->
<br>
<div class="backtag">
<a href="doctormainpage.jsp">Back</a>
</div>
<center>
<div class="myDiv2">
Doctor Entry Page
</div>
<br>
<form action="Doctordataaddservlet" method="post">

<table>

<tr>
<td>Patient Name</td>
<td><input type="text" placeholder="Patient name" name="pname" style="width:180px;height:25px;border-radius: 10px;text-align:center;"><br><br></td>
</tr>

<tr>
<td>Patient Emailid</td>
<td><input type="text" placeholder="Patient Email" name="pemail" style="width:180px;height:25px;border-radius: 10px;text-align:center;"><br><br></td>
</tr>

<tr>
<td>Inquiry Date</td>
<td><input type="date" name="pdate" style="width:180px;height:25px;border-radius: 10px;text-align:center;"><br><br></td>
</tr>

<tr>
<td>Gender</td>
<td>
<input type="radio" name="gender" value="male">Male
<input type="radio" name="gender" value="female">Female
<br><br></td>
</tr>

<!-- <tr>
<td>Data of Birth</td>
<td><input type="text" name="studnentdob" placeholder="Date of Birth" style="width:180px;height:25px;border-radius: 10px;text-align:center;"><br><br></td>
</tr>
 -->
<tr>
<td>Age</td>
<td><input type="text" name="age" placeholder="Age" style="width:180px;height:25px;border-radius: 10px;text-align:center;"><br><br></td>
</tr>

<tr>
<td>Place</td>
<td><input type="text" name="area" placeholder="Place" style="width:180px;height:25px;border-radius: 10px;text-align:center;"><br><br></td>
</tr>

<!-- <tr>
<td>Degree</td>
<td>
<input type="radio" name="degree" value="ug">UG
<input type="radio" name="degree" value="pg">PG
<br><br></td>
</tr> -->

<tr>
<td>Disease</td>
<td><input type="text" name="disease" placeholder="Disease" style="width:180px;height:25px;border-radius: 10px;text-align:center;"><br><br></td>
</tr>

<tr>
<td>Condition</td>
<td>
<input type="radio" name="condition" value="moderate">Moderate
<input type="radio" name="condition" value="severe">Severe
<input type="radio" name="condition" value="light">Light
<br><br></td>
</tr>


<tr>
<td>Description</td>
<td><input type="text" name="description" placeholder="Description" style="width:180px;height:25px;border-radius: 10px;text-align:center;"><br><br></td>
</tr>


<tr>
<td colspan="2"><input type="submit" value="Submit" style="width:110px;height:35px;border-radius: 10px;text-align:center; background-color: #0ae5f5; color:white;margin-left:90px;"><br><br></td>
</tr>

</table>
</form>



</center>


</body>
</html>
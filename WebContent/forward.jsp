<%@ page import="dbconn.Dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%

String name=request.getParameter("name");
String pemail=request.getParameter("pemail");
String dtype=request.getParameter("dtype");

String date=request.getParameter("date");
String doctor=request.getParameter("doctor");
String gender=request.getParameter("gender");
String age=request.getParameter("age");

 String disease="";

String Description="";
String status="Forward"; 
String id=request.getParameter("id");
try{
	Connection con=Dbconn.create();
	PreparedStatement ps=con.prepareStatement("INSERT INTO `hos`.`patientreq` VALUES(?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, pemail);
	ps.setString(3, dtype);
	ps.setString(4, date);
	ps.setString(5, doctor);
	ps.setString(6, gender);
	ps.setString(7 ,age);
	ps.setString(8 ,disease);

	ps.setString(9, status);
	ps.setString(10, id);
	ps.setString(11,Description );

	ps.executeUpdate();
	PreparedStatement ps2=con.prepareStatement("UPDATE hos.appointment set status=? Where id=?");
    ps2.setString(1,status);
    ps2.setString(2,id);
    ps2.executeUpdate();
	response.sendRedirect("patientmainpage.jsp?msg=vaild");
}
catch(Exception e)
{
	System.out.print(e);
	response.sendRedirect("signup.jsp?msg=invaild");
}
%>
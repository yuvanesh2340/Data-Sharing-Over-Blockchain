<%@ page import="dbconn.Dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String disease=request.getParameter("disease");

String discription=request.getParameter("description");


String status="Consulted";
try{
	Connection con=Dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE hos.patientreq  SET  test='"+disease+"',status='"+status+"' ,descrption='"+discription+"'   where id='"+id+"' ");
	response.sendRedirect("doctormainpage.jsp?valid");
	
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>
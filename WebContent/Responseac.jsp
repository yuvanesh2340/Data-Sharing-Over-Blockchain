<%@ page import="dbconn.Dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");




String status="Responsed";
try{
	Connection con=Dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE hos.report set status='"+status+"' where id='"+id+"' ");
	response.sendRedirect("adminmainpage.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>
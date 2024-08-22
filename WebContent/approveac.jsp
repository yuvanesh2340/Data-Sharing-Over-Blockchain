<%@ page import="dbconn.Dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("id");




String status="Activate";
try{
	Connection con=Dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE hos.doctorreg set status='"+status+"' where id='"+id+"' ");
	response.sendRedirect("approve.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>
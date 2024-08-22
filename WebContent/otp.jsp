<%@ page import="dbconn.Dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String otp=request.getParameter("otp");
String id=request.getParameter("pid");

session.setAttribute("pid", id);


try{
	Connection con=Dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE hos.patientreg set otp='"+otp+"' where email='"+id+"' ");
	response.sendRedirect("MailSendkey.java?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>
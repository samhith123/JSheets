<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="DBConnection.jsp" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String ss1=request.getParameter("fname");
String ss2=request.getParameter("pass");
String ss3=request.getParameter("branch");
String ss4=request.getParameter("semister");
String ss5=request.getParameter("sub");
String ss6=request.getParameter("utype");
pst=con.prepareStatement("insert into faculties values('"+ss1+"','"+ss2+"','"+ss3+"','"+ss4+"','"+ss5+"','"+ss6+"')");
int i=pst.executeUpdate();
if(i>0)
{
	response.sendRedirect("rr.jsp");
}
%>
</body>
</html>
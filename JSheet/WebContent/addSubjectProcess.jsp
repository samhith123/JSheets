<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="DBConnection.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tsheet</title>
</head>
<body>

<% 
  String dept=request.getParameter("branch");
String sem= request.getParameter("semister");
String scode= request.getParameter("scode");
String sname= request.getParameter("sname");
 pst=con.prepareStatement("insert into subject(branchid,semid,subcode,subname) values(?,?,?,?)");
pst.setString(1, dept);
pst.setString(2,sem);
pst.setString(3, scode);
pst.setString(4, sname);
int i=pst.executeUpdate();
if(i>0){
%>
<script>
alert("values inserted successfully....");
location.href="adminhome.jsp"
</script>
<%}
else{
%>
<script>
alert("not inserted successfully....");
location.href="adminhome.jsp"
</script>
<%} %>
</body>
</html>
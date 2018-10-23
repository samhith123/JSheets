<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@include file="DBConnection.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tsheet</title>
</head>
<body>
<%
int i=0;
String ltype= request.getParameter("usertype");
String username= request.getParameter("uname");
String pwd= request.getParameter("pass");
session.setAttribute("uname", username);
session.setAttribute("pass", pwd);
if(ltype.equals("admin"))
{

	if(username.equals("admin") && pwd.equals("admin"))
	{
		session.setAttribute("uname", username);
		session.setAttribute("pass", pwd);
		response.sendRedirect("adminhome.jsp");
	}
	else
	{
	request.setAttribute("login","fail");%>
	<jsp:forward page="login.jsp"></jsp:forward>
	<%
	}
}
else if(ltype.equals("hod"))
{
	pst = con.prepareStatement("select * from faculties where fname=? and password = ? and utype=?;");
	pst.setString(1,username);
	pst.setString(2,pwd);
	pst.setString(3,ltype);
	rs = pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("uname", username);
		session.setAttribute("pass", pwd);
		response.sendRedirect("hodhome.jsp");
	}
	else
	{
	request.setAttribute("login","fail");%>
	<jsp:forward page="login.jsp"></jsp:forward>
	<%
	}
}

else if(ltype.equals("tpo"))
{
	pst = con.prepareStatement("select * from faculties where fname=? and password = ? and utype=?");
	pst.setString(1,username);
	pst.setString(2,pwd);
	pst.setString(3,ltype);
	rs = pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("uname", username);
		session.setAttribute("pass", pwd);
		response.sendRedirect("tpohome.jsp");
	}
	else
	{
	request.setAttribute("login","fail");%>
	<jsp:forward page="login.jsp"></jsp:forward>
	<%
	}
}
else if(ltype.equals("faculty"))
{
	pst = con.prepareStatement("select * from faculties where fname=? and password = ? and utype=?");
	pst.setString(1,username);
	pst.setString(2,pwd);
	pst.setString(3,ltype);
	rs = pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("uname", username);
		session.setAttribute("pass", pwd);
		response.sendRedirect("facultyhome.jsp?msg=succss");
	}
	else
	{
	request.setAttribute("login","fail");%>
	<jsp:forward page="login.jsp"></jsp:forward>
	<%
	}
}
else if(ltype.equals("student"))
{
	pst = con.prepareStatement("select * from users where halltktno=? and password = ? and utype=?");
	pst.setString(1,username);
	pst.setString(2,pwd);
	pst.setString(3,ltype);
	rs = pst.executeQuery();
	if(rs.next())
	{
		response.sendRedirect("studenthome.jsp");
	}
	else
	{
	request.setAttribute("login","fail");%>
	<jsp:forward page="login.jsp"></jsp:forward>
	<%
	}
}
else if(ltype.equals("company"))
{
	pst = con.prepareStatement("select * from faculties where fname=? and password = ? and utype=?");
	pst.setString(1,username);
	pst.setString(2,pwd);
	pst.setString(3,ltype);
	rs = pst.executeQuery();
	if(rs.next())
	{
		session.setAttribute("uname", username);
		session.setAttribute("pass", pwd);
		response.sendRedirect("companyhome.jsp");
	}
	else
	{
	request.setAttribute("login","fail");%>
	<jsp:forward page="login.jsp"></jsp:forward>
	<%
	}
} 
%>
</body>
</html>
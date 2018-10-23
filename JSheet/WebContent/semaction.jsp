<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="DBConnection.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Tsheet</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!--
spigot, a free CSS web template by ZyPOP (zypopwebtemplates.com/)

Download: http://zypopwebtemplates.com/

License: Creative Commons Attribution
//-->
</head>
<body>
<div id="container">
    <header>
    	<h1><a href="/">Student<span> Report Generator</span></a></h1>
        <h2>(Jntu T Sheets)</h2>
    </header>
    <nav>
    	<ul>
  
        	<li class="start selected"><a href="addsubjet.html">Home</a></li>
           
<li><a href="sv.jsp"><span></span>view Students</a></li>
	        <li><a href="submark.jsp"><span></span>SubjectWise Marks</a></li>
            <li><a href="viewsem.jsp"><span></span>Semester Marks</a></li>
                        <li><a href="logout.jsp"><span></span>LOGOUT</a></li>
            
        </ul>
    </nav>

	<img class="header-image" src="images/image.jpg" alt="Buildings" />

    <div id="body">

		

		<section id="content">

	   
			<div class="article-info">
		
 <h1 align="center">Student individual marks</h1><br><br>

<%
String rollno=request.getParameter("rollno");
String sem=request.getParameter("semister");
//List<MarksPojo> values=new ArrayList<MarksPojo>();
PreparedStatement pst1=con.prepareStatement("SELECT branch.branchname, halltctno, marks.subname, internal, external, total FROM marks INNER JOIN subject ON marks.subcode = subject.subcode LEFT JOIN semister ON semister.semid = subject.semid	LEFT JOIN branch ON branch.branchid = subject.branchid WHERE halltctno = ?");
pst1.setString(1,rollno);
 ResultSet rs1=pst1.executeQuery();
 String s1="",s2="";
while(rs1.next()){
s1=rs1.getString(1);
s2=rs1.getString(2);}%>
 <table border="1" align="center">
    <tr><td>Branch</td><td>Halltktno</td></tr>
    
<tr><td><%=s1%></td><td><%=s2 %></td></tr></table>
<table border="1" align="center"><tr>
    <td>subject</td><td>internal</td><td>external</td><td>total</td><td>Credits</td></tr>
<%
//MarksPojo pojo=null;
 pst=con.prepareStatement("SELECT branch.branchname, halltctno, marks.subname, internal, external, total, credits, subject.semid FROM marks INNER JOIN subject ON marks.subcode = subject.subcode LEFT JOIN semister ON semister.semid = subject.semid LEFT JOIN branch ON branch.branchid = subject.branchid WHERE halltctno = ? AND subject.semid =?");
pst.setString(1,rollno);
pst.setString(2,sem);
 rs=pst.executeQuery();
 
while(rs.next())
{
%>
	
	<tr>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4)%> </td>
	<td><%=rs.getString(5) %></td>
	<td><%=rs.getString(6) %></td>
	<td><%=rs.getString(7) %></td>
	</tr>
	
<%	
}

%>
			</table> 
			</div></section>
        
        <aside class="sidebar">
	
            <ul>	
               <li>
                    <h4>Categories</h4>
                    <ul>
                        <li><a href="index.html">Home Page</a></li>
                        <li><a href="examples.html">Style Examples</a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </li>
                
                <li>
                    <h4>About us</h4>
                    <ul>
                        <li class="text">
                        	<p style="margin: 0;">Malla Reddy Engineering College</a></p>
                        </li>
                    </ul>
                </li>
                
           
                
               
                
            </ul>
		
        </aside>
    	<div class="clear"></div>
    </div>
    <footer>
        
        <div class="footer-bottom">
            <p>&copy; YourSite 2015. <a href="http://zypopwebtemplates.com/"> copy rights </a> by kruthi</p>
         </div>
    </footer>
</div>
</body>
</html>
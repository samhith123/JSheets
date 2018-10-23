<!doctype html>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@include file="DBConnection.jsp" %>
<%@ page import="java.sql.*" %>
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
  
        	
  <li><a href="studenthome.jsp" class="current"><span></span>Home</a></li>
     <li><a href="viewprofile.jsp"><span></span>view Profile</a></li>
	       <li><a href="semwiseresult.jsp"><span></span>View SemWise Result</a></li>
            <li><a href="subject wise marks.jsp"><span></span>subject wise Marks</a></li>
             <li><a href="aggs.jsp"><span></span>Total Aggregates </a></li>
                        <li><a href="logout.jsp"><span></span>LOGOUT</a></li>
            
        </ul>
    </nav>

	<img class="header-image" src="images/image.jpg" alt="Buildings" />

    <div id="body">

		

		<section id="content">

	   
			<div class="article-info">
			<table border="1"><tr><th style="padding: 10px; color: #123456">Semid</th><th style="padding: 10px; color: #123456">Semister</th><th style="padding: 10px; color: #123456">Total</th><th style="padding: 10px; color: #123456">Average</th></tr>
<%
String ss=request.getParameter("hall");

pst=con.prepareStatement("SELECT s.semid, semister, SUM( total ) AS total, CASE WHEN s1.semid =1 THEN ( SUM( total ) /8) ELSE ( SUM( total ) /8) END AS Avg FROM marks m INNER JOIN subject s ON m.subcode = s.subcode INNER JOIN semister s1 ON s1.semid = s.semid WHERE m.halltctno = ? GROUP BY s.semid, s1.semister");
pst.setString(1, ss);
ResultSet rs1=pst.executeQuery();
String ss1="",ss2="",ss3="",ss4="";
while(rs1.next())
{
	ss1=rs1.getString(1);
	ss2=rs1.getString(2);
	ss3=rs1.getString(3);
	ss4=rs1.getString(4);%>
	<tr><th><%=ss1 %></th><th><%=ss2 %></th><th><%=ss3 %></th><th><%=ss4 %></th></tr><% 
}


%></table>
			 
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
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>spigot - Free CSS Template by ZyPOP</title>
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
        	<li><a href="reg.html"><span></span>Upload Student</a></li>
           <li><a href="addsubject.jsp"><span></span>ADD SUBJECT</a></li>
            <li><a href="viewstu.jsp"><span></span>view Students</a></li>
	        <li><a href="uploadmrks.jsp"><span></span>UPLOAD MARKS</a></li>
            <li><a href="viewreport1.jsp"><span></span>VIEW REPORT</a></li>
                        <li><a href="logout.jsp"><span></span>LOGOUT</a></li>
            
        </ul>
    </nav>

	<img class="header-image" src="images/image.jpg" alt="Buildings" />

    <div id="body">

		

		<section id="content">

	   
			<div class="article-info">
			<%@include file="DBConnection.jsp" %> 
			<%@page import='java.sql.*' %>
			<h2 align="center">View Student Details:</h2>
			<br>
			<br>
			<br>
			<table align="center" border="1"><tr><td>
<b align='center'>HallTicketNo </b></td><td><b align='center'>Name</b></td><td><b align='center'>Email</b></td><td><b align='center'>Phone</b></td><td><b align='center'>Address</b></td><td><b align='center'>Branch</b></td></tr>
			
			
			
<%
String bran=request.getParameter("branch");
System.out.println(bran);
Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery("select * from users where branch='"+bran+"'");
System.out.println("select * from users where branch="+bran);
while(rs1.next())
{
	%>

		<tr><td>
		<%=rs1.getString(1) %>
		</td>
		<td>
		<%=rs1.getString(3) %>
		</td>
		<td>
		<%=rs1.getString(4) %>
		</td>
		<td>
		<%=rs1.getString(5) %>
		</td>
		<td>
		<%=rs1.getString(6) %>
		</td>
		<td><%=rs1.getString(7)%></td>
		
		</tr>
		<%} %>


</table>
			 
			</div></section>
        
        <aside class="sidebar">
	
            <ul>	
               <li>
                    <h4>Categories</h4>
                    <ul>
                        <li><a href="index.html">Home Page</a></li>
                        <li><a href="examples.html">Style Examples</a></li>
                        <li><a href="#">Commodo vestibulum sem mattis</a></li>
                        <li><a href="#">Sed aliquam libero ut velit bibendum</a></li>
                        <li><a href="#">Maecenas condimentum velit vitae</a></li>
                    </ul>
                </li>
                
                <li>
                    <h4>About us</h4>
                    <ul>
                        <li class="text">
                        	<p style="margin: 0;">Aenean nec massa a tortor auctor sodales sed a dolor. Duis vitae lorem sem. Proin at velit vel arcu pretium luctus. 					<a href="#" class="readmore">Read More &raquo;</a></p>
                        </li>
                    </ul>
                </li>
                
           
                
               
                
            </ul>
		
        </aside>
    	<div class="clear"></div>
    </div>
    <footer>
        
        <div class="footer-bottom">
            <p>&copy; YourSite 2013. <a href="http://zypopwebtemplates.com/">Free CSS Website Templates</a> by ZyPOP</p>
         </div>
    </footer>
</div>
</body>
</html>
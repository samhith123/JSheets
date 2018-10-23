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
  
      
        	
			<li ><a href="studenthome.jsp">Home</a></li>
			<li ><a href="viewprofile.jsp"><span></span>view Profile</a></li>
			<li><a href="semwiseresult.jsp"><span></span>View SemWise Result</a></li>
			<li class="start selected"><a href="subjectwisemarks.jsp"><span></span>subject wise Marks</a></li>
			<li><a href="aggs.jsp"><span></span>Total Aggregates </a></li>
			<li><a href="logout.jsp"><span></span>LOGOUT</a></li>
        </ul>
    </nav>

	<img class="header-image" src="images/image.jpg" alt="Buildings" />

    <div id="body">

		

		<section id="content">

	   
			<div class="article-info">
	
<%session.getAttribute("pwd"); %>
		<h5 >Welcome to:</h5> <%=session.getAttribute("uname")%>
			<% 
String name=session.getAttribute("uname").toString();%>
        <form action="studentsubaction.jsp" method="post">
        
        <input type="hidden" name="rollno"  value="<%=name%>">
		<table align="center"><tr><td>Subject Name:</td>
        <td><select name="cname">
        
            <%
      
try{

     
        String p,q;
    
        pst = con.prepareStatement("select * from subject");
    	
    	
    	rs=pst.executeQuery();
            while(rs.next())
	{
                
                q=rs.getString(5);
                %>
                 <option value="<%=q%>"><%=q%></option>
               <%}

             }
            catch(Exception e)
                     {

             }
		 
			 
			 
			 
			 
		 
%>	
<input type="submit" value="submit">
      </table>
        </form>
       </div> </section><br>
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
                        	<!-- <p style="margin: 0;">Malla Reddy Engineering College</a></p> -->
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		
			
<h3>Welcome to Student</h3>
  <form action="semaction.jsp">
<table>
<tr><td>Enter Roll No:</td><td><input type="text" name="rollno"/></td>
</tr>
<tr><td>

<b> SEMISTER:</b></td><td><select name='semister'>
<option>select semister</option>
<option value="1">First year</option>
<option value="2">Second year 1 sem</option>
<option value="3">Second year 2 sem</option>
<option value="4">Third year 1 sem</option>
<option value="5">Third year 2 sem</option>
<option value="6">Fourth year 1 sem</option>
<option value="7">Fourth year 2 sem</option></select></td></tr>

<tr><td></td><td><input type="submit" value="submt"/>
</td></tr>



</table>
</form>
			 
			 
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
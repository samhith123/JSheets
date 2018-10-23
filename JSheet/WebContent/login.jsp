<!doctype html>
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
        	<li ><a href="index.html">Home</a></li>
            <li class="start selected"><a href="login.jsp">Login</a></li>
           <li class=""><a href="rr.jsp">Faculty Registration</a></li>
            <li><a href="#">About Us</a></li>
            <li class="end"><a href="#">Contact Us</a></li>
        </ul>
    </nav>

	<center><img class="header-image" src="images/image.jpg" alt="Buildings" /></center>

    <div id="body">

		

		<section id="content">

	   
			<div class="article-info">
			<center><h3 align="center">Login Page</h3></center>
			<%if(request.getAttribute("login")!=null){%>
<center><font color="red"><b>Invalid User Name or Password</b></font></center>
<%}%>
      <form action="loginProcess.jsp">
      <br>
      <br><br>
       <table align="center" cellpadding=5 cellspacing=5>
       <tr><td></td><td></td><td><td></td><td></td><td></td><td></td><td>Login Type</td><td align="center"><select name="usertype"><option value="admin">Admin</option><option value="hod">HOD</option><option value="tpo">TPO</option> <option value="faculty">Faculty</option><option value="student">Student</option><option value="company">Company</option></select></td></tr>
      <tr><td></td><td></td><td><td></td><td></td><td></td><td></td><td>User Name</td><td><input type="text" name="uname"></td></tr>
      <tr><td></td><td></td><td><td></td><td></td><td></td><td></td><td>Password</td><td><input type="password" name="pass"></td></tr>
      <tr><td></td><td></td><td><td></td><td></td><td></td><td></td><td colspan="8" align="center"><input type="submit" value="Login"><input type="reset" value="Cancel"></td></tr>
      </table>
      </form>
			 
			</div></section>
        
        <aside class="sidebar">
	
            <ul>	
               <li>
                    <h4>Categories</h4>
                    <ul>
                        <li><a href="index.html">Home Page</a></li>
                        
                          <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </li>
                
                <li>
                    <h4>About us</h4>
                    <ul>
                        <li class="text">
                        	<p style="margin: 0;">JNTU hyderabad</a></p>
                        </li>
                    </ul>
                </li>
                
           
                
               
                
            </ul>
		
        </aside>
    	<div class="clear"></div>
    </div>
    <footer>
        
        <div class="footer-bottom">
            <p><a href="http://zypopwebtemplates.com/"> copy rights </a>@ K & A</p>
         </div>
    </footer>
</div>
</body>
</html>
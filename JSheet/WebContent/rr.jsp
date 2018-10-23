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
        	<li ><a href="index.html">Home</a></li>
            <li class=""><a href="login.jsp">Login</a></li>
           <li class="start selected"><a href="rr.jsp">FRegistration</a></li>
            <li><a href="#">About Us</a></li>
            <li class="end"><a href="#">Contact Us</a></li>
        </ul>
    </nav>

	<center><img class="header-image" src="images/image.jpg" alt="Buildings" /></center>

    <div id="body">

		

		<section id="content">

	   
			<div class="article-info">
			<h3 align="center">Faculties Registration:</h3>
			
      <form action="rreg.jsp">
      <br>
      <br><br>
       <table align="center" cellpadding=5 cellspacing=5>
      <tr><td>Fname</td><td><input type="text" name="fname"></td></tr>
       <tr><td>Password</td><td><input type="password" name="pass"></td></tr>
        <tr><td>Branch</td><td><select name='branch'>
<option>select option</option>
<option value="1">CSE</option>
<option value="3">EEE</option>
<option value="2">ECE</option>
<option value="4">IT</option>
<option value="5">MEC</option>
<option value="6">CIVIL</option></select></td></tr>
         <tr><td>Semister</td><td><select name='semister'>
<option>select semister</option>
<option value="1">First year</option>
<option value="2">Second year 1 sem</option>
<option value="3">Second year 2 sem</option>
<option value="4">Third year 1 sem</option>
<option value="5">Third year 2 sem</option>
<option value="6">Fourth year 1 sem</option>
<option value="7">Fourth year 2 sem</option></select></td></tr>
          <tr><td>Subject</td><td><input type="text" name="sub"></td></tr>
           <tr><td>Utype</td><td><select name='utype'>
<option>select utype</option>
<option value="hod">hod</option>
<option value="tpo">tpo</option>
<option value="faculty">faculty</option>
<option value="company">company</option>

</select></td></tr>
 <tr><td></td><td><input type="submit" value="Add"></td></tr>
     
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
                        	<p style="margin: 0;">Malla Reddy Engineering College(Autonomous)</a></p>
                        </li>
                    </ul>
                </li>
                
           
                
               
                
            </ul>
		
        </aside>
    	<div class="clear"></div>
    </div>
    <footer>
        
        <div class="footer-bottom">
            <p>Done by Team Ethinics <a href="http://zypopwebtemplates.com/"> copy rights </a>@ K & A</p>
         </div>
    </footer>
</div>
</body>
</html>
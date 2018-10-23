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
  
        	
  <li><a href="adminhome.jsp" class="current"><span></span>Home</a></li>
            <li><a href="viewreport.jsp"><span></span>View ClassWise</a></li>
	        <li><a href="individualmarks.jsp"><span></span>Individual Marks</a></li>
            <li><a href="agg.jsp"><span></span>Aggregate Marks</a></li>
             <li><a href="baclok.jsp"><span></span>Back Locks</a></li>     
            <li><a href="logout.jsp"><span></span>Logout</a></li>
            
        </ul>
    </nav>

	<img class="header-image" src="images/image.jpg" alt="Buildings" />

    <div id="body">

		

		<section id="content">

	   
			<div class="article-info">
			<h3 align="center">View ClassWise Result</h3>
<form action="viewStudentMarks.jsp" >
<br><br>
  <center> <table> <tr><td>
BRANCH :</td><td><select name='branch'>
<option>select option</option>
<option value="1">CSE</option>
<option value="3">EEE</option>
<option value="2">ECE</option>
<option value="4">IT</option>
<option value="5">MEC</option>
<option value="6">CIVIL</option></select></td></tr>
<tr align="center"><td>

<b> SEMISTER:</b></td><td><select name='semister'>
<option>select semister</option>
<option value="1">First year</option>
<option value="2">Second year 1 sem</option>
<option value="3">Second year 2 sem</option>
<option value="4">Third year 1 sem</option>
<option value="5">Third year 2 sem</option>
<option value="6">Fourth year 1 sem</option>
<option value="7">Fourth year 2 sem</option></select></td></tr>
<tr><td>
<tr><td><input type='submit' value='view'></td>
<td><input type='reset' value='reset'></td>
</tr>
    </table>
    </center> 
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
                        	<p style="margin: 0;">JNTU Hyderabad</a></p>
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
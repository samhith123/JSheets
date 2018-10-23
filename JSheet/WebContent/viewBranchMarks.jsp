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
            <li><a href="individualbranch.jsp"><span></span>Individual Branch</a></li>
                  
            <li><a href="logout.jsp"><span></span>Logout</a></li>
            
        </ul>
    </nav>

	<img class="header-image" src="images/image.jpg" alt="Buildings" />

    <div id="body">

		

		<section id="content">

	   
			<div class="article-info">
			
<h1 align="center">Branch Wise Details:</h1><br><br>
    <table border="1" align="center">
    <tr><td>AccYr</td><td>Year</td><td>branch</td><td>Pass%</td></tr>
    <%@include file="DBConnection.jsp" %>
<%
String branchid=request.getParameter("branch");

//List<MarksPojo> values=new ArrayList<MarksPojo>();
//MarksPojo pojo=null;
 pst=con.prepareStatement("select AccYr,st.semister,b.branchname,(COUNT(distinct halltctno)*100/COUNT(distinct halltctno)) pass from marks m inner join users std on std.halltktno=m.halltctno inner join subject s on m.subcode=s.subcode inner join semister st on s.semid=st.semid inner join branch b on s.branchid=b.branchid where total>30 and b.branchid=? group by AccYr,b.branchname,semister having COUNT(halltctno)>2 ");
pst.setString(1,branchid);
 rs=pst.executeQuery();
while(rs.next()){%>
	
	<tr><td><%=rs.getString(1)%></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4)%> </td>
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
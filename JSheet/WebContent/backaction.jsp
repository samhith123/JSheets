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
			
<h3 align="center">Back Locks:</h3>
<%@include file="DBConnection.jsp" %> 
<%
String rollno=request.getParameter("rollno");

//List<MarksPojo> values=new ArrayList<MarksPojo>();
%>
<table border="1" align="center"><tr>
    <td style="padding:10px; color: #123456">Branch</td><td style="padding:10px; color: #123456">Halltktno</td><td style="padding:10px; color: #123456">subject</td><td style="padding:10px; color: #123456">internal</td><td style="padding:10px; color: #123456">external</td><td style="padding:10px; color: #123456">total</td><td style="padding:10px; color: #123456">Credits</td></tr>
<%
//MarksPojo pojo=null;
 pst=con.prepareStatement("SELECT branch.branchname, halltctno, marks.subname, internal, external, total,credits FROM marks INNER JOIN subject ON marks.subcode = subject.subcode LEFT JOIN semister ON semister.semid = subject.semid	LEFT JOIN branch ON branch.branchid = subject.branchid WHERE halltctno = ? and credits=0");
pst.setString(1,rollno);
 rs=pst.executeQuery();
 
while(rs.next())
{
%>
	
	<tr>
		<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2)%> </td>
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
                        <li><a href="examples.html"></a></li>
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

 <%@include file="DBConnection.jsp" %><!doctype html>
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
  
         	<li class="start selected"><a href="facultyhome.jsp">Home</a></li>
   <li><a href="facultyclasswise.jsp"><span></span>ClassWise</a></li>
	       
       
            <li><a href="subjectwise.jsp"><span></span>subject wise Result</a></li>
                 <li><a href="percentage.jsp"><span></span>Percentage </a></li>
                        <li><a href="logout.jsp"><span></span>LOGOUT</a></li>
            
        </ul>
    </nav>

	<img class="header-image" src="images/image.jpg" alt="Buildings" />

    <div id="body">

		

		<section id="content">

	   
			<div class="article-info">
			<h2>View SemWise Marks</h2>
			
<%
        PreparedStatement pst1=null;
          pst=con.prepareStatement("select subcode from subject where branchid=? and semid=?");
       try{
          String brachid=request.getParameter("branch");
          String semid=request.getParameter("semister");
          pst.setString(1, brachid);
          pst.setString(2, semid);
     rs= pst.executeQuery();
          String query="SELECT m.halltctno,MAX(ValueData1) as sub1,MAX(ValueData2) as sub2,MAX(ValueData3) as sub3,MAX(ValueData4) as sub4,MAX(ValueData5) as sub5,MAX(ValueData6) as sub6,MAX(ValueData7) as sub7,MAX(ValueData8) as sub8 FROM(SELECT halltctno,total,CASE WHEN subcode=? THEN total END AS ValueData1,CASE WHEN subcode=? THEN total END AS ValueData2,CASE WHEN subcode=? THEN total END AS ValueData3,CASE WHEN subcode=? THEN total END AS ValueData4,CASE WHEN subcode=? THEN total END AS ValueData5,CASE WHEN subcode=? THEN total END AS ValueData6,CASE WHEN subcode=? THEN total END AS ValueData7,CASE WHEN subcode=? THEN total END AS ValueData8 FROM marks) AS m inner join users st on st.halltktno=m.halltctno GROUP BY halltctno";
          pst1=con.prepareStatement(query);
          System.out.println(" sdfsdfdsfsd  "+query);
        %>
        <%
        int total=0;
        int i=1;
        while(rs.next()){
        	
     	
        		
        	pst1.setString(i,rs.getString(1));
        	System.out.println(i+" "+rs.getString(1));
        	i++;
        	}
        	
        	
        	
        
        rs.close();
        pst.close();
        
          ResultSet rs1=pst1.executeQuery();
          System.out.println("im in");
        %>
       
        
        <form action="viewStudentMarks.jsp">
        
    <table align="center" border="1"><tr><td>
<b align='center'>HallTicketNo </b></td><td><b align='center'>Sub1</b></td><td><b align='center'>Sub2</b></td><td><b align='center'>Sub3</b></td><td><b align='center'>Sub4</b></td><td><b align='center'>Sub5</b></td><td><b align='center'>Sub6</b></td><td><b align='center'>Sub7</b></td><td><b align='center'>Sub8</b></td><td><b align='center'>total</b></td><td><b align='center'>Avg</b></td></tr>

<% 

while(rs1.next()){
	if(rs1.getString(2)==null){
		total+=0;
	}else{
		total+=Integer.parseInt(rs1.getString(2));
	}
	if(rs1.getString(3)==null){
		total+=0;
	}else{
		total+=Integer.parseInt(rs1.getString(3));
	}
	if(rs1.getString(4)==null){
		total+=0;
	}else{
		total+=Integer.parseInt(rs1.getString(4));
	}
	if(rs1.getString(5)==null){
		total+=0;
	}else{
		total+=Integer.parseInt(rs1.getString(5));
	}
	if(rs1.getString(6)==null){
		total+=0;
	}else{
		total+=Integer.parseInt(rs1.getString(6));
	}	if(rs1.getString(7)==null){
		total+=0;
	}else{
		total+=Integer.parseInt(rs1.getString(7));
	}
	if(rs1.getString(8)==null){
		total+=0;
	}else{
		total+=Integer.parseInt(rs1.getString(8));
	}
	if(rs1.getString(9)==null){
		total+=0;
	}else{
		total+=Integer.parseInt(rs1.getString(9));
	}
	%>
<tr><td>
<%=rs1.getString(1) %>
</td>
<td>
<%=rs1.getString(2) %>
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
<td>
<%=rs1.getString(7) %>
</td>
<td>
<%=rs1.getString(8) %>
</td>
<td>
<%=rs1.getString(9) %>
</td>
<td><%=total %></td>
<td>
<%=total/8 %>
</td>
</tr>
<%
total=0;

} 
       }
       catch(Exception e){
    	   e.printStackTrace();
    	   response.sendRedirect("error.jsp");
       }
%>
    </table>
    <%-- <%
    PreparedStatement ps1=con.prepareStatement("select * from agrigate where uname='"++"'")
    
    
    
     %> --%>
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
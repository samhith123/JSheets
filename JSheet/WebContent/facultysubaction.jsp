<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="DBConnection.jsp"%>
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
		<h1>
			<a href="/">Student<span> Report Generator</span></a>
		</h1>
		<h2>(Jntu T Sheets)</h2>
		</header>
		<nav>
		<ul>

			<li ><a href="facultyhome.jsp">Home</a></li>
			<li><a href="facultyclasswise.jsp"><span></span>ClassWise</a></li>


			<li class="start selected"><a href="subjectwise.jsp"><span></span>subject wise
					Result</a></li>
			<li><a href="logout.jsp"><span></span>LOGOUT</a></li>

		</ul>
		</nav>

		<img class="header-image" src="images/image.jpg" alt="Buildings" />

		<div id="body">



			<section id="content">


			<div class="article-info">

				<%
					session.getAttribute("pwd");
				%>
				Welcome to:<%=session.getAttribute("uname")%>
				<h1>
					<center>
						<font color="blue">Details </font>
					</center>
				</h1>
				<table border="1" bgcolor="wheat" align="center">
					<th><font color="green">HT NO</font></th>
					<th><font color="green">Internal</font></th>
					<th><font color="green">External</font></th>
					<th><font color="green">total</font></th>
					<th><font color="green">Credits</font></th>
					<%
						try {
							String sub = request.getParameter("cname");
							pst = con
									.prepareStatement("select * from marks where subname='"
											+ sub + "'");
							//out.println(username);
							//String mid=null;
							rs = pst.executeQuery();
							while (rs.next()) {
					%>
					<tr>

						<td align="center"><%=rs.getString(1)%></td>
						<td align="center"><%=rs.getString(4)%></td>
						<td align="center"><%=rs.getString(5)%></td>


						<td align="center"><%=rs.getString(6)%></td>
						<td align="center"><%=rs.getString(7)%></td>
					</tr>
					<%
						}
						} catch (Exception e) {
							out.println(e);
							//out.println("exception occured");
						}
					%>

					</div>
					</section>
				</table>
				</form>
			</div>
			</section>

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
			<p>
				&copy; YourSite 2015. <a href="http://zypopwebtemplates.com/">
					copy rights </a> by kruthi
			</p>
		</div>
		</footer>
	</div>
</body>
</html>
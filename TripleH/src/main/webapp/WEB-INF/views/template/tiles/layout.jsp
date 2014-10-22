<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="/tripleH/resources/css/styleHeader.css"
	  type="text/css"	media="screen">
<link rel="stylesheet" href="/tripleH/resources/css/styleLogin.css" 
 	  type="text/css"   media="screen"> 
<link rel="stylesheet" href="/tripleH/resources/css/styleMenubar.css" 
	  type="text/css"	media="screen">	   
<link rel="stylesheet" href="/tripleH/resources/css/styleFooter.css"  
   	  type="text/css"	media="screen">	
   		   
<title>Insert title here</title>
</head>
<body bgcolor="#ffe681">
		<header>
			<tiles:insertAttribute name="header"/>
		</header>
		<nav>
			<tiles:insertAttribute name="menuBar"/>
		</nav>
	<div id="body">
		<section style="background-color: #ffe681" id="content">
			<tiles:insertAttribute name="body"/>
		</section>
	</div>
	<div>
		<footer>
			<tiles:insertAttribute name="footer"/>
		</footer>
	</div>
</body>
</html>
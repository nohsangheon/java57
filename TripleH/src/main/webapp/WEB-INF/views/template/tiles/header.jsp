<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#container > .link > .c > #outLink').click(function(){
			var res = confirm('정말 로그아웃 하시겠습니까?');
			if(res){
				location.replace('logOut.do');
			}else{
				
			}
		});
	});
	$(document).ready(function(){
		$('#container > .link > .c > #inlink').click(function(){
			location.replace('login.do');
		});
	});
	$(document).ready(function(){
		$('#container > .link > .b > #home').click(function(){
			location.replace('home.do');
		});
	});
</script>
<title>Insert title here</title>
</head>
<body>
<!-- Start your code here -->

  <div id="container">
    <div class="logo">
     <a href="www.naver.com">
     	<img/>
     </a>
    </div> 
    <div class="link">
    
	    <span class="b">
	      <a  id="home">Home</a>
	    </span>
	    
	     <span class="b">
	      <a>Service Map</a>
	    </span>
	    
	    <c:choose>
	    
	    <c:when test="${sessionScope.userId!=null }">
	    <span class="c">
	      <a  id="outLink">LogOut</a>
	    </span>
	    </c:when>
	    
	    <c:otherwise>
	    <span class="c">
	      <a id="inlink">Log In</a>
	    </span>
	    </c:otherwise>
	    
	    </c:choose>
    </div>
  </div>

<!-- End your code here -->
</body>
</html>
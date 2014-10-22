<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.2.min.js"></script>
<script type="text/javascript">
	$.fn.buttonClass = function(cls){
		return this.siblings().removeClass(cls).end().addClass(cls);
	}
	$(document).ready(function(){
		$('.menu > #list > li').click(function(){
			$(this).buttonClass('active');
		});
	});

// 	$(function(){
// 		$(".itemManage").click(function(){
// 			$.ajax({
// 				type: 'get'
// 				,url: 'itemManage.do'
// 				,dataType:"html"
// 				,success: function(data){
// 					$(".menu").html(data);
// 				}
// 			});
// 		});
// 	});
	
</script>
</head>
<body>
<c:choose>
<c:when test="${sessionScope.userId!=null }">
<div class="menu">
    <ul id="list">
        <li>
            <a class="memberManage">회원정보</a>
        </li>
        <li>
            <a class="storeManage">사업장관리</a>
        </li>
        <li>
            <a class="itemManage" href="itemManage.do">상품관리</a>
        </li>
        <li>
            <a class="eventManage">이벤트관리</a>
        </li>
    </ul>
</div>
</c:when>
<c:otherwise>

</c:otherwise>
</c:choose>
</body>
</html>
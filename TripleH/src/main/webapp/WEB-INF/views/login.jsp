<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	var msg = document.getElementById("msg");
	
	if(msg!=null){
		function testAlertBox() {
		    alert('아이디와 비밀번호를 확인하세요');
		  }
	}
</script>
<body>

<div id="login">
	<c:if test="${msg!=null }">
		<script type="text/javascript">
		alert('아이디와 비밀번호를 확인하세요');
		</script>
	</c:if>
		<form action="loginProc.do" method="POST">

			<fieldset>
		<h2><span class="fontawesome-lock"></span>Log In</h2>

				<p><label for="email">ID</label></p>
				<p><input type="text" id="email" name="userId" placeholder="input your ID"></p> 

				<p><label for="password">Password</label></p>
				<p><input type="password" id="password" name="password" placeholder="input your password"></p>

				<table id="table" >
				<tr>
				<td>
					<input type="submit" value="로그인"></td>
				<td>
					<input type="button" value="회원가입" onclick="document.location='register.do'">
				</td>
				</tr>
				</table>

			</fieldset>

		</form>

	</div>

</body>
</html>
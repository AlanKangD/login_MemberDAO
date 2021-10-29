<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../default/header.jsp"/>
<c:if test="${loginUser == null }">
<h2>로그인 페이지 입니다. </h2>
<div class="wrap" align="right">
	
	<form action="${contextPath}/user/userLogin.jsp" >
		<input type="text" name="id" placeholder="input_id"> <br>
		<input type="password" name="pwd" placeholder="input_id"><br>
		<input type="submit" value="로그인">
		<button type="button" onclick="location='${contextPath }/member/register_fom.jsp'">회원가입</button>
	</form> <!-- 여기서 처리를 회원가입을 따로 놓고 input을 로그인으로 준후에 form action값을 login기능 페이지 기능으로 보내주고 회원가입은 따로 만들어줘야 처리를 해줘야 할 것 같음 -->

</div>
</c:if>
<c:if test="${loginUser != null }">
	<h1>로그인 성공</h1>
</c:if>
<jsp:include page="../default/footer.jsp"/>

</body>
</html>
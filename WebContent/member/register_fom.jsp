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
<div class="wrap">
	<jsp:include page="../default/header.jsp"/>
		<form action="${contextPath }/member/register_func.jsp">
			<input type="text" name="id" placeholder="아이디"> <br>
			<input type="password" name="pw" placeholder="비밀번호"> <br>
			<input type="text" name="name" placeholder="이름"> <br>
			<input type="text" name="addr" placeholder="주소">  <br>
			<input type="submit" value="회원가입">
		</form>
	
	
	<jsp:include page="../default/footer.jsp"/>
</div>
</body>
</html>
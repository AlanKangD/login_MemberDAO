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
<jsp:useBean id="dto" class="com.care.root.dto.MemberDTO"/>
<jsp:useBean id="dao" class="com.care.root.dao.MemberDAO"/>
<jsp:setProperty property="*" name="dto"/>
<c:set var="mem" value="${dao.chkLogin(dto.id, dto.pwd) }"/>


<c:if test="${mem == 1 }">
	<c:set var="loginUser" value="${dto.id }" scope="session" />
				<c:redirect url="login_form.jsp"/>
</c:if>
<c:if test="${mem == 3 }">
	<script type="text/javascript">
			alert('아이디가 잘못되었습니다.')
			location.href="${contextPath}/user/login_form.jsp";
		</script>
</c:if>
<c:if test="${mem == 2 }">
	<script>
			alert('비밀번호가 잘못되었습니다.')
			location.href="${contextPath}/user/login_form.jsp";
	</script>
</c:if>



</body>
</html>
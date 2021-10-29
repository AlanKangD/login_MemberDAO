<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="com.care.root.dao.MemberDAO"/>
	<jsp:useBean id="dto" class="com.care.root.dto.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	<c:set var="result" value="${dao.register(dto) }"/>
	
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
				alert("회원가입이 성공적으로 진행되셨습니다.")
				location.href="${contextPath}/user/login_form.jsp";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("중복되는 아이디값이 있습니다. 다시한번 확인해주세요")
				location.href="${contextPath}/member/register_form.jsp";
			</script>
		</c:otherwise>
	</c:choose>
	
	
	

</body>
</html>
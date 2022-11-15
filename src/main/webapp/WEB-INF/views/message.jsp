<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<title>새해편지</title>
<link rel="stylesheet" href="<c:url value='/resources/css/default.css'/>">
<link rel="stylesheet" href="<c:url value='/resources/css/main.css'/>">
</head>
<body>
	<div id="content">
		<h1>메시지를 남겨주세요</h1>
		<form:form action="message" method="post" modelAttribute="guest" enctype="multipart/form-data"> <!--enctype 해당 폼이 multipart형식임을 알려준다 -->
		<input type="text" placeholder="새해 덕담을 남겨주세요!">
		<input type="text" placeholder="닉네임을 입력하세요(10자 이하)">
		<form:input path="file" type="file" value="파일 추가" onClick="fn_addFile()"/><br>
			  <div id="d_file">         
		       </div>
			<button type="submit">추가하기</button>
		</form:form>
		<div class="btn-box">
			<button>복주머니 전달하기</button>
		</div>
	</div>
</body>
</html>
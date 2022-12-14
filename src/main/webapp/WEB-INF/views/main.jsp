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
		<h1>${name}님에게<br>
		${num}개의 복주머니가 전달됐어요!
		</h1>
		<p>받은 복주머니는 1월 1일에 확인하실 수 있어요</p>
		<div class="btn-box">
			<button>링크 복사하기</button>
		</div>
	</div>
</body>
</html>
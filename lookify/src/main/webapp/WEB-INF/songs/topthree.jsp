<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Top 3 songs</title>
</head>
<body>
	<a href="/dashboard">Song Dashboard</a>
	<h1>Top Three</h1>
	<c:forEach items="${songs}" var="song">
		<p><c:out value="${song.rating}"/> - <a href="/songs/${song.id}"><c:out value="${song.title}"/></a> - by <c:out value="${song.artist}"/></p>
	</c:forEach>
</body>
</html>
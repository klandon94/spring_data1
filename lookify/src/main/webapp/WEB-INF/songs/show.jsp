<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>${song.title}</title>
</head>
<body>
	<a href="/dashboard">Song Dashboard</a>
	<br><br>
	<h1><c:out value="${song.title}"/></h1>
	<p>Artist: <c:out value="${song.artist}"/></p>
	<p>Rating: <c:out value="${song.rating}"/></p>
	<br><br>
	<a href="/songs/${song.id}/delete">Delete</a>
</body>
</html>
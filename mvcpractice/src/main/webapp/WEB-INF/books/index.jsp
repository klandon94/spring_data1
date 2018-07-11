<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Books</title>
</head>
<body>
	<h1>All Books</h1>
	<table class='table table-bordered' style="width:80%">
	    <thead>
	        <tr>
	            <th>Title</th>
	            <th>Description</th>
	            <th>Language</th>
	            <th>Number of Pages</th>
	        </tr>
	    </thead>
	    <tbody>
	        <c:forEach items="${books}" var="book">
	        <tr>
	            <td><a href="books/${book.id}"><c:out value="${book.title}"/></a></td>
	            <td><c:out value="${book.description}"/></td>
	            <td><c:out value="${book.language}"/></td>
	            <td><c:out value="${book.numberOfPages}"/></td>
	        </tr>
	        </c:forEach>
	    </tbody>
	</table>
	<br><br>
	<a href="/books/new">New Book</a>
</body>
</html>
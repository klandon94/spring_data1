<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Song Dashboard</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<style>
		#forms{
			display:flex;
			justify-content:space-around;
			margin-bottom: 50px;
		}
	</style>
</head>
<body>
	<h1>All Songs</h1>
	<div id='forms'>
		<a href="/songs/new">New Song</a>
		<a href="songs/topthree">Top Three Songs</a>
		<form action="/search" method="post">
			<input type="text" name="search">
			<input type="submit" value="Search">
		</form>   
	</div>
	<table class="table table-bordered">
	    <thead>
	        <tr>
	            <th>Artist</th>
	            <th>Title</th>
	            <th>Rating</th>
	            <th>Actions</th>
	        </tr>
	    </thead>
	    <tbody>
	        <c:forEach items="${songs}" var="song">
	        <tr>
	            <td><c:out value="${song.artist}"/></td>
	            <td><a href="/songs/${song.id}"><c:out value="${song.title}"/></a></td>
	            <td><c:out value="${song.rating}"/></td>
	            <td><a href="/songs/${song.id}/delete">Delete</a></td>  
	        </tr>
	        </c:forEach>
	    </tbody>
	</table>

</body>
</html>
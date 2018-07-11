<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Add new song</title>
	<style>
		.error{
			color:red;
		}
	</style>
</head>
<body>
	<a href="/dashboard">Song Dashboard</a>
	<br><br>
	<h1>Add new song</h1>
	<form:form action="/songs/new" method="post" modelAttribute="song">
		<form:errors path="title" class="error"/>
	    <p>
	        <form:label path="title">Title</form:label>	        
	        <form:input path="title" class="form-control"/>
	    </p>
	    <form:errors path="artist" class="error"/>
	    <p>
	        <form:label path="artist">Artist</form:label>	        
	        <form:input path="artist" class="form-control"/>
	    </p>
	    <p>
	        <form:label path="rating">Rating</form:label>
	        <form:errors path="rating" class="error"/>
	        <form:input type="number" path="rating" class="form-control"/>
	    </p>    
	    <input type="submit" value="Submit" class="btn btn-primary"/>
	</form:form>   
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>New Book</title>
	<style>
		.errors{
			color:red;
		}
	</style>
</head>
<body>
	<h1>New Book</h1>
	<form:form action="/books" method="post" modelAttribute="book">
    <form:errors path="title" class='errors'/>
    <p>    	
        <form:label path="title">Title</form:label>
        <form:input path="title"/>
    </p>
    <form:errors path="description" class='errors'/>
    <p>
        <form:label path="description">Description</form:label>
        <form:textarea path="description"/>
    </p>
	<form:errors path="language" class='errors'/>
    <p>
        <form:label path="language">Language</form:label>
        <form:input path="language"/>
    </p>
	<form:errors path="numberOfPages" class='errors'/>   
    <p>
        <form:label path="numberOfPages">Pages</form:label>  
        <form:input type="number" path="numberOfPages"/>
    </p>    
    <input type="submit" value="Submit"/>
</form:form>    
</body>
</html>
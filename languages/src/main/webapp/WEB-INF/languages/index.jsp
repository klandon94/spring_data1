<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ page isErrorPage="true" %>   
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Language</title>
	<style>
		.errors{
			color:red;
		}
	</style>
</head>
<body>
	<h1>All Languages</h1>
	<table class='table table-bordered' style="width:80%">
	    <thead>
	        <tr>
	            <th>Name</th>
	            <th>Creator</th>
	            <th>Version</th>
	            <th>Action</th>
	        </tr>
	    </thead>
	    <tbody>
	        <c:forEach items="${languages}" var="language">
	        <tr>
	            <td><a href="languages/${language.id}"><c:out value="${language.name}"/></a></td>
	            <td><c:out value="${language.creator}"/></td>
	            <td><c:out value="${language.version}"/></td>
	            <td><a href="/languages/${language.id}/edit">Edit</a>
	            <form action="/languages/${language.id}" method="post">
				    <input type="hidden" name="_method" value="delete">
				    <input type="submit" value="Delete">
				</form>
	            </td>
	        </tr>
	        </c:forEach>
	    </tbody>
	</table>
	<br><br>
	<h1>Add new language</h1>
	<form:form action="/languages" method="post" modelAttribute="language">
    <form:errors path="name" class='errors'/>
    <p>    	
        <form:label path="name">Name</form:label>
        <form:input path="name"/>
    </p>
    <form:errors path="creator" class='errors'/>
    <p>
        <form:label path="creator">Creator</form:label>
        <form:textarea path="creator"/>
    </p>
	<form:errors path="version" class='errors'/>
    <p>
        <form:label path="version">Version</form:label>
        <form:input path="version"/>
    </p>
    <input type="submit" value="Submit"/>
	</form:form>    
</body>
</html>
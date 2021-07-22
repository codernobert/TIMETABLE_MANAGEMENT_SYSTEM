<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"   uri="http://www.springframework.org/tags" %>   
    
<!DOCTYPE html>
<html>
<head>
      <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
  
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
      <div class="jumbotron">
           <h1> ${greeting} </h1>
           <p> ${tagline} </p>
      </div> 

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"   uri="http://www.springframework.org/tags" %>   
    
<!DOCTYPE html>
<html>
<head>
      <link href="webjars/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
      
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title>Admin Dashboard</title>
</head>
<body>
      <section>
    <div class="pull-right" style="padding-right:50px">
          <a href="<c:url value="/logout" />">Logout</a>
    </div>
</section>

<section>
    <div class="pull-left" style="padding-right:50px">
          <a href="<c:url value="/editTimetable" />">Edit Timetable</a>
    </div>
</section>

<section>
    <div class="pull-left" style="padding-right:50px">
          <a href="<c:url value="/addUnits" />">Add Units</a>
    </div>
</section>

<section>
    <div class="pull-left" style="padding-right:50px">
          <a href="<c:url value="/addLec" />">Add Lecturer</a>
    </div>
</section>
      
</body>
</html>
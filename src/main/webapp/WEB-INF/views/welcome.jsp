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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"><title>Welcome</title>
</head>
<body>
      <div class="jumbotron">
           <h1> ${greeting} </h1>
           <p> ${tagline} </p>
      </div> 

<section class="container">
     <form:form  class="form-horizontal">
        <fieldset>
        <legend>Add new Lecturer</legend>
           <div class="form-group">
           

               
               <div class="col-lg-offset-2 col-lg-10">
                   <a href="<c:url value="/addUnits" />">
                      <button type="button" class="btn btn-warning">
                             Add Units
                      </button>
                   </a>   
               </div>
               
               <br><br>
               
               <div class="col-lg-offset-2 col-lg-10">
                   <a href="<c:url value="/viewTimetable" />">
                      <button type="button" class="btn btn-info">
                             View Timetable
                      </button>
                   </a>   
               </div>
                
               <br><br>
               
               <div class="col-lg-offset-2 col-lg-10">
                   <a href="<c:url value="/editTimetable" />">
                      <button type="button" class="btn btn-success">
                             Edit Timetable
                      </button>
                   </a>   
               </div>
               
               <br><br>
               
               <div class="col-lg-offset-2 col-lg-10">
                   <a href="<c:url value="/editSession" />">
                      <button type="button" class="btn btn-danger">
                              Confirm / Cancel / Reschedule a class
                      </button>
                   </a>   
               </div>
               
               <br><br>
               
               <div class="col-lg-offset-2 col-lg-10">
                   <a href="<c:url value="/addLec" />">
                      <button type="button" class="btn btn-info">
                             Add Lecturer
                      </button>
                   </a>   
               </div>
                              
           </div>
        </fieldset>
     </form:form>
</section>

</body>
</html>
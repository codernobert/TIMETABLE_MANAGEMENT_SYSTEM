<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<title>Add Lecturer</title>
</head>
<body>

<section>
    <div class="pull-left" style="padding-right:50px">
          <a href="<c:url value="/welcome" />">Home</a>
    </div>
</section>

  <section>
      <div class="jumbotron">
        <div class="container">
          <h1>Lecturer</h1>
          <p>Add Lecturer</p>
        </div>
      </div>
   </section>

<section class="container">
     <form:form method="POST" modelAttribute="newLecturer"  class="form-horizontal">
        <fieldset>
        <legend>Add new Lecturer</legend>
           
           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="email">User Name</label>
              <div class="col-lg-10">
                  <form:input id="email" path="email" type="email" class="form:input-large"/>
              </div>
           </div>
           
           <div class="form-group">
              <label class="control-label col-lg-2 col-lg-2" for="password">Password</label>
              <div class="col-lg-10">
                  <form:input id="password" path="password" type="password" class="form:input-large"/>
              </div>
           </div>
           
           <div class="form-group">
               <div class="col-lg-offset-2 col-lg-10">
                    <input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
               </div>
           </div>
        </fieldset>
     </form:form>
</section>


</body>
</html>
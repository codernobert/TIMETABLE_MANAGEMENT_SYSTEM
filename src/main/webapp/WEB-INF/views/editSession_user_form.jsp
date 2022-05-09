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
    <title>Lec Update Form</title>
</head>
<body>
<spring:url value="/saveSessionStatus" var="saveSessionStatusURL" />

<section class="container">
 <div class="row">
        <div class="thumbnail">
           <div class="caption">
    <form:form modelAttribute="lecUserForm" method="post" action="${saveSessionStatusURL }" >
    <form:hidden path="id"/>
  <table class="table table-hover">
     <tr>
          <th class="text-center">CONTACTS</th>
          <th class="text-center">SESSION STATUS</th>
          <th class="text-center">SAVE</th>
     </tr>
     <tr>
          <td class="text-center">
              <form:input path="lecturer_contacts"/>
          </td>
          <td class="text-center">
              <form:input path="session"/>
          </td>
          <td class="text-center">
              <button type="submit">Save</button>
          </td>
      </tr>
  </table>
</form:form>
 </div>
 </div>
 </div>
 </section> 

</body>
</html>
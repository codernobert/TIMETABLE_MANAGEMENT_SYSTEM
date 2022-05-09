<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet"
 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
 integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
 crossorigin="anonymous">
</head>
<body>

<br>
<br>
 <!-- Create HTML registration form -->
 <div class="container">
  <div class="row">
   <div class="col-md-6 col-md-offset-3">

    <h1>Registration</h1>

    <form action="@{registration}" method="post" object="${user}">
     <div class="form-group">
      <label class="control-label" for="firstName"> First Name </label>
      <input id="firstName" class="form-control" th:field="*{firstName}"
       required autofocus="autofocus" />
     </div>

     <div class="form-group">
      <label class="control-label" for="lastName"> Last Name </label> <input
       id="lastName" class="form-control" th:field="*{lastName}"
       required autofocus="autofocus" />
     </div>

     <div class="form-group">
      <label class="control-label" for="email"> Email </label> <input
       id="email" class="form-control" th:field="*{email}" required
       autofocus="autofocus" />
     </div>

     <div class="form-group">
      <label class="control-label" for="password"> Password </label> <input
       id="password" class="form-control" type="password"
       th:field="*{password}" required autofocus="autofocus" />
     </div>

     <div class="form-group">
      <button type="submit" class="btn btn-success">Register</button>
      <span>Already registered? <a href="/" th:href="@{/login}">Login
        here</a></span>
     </div>
    </form>
   </div>
  </div>
 </div>
</body>
</html>
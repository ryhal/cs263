<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="cs263w16.datasources.*" %>
<%@ page import="cs263w16.model.AppUser" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreService" %>
<%@ page import="com.google.appengine.api.datastore.DatastoreServiceFactory" %>
<%@ page import="com.google.appengine.api.datastore.EntityNotFoundException" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Homepage</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="starter-template.css" rel="stylesheet">

</head>

<body>

<%

    UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();

    // Check if the user is already in the datastore.
    if (user != null) {
        AppUser appUser = null;

        try {
            appUser = (new DefaultUsersDataSource()).getUser(user.getEmail());
        } catch (EntityNotFoundException e) {
            appUser = null;
        }
        if (appUser != null) {
            response.sendRedirect("html/main.html");
        }
        %>
        <div class="container">

            <div class="starter-template">

                <div class="row">
                    <div class="col-md-4">
                        <h1>Sign Up</h1>
                        <p class="lead">Welcome. Please enter some quick information and you are all set. </p>
                        <form action="/rest/user" method="post">

                        <!--
                         <div class="form-group">
                           <label for="inputEmail">Email address</label>
                           <input type="email" class="form-control" name="inputEmail" placeholder="test@example.com">
                         </div>
                         -->
                         <div class="form-group">
                           <label for="inputFirstName">First Name</label>
                           <input type="text" class="form-control" name="inputFirstName" placeholder="">
                         </div>
                         <div class="form-group">
                           <label for="inputLastName">Last Name</label>
                           <input type="text" class="form-control" name="inputLastName" placeholder="">
                         </div>
                         <div class="form-group">
                           <label for="inputUserName">User Name</label>
                           <input type="text" class="form-control" name="inputUserName" placeholder="">
                         </div>
                         <button id="submit-button" type="submit" class="btn btn-default">Continue</button>

                        </form>

                    </div>
                    <div class="col-md-8">



                    </div>

                </div>


            </div>


        </div><!-- /.container -->
    <%

    } else {
    %>
        <div class="container">
            <p>Authentication Failed</p>
        </div>
    <%
    }


%>




<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>

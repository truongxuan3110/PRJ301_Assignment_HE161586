<%-- 
    Document   : login
    Created on : 01-11-2022, 23:03:13
    Author     : Trường Xuân
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">

        <!-- Style -->
        <link rel="stylesheet" href="css/style.css">
        <title>LogIn</title>
        
    </head>
    <body>
        <div class="half">
            <img class="bg" src="images/fpt.jpg" alt="fpt"/>

            <div class="contents order-2 order-md-1">

                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-6">
                            <div class="form-block">
                                <div class="text-center mb-5">
                                    <h3><strong>Log In</strong></h3>
                                    <!-- <p class="mb-4">Lorem ipsum dolor sit amet elit. Sapiente sit aut eos consectetur adipisicing.</p> -->
                                </div>

                                <form action="login" method="POST">
                                    <div class="form-group first">
                                        <label for="username">Username</label>
                                        <input type="text" class="form-control" placeholder="Your Username" id="username" name="username">
                                    </div>
                                    <div class="form-group last mb-3">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control" placeholder="Your Password" id="password" name="password">
                                    </div>

                                    <input type="submit" value="Log In" class="btn btn-block btn-primary">

                                </form>
                                <c:if test="${requestScope.error!=null}">
                                    <font color="red">
                                    ${requestScope.error}
                                    </font>
                                </c:if>
                                </body>
                                </html>

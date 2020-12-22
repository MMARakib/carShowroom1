<%-- 
    Document   : index
    Created on : Dec 8, 2020, 1:27:47 AM
    Author     : rakib
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
         <%@include file="components/navbar.jsp" %>
    </head>
       <div class="container">
            <div class="box">
                <img class="avatar" src="img/Car10.PNG">
                <h1>
Login Account</h1>
<form action="LoginServlet" method="post">
                    <p>
Username</p>
<input type="text" placeholder="Username" name="email" required>
                    <p>
Password</p>
<input type="password" placeholder="Password" name="password" required>
                    <input type="submit" value="Login">
                    <a href="#">Forget Password?</a><br>
                    <a href="register.jsp">Create New Account</a>
                </form>
</div>
</div>
    </body>
</html>

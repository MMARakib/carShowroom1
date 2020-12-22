<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("loguser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome </title>
       
        <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
         <%@include file="components/navbar.jsp" %>
         <div class="total_body">
        <div class="head">
        <div class="total_body">
        <div class="head">
         
          <h2>Choose your car</h2</div>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" rel="stylesheet" />
<h2>Choose your car</h2>
<p>Add your favorites car to the cart</p>

<div class="header">
  <h2>Car Showroom</h2>
</div>

    
<div class="container" style="margin-top:30px">
  <div class="row">
    <div class="col-sm-6">
      <
      <h3>Explore</h3>
      
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active" href="review.jsp">Give Review</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Chat with us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#">Disabled</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
 
    </body>
</html>
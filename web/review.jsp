<%-- 
    Document   : review
    Created on : Dec 22, 2020, 6:48:43 PM
    Author     : rakib
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Review</title>
       <%@include file="components/common_css_js.jsp" %>
    </head>
    <body>
         <%@include file="components/navbar.jsp" %>
        <div class="container">
            <h1 style="background-color:powderblue;">Do not worry, You're Anonymous.</h1>
           
                                
                             </div>
       <form action="ProductOperationServlet" method="post">
              <input type="hidden" name="operation" value="addReview">
   
    <textarea class="form-control" id="review" rows="3"></textarea>
    <button type="submit" class="btn btn-outlinesuccess">Submit</button>
  </div>
</form>
        
    </body>
</html>

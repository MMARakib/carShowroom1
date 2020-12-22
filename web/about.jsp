<%-- 
    Document   : about
    Created on : Dec 16, 2020, 1:57:48 AM
    Author     : rakib
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="components/common_css_js.jsp" %>
    
    <body>
         <%@include file="components/navbar.jsp" %>
         <div class="container about">
             <h1>Welcome Admin</h1>
             <div class="row mt-3">
                 <div class="col-md-4">
                     <div class="card"> 
                         <div class="card-body text-center">
                             <div class="container">
                                 <img class="img-fluid rounded-circle" src="img/Car2.PNG"
                             </div>
                             </div>
                             <h1>Users</h1></div>
                         </div>
                     </div>
                             
                 <div class="col-md-4">
                     <div class="card" > 
                         <div class="card-body  text-center">
                             <div class="container">
                                 <img class="img-fluid rounded-circle" src="img/Car3.PNG"
                             </div>
                             </div>
                             <h1>Product</h1></div>
                         </div>
                     </div>
                  <div class="col-md-4">
                     <div class="card" data-toggle="modal" data-target="#add-product-modal"> 
                         <div class="card-body  text-center">
                             <div class="container">
                                 <img class="img-fluid rounded-circle" src="img/Car4.PNG"
                             </div>
                             </div>
                             <h1>New Product</h1></div>
                         </div>
                     </div>
         </div>
         <div class="row mt-3">
             <div class="col-md-4">
                  <div class="card" data-toggle="modal" data-target="#add-category-modal"> 
                         <div class="card-body  text-center">
                             <div class="container">
                                 <img class="img-fluid rounded-circle" src="img/Car5.PNG"
                             </div>
                             </div>
                             <h1>New Category</h1></div>
                         </div>
             </div>
           
         </div>
    </div>


<!-- Modal -->
<div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Fill product</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form action="ProductOperationServlet" method="post">
              <input type="hidden" name="operation" value="addProduct">
              <div class="form-group">
                  <input type="text" class="form-control" name="catBrand "placeholder="Enter product brand" required>
              </div>
               <div class="form-group">
                  <input type="text" class="form-control" name="catColor" placeholder=" Enter product color" required>
              </div>
               <div class="form-group">
                  <input type="text" class="form-control" name="catPic" placeholder=" Enter product pic" required>
              </div>
                <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-outlinesuccess">Add</button>
      </div>
          </form>
      </div>
    </div>
  </div>
</div>


<!-- Modal -->
<div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Fill Category</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form action="ProductOperationServlet" method="post">
              <input type="hidden" name="operation" value="addCat">>
              <div class="form-group">
                  <input type="text" class="form-control" name="newCat "placeholder="Enter new category" required/>
              </div
               
          </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Add</button>
      </div>
    </div>
  </div>
</div>
    </body>


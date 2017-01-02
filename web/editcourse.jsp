<%-- 
    Document   : course
    Created on : Apr 21, 2016, 7:54:18 PM
    Author     : poudelas
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="css/style.css">
        
    </head>
    <body>
        <%@include file="menu.jsp" %> 
        <div class="container">
            
             
                
            <div id="row" class="row">
                    <h1>Enter the details of course</h1>
                    
                <div class="col-md-4">
                  <c:forEach items="${retrieveid}" var="course">
                    <form action="Coursecontroller" method="post">
                         <div class="form-group">
                             <label hidden="hidden">Id:</label>
                            <input type="hidden" class="form-control" name="id"
                                   placeholder="Enter the title" value="${course.id}">
                        </div>
                        <div class="form-group">
                            <label>Title:</label>
                            <input type="text" class="form-control" name="title"
                                   placeholder="Enter the title" value="${course.title}">
                        </div>
                        <div class="form-group">
                            <label>Price:</label>
                            <input type="text" class="form-control" name="price"
                                   placeholder="Enter the price" value="${course.price}">
                        </div>
                        <div class="form-group">
                            <label>Duration:</label>
                            <input type="text" class="form-control" name="duration"
                                   placeholder="Enter the Duration" value="${course.duration}">
                        </div>
                            <input type="submit" value="Update" class="btn btn-primary" name="insert">
                    </form>
                  </c:forEach>
                </div>

               
            
        </div>
        
    </body>
</html>
        <script src="bootstrapjspcrup/js/jquery.js"></script>
        <script src="bootstrapjspcrup/js/bootstrap.min.js"></script>
        <script src="bootstrapjspcrup/js/clean-blog.min.js"></script>
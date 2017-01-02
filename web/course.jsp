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

                    <form action="Coursecontroller" method="post">
                        <div class="form-group">
                            <label>Title:</label>
                            <input type="text" class="form-control" name="title"
                                   placeholder="Enter the title">
                        </div>
                        <div class="form-group">
                            <label>Price:</label>
                            <input type="text" class="form-control" name="price"
                                   placeholder="Enter the price">
                        </div>
                        <div class="form-group">
                            <label>Duration:</label>
                            <input type="text" class="form-control" name="duration"
                                   placeholder="Enter the Duration">
                        </div>
                            <input type="submit" value="Insert" class="btn btn-primary" name="submit">
                    </form>

                </div>

                <div class="col-md-8">
                    <div id="scroll">
                    <table id="leftmargin" class="table table-striped table-bordered table-hover table-responsive ">
                        
                        <thead>
                            <tr>
                                <td>Cid</td>
                                <td>Title</td>
                                <td>Price</td>
                                <td>Duration</td>
                                <td>Update</td>
                                <td>Delete</td>
                                
                            </tr>
                        </thead>
                       
                        <tbody>
                            <!--jstl tag-->
                            <c:forEach items="${retrieve}" var="course">
                            <tr>
                               
                                <td>${course.title}</td>
                                <td>${course.price}</td>
                                <td>${course.duration}</td>
                                <td ><a class="btn btn-success" href="Coursecontroller?editid=${course.id}&action=update">Update</a></td>
                                <td><a class="btn btn-danger" href="Coursecontroller?deleteid=${course.id}&action=delete">Delete</a></td>
                            </tr>
                            </c:forEach>
                        </tbody>   
                            
                        
                    </table>
                    </div>
                </div>
            
        </div>
            
        
    </body>
</html>
        <script src="bootstrapjspcrup/js/jquery.js"></script>
        <script src="bootstrapjspcrup/js/bootstrap.min.js"></script>
        <script src="bootstrapjspcrup/js/clean-blog.min.js"></script>
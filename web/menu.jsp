<%-- 
    Document   : index
    Created on : Apr 21, 2016, 5:12:26 PM
    Author     : poudelas
--%>

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
        <!-- Navigation -->
    <nav id="nav" class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a id="nav" class="navbar-brand" href="Home.jsp">Jsp-servlet </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li id="navcolor">
                        <a href="Home.jsp">Home</a>
                    </li>
                    <li>
                        <a href="studentcontroller">Student</a>
                    </li>
                    
                    <li>
                        <a href="Coursecontroller">Course</a>
                    </li>
					<li>
                        <a href="usercontroller">User</a>
                    </li>
					<li>
                        <a href="#">Settings</a>
                    </li>
					<li>
                        <a href="#">Log In</a>
                    </li>
					<li>
                        <a href="">Register</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
       


    </body>
</html>
        <script src="bootstrapjspcrup/js/jquery.js"></script>
        <script src="bootstrapjspcrup/js/bootstrap.min.js"></script>
        <script src="bootstrapjspcrup/js/clean-blog.min.js"></script>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/user/signup.css" rel="stylesheet" type="text/css">
<html>
<head>
    <title>signup</title>
</head>
<body>
<div class="container">
    <div class="col-sm-4 col-md-4 col-lg-4 text-center">
        <div class="form-wrap">
            <%
                if (request.getAttribute("error") != null){
            %>
            <div class="btn-danger">
                <%= request.getAttribute("error")%>
            </div>
            <%
                }
            %>
            <div class="logo">
                <h1>Sign Up</h1>
            </div>
            <br><br>
            <form action="signup" method="post">
                <div class="form-group">
                    <i class="fa fa-user"></i>
                    <input type="text" name="name" class="form-control" placeholder="name">
                </div>
                <div class="form-group">
                    <i class="fa fa-user"></i>
                    <input type="text" name="lastname" class="form-control" placeholder="lastname">
                </div>
                <div class="form-group">
                    <i class="fa fa-envelope"></i>
                    <input type="email" name="email" class="form-control" placeholder="email">
                </div>
                <div class="form-group">
                    <i class="fa fa-lock"></i>
                    <input type="password" name="pass" class="form-control" placeholder="password">
                </div>
                <button class="btn" type="submit">sign up</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>

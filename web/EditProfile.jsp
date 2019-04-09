<%@ page import="model.DAO.UserDAO" %>
<%@ page import="model.DTO.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="css/user/cssUserP.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

    <title>editProfile</title>
</head>

<body>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<%
    HttpSession session1 = request.getSession();
    UserDAO dao = new UserDAO();
    User user = dao.getUserById((Integer) session1.getAttribute("customer_id"));
%>
<div class="profile-container">
    <div class="profile-menu ">
        <div class="image-container ">
            <img class="resize profile-img" src="img/user/<%= user.getImageName()%>">
        </div>
        <div class="form-wrap">
            <form action="editProf" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <input type="file" name="file">
                </div>
                <div class="form-group">
                    <input type="text" name="name" class="form-control" value="<%= user.getName()%>" placeholder="name">
                </div>
                <div class="form-group">
                    <input type="text" name="lastname" class="form-control" value="<%= user.getLastname()%>" placeholder="lastname">
                </div>
                <%--<div class="form-group">--%>
                    <%--<input type="text" name="bio" class="form-control" value="<%= user.getName()%>" placeholder="bio">--%>
                <%--</div>--%>
                <div class="form-group">
                    <input type="email" name="email" class="form-control" value="<%= user.getEmail()%>" placeholder="email">
                </div>
                <input class="btn" type="submit" value="submit">
            </form>
        </div>
    </div>
</div>

</body>
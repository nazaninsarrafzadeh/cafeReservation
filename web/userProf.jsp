<%@ page import="model.DAO.UserDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="css/cssUserP.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">




</head>
    <%
    HttpSession session1 = request.getSession();
    UserDAO dao = new UserDAO();
%>
<body>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<div class="profile-container">
    <div class="profile-menu ">
        <div class="image-container ">
            <img class="resize profile-img" src="img/prof.png" alt="">

        </div>


        <div class="summery">
            <div class="username">
                <p>@USERNAME</p>
            </div>
            <button class="content" type="button">
               <span>
                   <%= dao.calculateFollowers((Integer) session1.getAttribute("customer_id"))%>
                   //
               </span>
                <span>follower</span>
            </button>
            <button class="content" type="Button">
                <span>
                     <%= dao.calculateFollowing((Integer) session1.getAttribute("customer_id"))%>
                </span>
                <span>following</span>
            </button>

        </div>

        <ul>
            <div id="bio" class="desc" >
                biobiobiobiobio
            </div>
            <li class="active list" onclick=""> My Posts</li>
            <li onclick="">My Feed</li>
            <li onclick="">My Reserves</li>
            <li onclick="">My Deposite / History</li>
            <li onclick="Edit()">Edit</li>
            <li>logOut from your account</li>

        </ul>
    </div>
    <div class="profile-content">
        <div class="actions">
            <i class=" fas fa-3x fa-bell"></i>
            <i class="fas fa-3x fa-cogs "></i>
            <div class="pic">
            </div>

        </div>

        <form action="ShowPost" method="get"></form>

        <form action="editCaption" method="get">
            <input type="text" name="post"></input>
        </form>

    </div>
</div>

<script>
    function Edit() {
        window.location.href = "http://localhost:8080/EditProfile.jsp"
    }
</script>

</body>

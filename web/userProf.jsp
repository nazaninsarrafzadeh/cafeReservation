<%--
  Created by IntelliJ IDEA.
  User: Alieyeh
  Date: 4/3/19
  Time: 12:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="css/cssUserP.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">




</head>

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
                <span>235</span>
                <span>follower</span>
            </button>
            <button class="content" type="Button">
                <span>333</span>
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

        <div class="row">
            <div class="post ">
                <img src="img/post1.jpg">

                <div class="desc">gfgfgfgfgfgfgfgf </div>
            </div>



            <div class="post resize2">
                <img src="img/post2.jpg">

                <div class="desc ">gfgfgfgfgfgfgfgf </div>
            </div>


            <div class="post resize2">
                <img src="img/post3.jpg">

                <div class="desc">gfgfgfgfgfgfgfgf </div>
            </div>
        </div>

        <div class="row">
            <div class="post resize2">
                <img src="img/post4.jpg">
                <div class="desc">gfgfgfgfgfgfgfgf </div>
            </div>


            <div class="post resize2">
                <img src="img/post1.jpg">
                <div class="desc">gfgfgfgfgfgfgfgf </div>
            </div>



            <div class="post resize2">
                <img src="img/post2.jpg">
                <div class="desc">gfgfgfgfgfgfgfgf </div>
            </div>
        </div>

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

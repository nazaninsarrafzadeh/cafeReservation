<%--
  Created by IntelliJ IDEA.
  User: Alieyeh
  Date: 4/3/19
  Time: 12:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="css/cssUserP.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

    <title>editProfile</title>


</head>

<body>
<form action="editProf" method="post">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<div class="profile-container">
    <div class="profile-menu ">
        <div class="image-container ">

            <img id="profpic" class="resize profile-img" src="img/prof.png" alt="">
            <input type="file" name="file" class="form-control">

        </div>


        <div class="summery">

                <div >
                    <input type="text" name="name" class="form-control" placeholder="name"><input type="text" name="lastname" class="form-control" placeholder="last name">
                </div>


        </div>

        <ul>

                <div >
                    <input type="text" name="bio" class="form-control" placeholder="bio">
                </div>
            <li class="active list"><button type="submit">Edit</button></li>
            <li class="active list" onclick=""> My Posts</li>
            <li onclick="Done()">Done</li>
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
                <form class="desc" action="editCaption" method="post">
                    <div >
                        <input type="text" name="caption" class="form-control" placeholder="caption">
                        <button type="submit">OK</button>
                    </div>
                </form>
            </div>



            <div class="post resize2">
                <img src="img/post2.jpg">

                <form class="desc" action="editCaption" method="post">
                    <div >
                        <input type="text" name="caption" class="form-control" placeholder="caption">
                        <button type="submit">OK</button>
                    </div>
                </form>
            </div>


            <div class="post resize2">
                <img src="img/post3.jpg">

                <form class="desc" action="editCaption" method="post">
                    <div >
                        <input type="text" name="caption" class="form-control" placeholder="caption">
                        <button type="submit">OK</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="row">
            <div class="post resize2">
                <img src="img/post4.jpg">
                <form class="desc" action="editCaption" method="post">
                    <div >
                        <input type="text" name="caption" class="form-control" placeholder="caption">
                        <button type="submit">OK</button>
                    </div>
                </form>
            </div>


            <div class="post resize2">
                <img src="img/post1.jpg">
                <form class="desc" action="editCaption" method="post">
                    <div >
                        <input type="text" name="caption" class="form-control" placeholder="caption">
                        <button type="submit">OK</button>
                    </div>
                </form>
            </div>



            <div class="post resize2">
                <img src="img/post2.jpg">
                <form class="desc" action="editCaption" method="post">
                    <div >
                        <input type="text" name="caption" class="form-control" placeholder="caption">
                        <button type="submit">OK</button>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>

</form>
<script>
    function Edit() {
        document.getElementById("profpic").src = img/prof2.png;
        document.getElementById("uname").innerHTML = "@nita";
    }
    function Done() {
        window.location.href = "http://localhost:8080/userProf.jsp"
    }

</script>
</body>

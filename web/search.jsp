﻿
<%@ page import="model.DTO.Restaurant" %>
<%@ page import="model.DTO.User" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.DAO.UserDAO" %>
<%@ page import="model.DAO.CafeFileDAO" %>
<%@ page import="model.DAO.RestaurantDAO" %>
<%@ page import="model.DTO.CafeImage" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    ArrayList<Restaurant> restaurants = (ArrayList<Restaurant>) request.getAttribute("restaurants");
    ArrayList<User> users = (ArrayList<User>) request.getAttribute("users");
    CafeImage image = new CafeImage();
    RestaurantDAO rdao = new RestaurantDAO();
    CafeFileDAO fileDAO = new CafeFileDAO();
    UserDAO udao = new UserDAO();
%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic">
    <link rel="stylesheet" href="assets/css/-Filterable-Cards-.css">
    <link rel="stylesheet" href="assets/css/-Filterable-Gallery-with-Lightbox-BS4-.css">
    <link rel="stylesheet" href="assets/css/Filter.css">
    <link rel="stylesheet" href="assets/css/Filterable-Gallery-with-Lightbox.css">
    <link rel="stylesheet" href="assets/css/News-Cards.css">
</head>

<body style="background-image: url(&quot;assets/img/bg-masthead.jpg&quot;);height: 396px;margin: 0px;">
  <form action="Search" method="get">
    <header class="masthead text-white text-center" style="background: url('assets/img/bg-masthead.jpg')no-repeat center center;background-size: cover;margin: -99px;height: 675px;background-image: url(&quot;assets/img/jacek-dylag-PR-B3hhcOZY-unsplash.jpg&quot;);background-color: #2d2929;">
        <div class="container">
            <div class="row" style="margin: 30px;">
                <div class="col-xl-9 mx-auto" style="padding: 43px;">
                    <h1 class="mb-5"></h1>
                </div>
                <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
                    <form>
                        <div class="form-row">
                            <div class="col-12 col-md-9 mb-2 mb-md-0"><input type="text" name="searchparam" class="form-control form-control-lg" placeholder="..."></div>
                            <div class="col-12 col-md-3"><button class="btn btn-primary btn-block btn-lg" type="submit">search</button></div>
                        </div>
                    </form>
                </div>
            </div>
        </div><div class="filter">


        <%--<select>--%>
             <%--<option value="">نوع</option>--%>
            <%--<option value="">رستوران</option>--%>
            <%--<option value="">کافه</option>--%>
        <%--</select>--%>
    <%--<select>--%>
             <%--<option value="">مکان</option>--%>
         <%--<option value="">نزدیک</option>--%>
         <%--<option value="">تهران</option>--%>
         <%--<option value="">کرج</option>--%>
        <%--</select>--%>
    <%--<select>--%>
             <%--<option value="">رنج قیمت</option>--%>
        <%--<option value="">گران و لاکچری</option>--%>
        <%--<option value="">اقتصادی</option>--%>
        <%--</select>--%>
    <%--<select>--%>
             <%--<option value="">ستاره</option>--%>
        <%--<option value="">5 ستاره</option>--%>
        <%--<option value="">4 ستاره</option>--%>
        <%--<option value="">3 ستاره</option>--%>
        <%--<option value="">2 ستاره</option>--%>
        <%--</select>--%>
    <%--<select>--%>
             <%--<option value="">قابلیت رزرو</option>--%>
         <%--<option value="">قابلیت رزرو دارد</option>--%>
         <%--<option value="">قابلیت رزرو ندارد</option>--%>
        <%--</select>--%>
            <select name="type">
                <option value="res">رستوران و کافه</option>
                <option value="user">ادم</option>
            </select>


    </form>
</div>
        <section id="filtr-gallery">
            <div class="container">
                <%--<h1 class="text-center">search results</h1>--%>
                <div class="row filtr-container">
                    <%--<div class="col-6 col-sm-4 col-md-3 filtr-item" data-category="1, 3"><img src="assets/img/2.jpg" style="width: 223px;"></div>--%>
                    <%--<div class="col-6 col-sm-4 col-md-3 filtr-item" data-category="2, 3"><img src="assets/img/5.jpg" style="width: 227px;"></div>--%>
                    <%--<div class="col-6 col-sm-4 col-md-3 filtr-item" data-category="1"><img src="assets/img/nathan-dumlao-314123-unsplash.jpg" style="width: 250px;height: 108px;"></div>--%>
                    <%--<div class="col-6 col-sm-4 col-md-3 filtr-item" data-category="1"><img src="assets/img/back.jpg" style="width: 250px;"></div>--%>
                    <%--<div class="col-6 col-sm-4 col-md-3 filtr-item" data-category="2"><img src="assets/img/6.jpg" style="width: 253px;"></div>--%>
                    <%--<div class="col-6 col-sm-4 col-md-3 filtr-item" data-category="2"><img src="assets/img/robert-bye-F2eHfMwIOxA-unsplash.jpg" style="width: 250px;"></div>--%>
                    <%--<div class="col-6 col-sm-4 col-md-3 filtr-item" data-category="1, 3"><img src="assets/img/daan-evers-tKN1WXrzQ3s-unsplash.jpg" style="width: 250px;"></div>--%>
                    <%--<div class="col-6 col-sm-4 col-md-3 filtr-item" data-category="2"><img></div>--%>
                    <%--<div class="col-6 col-sm-4 col-md-3 filtr-item" data-category="2, 3"><img></div>--%>
                    <%--<div class="col-6 col-sm-4 col-md-3 filtr-item" data-category="1"><img></div>--%>


                    <%
                        for (Restaurant restaurant:restaurants) {
                            image = fileDAO.selectImages(restaurant.getId()).get(0);
                    %>
                    <form action="/RestaurantProfile" method="get" name='resprof'>
                    <div class="col-6 col-sm-4 col-md-3 filtr-item" data-category="1">
                        <img src="img/cafe/<%= image.getName()%>" style="width: 250px;" onclick="document.forms['resprof'].submit();">
                        <p><%=restaurant.getName()%></p>
                    </div>
                    </form>
                    <%
                        }
                    %>

                        <%
                            for (User user:users) {
                        %>
                        <form action="/otherUser" method="get" name='userprof'>
                        <div class="col-6 col-sm-4 col-md-3 filtr-item" data-category="1"><img src="img/<%= user.getImageName()%>" style="width: 250px;" onclick="document.forms['userprof'].submit();"></div>
                        <p><%=user.getName()+" "+user.getLastname()%></p>
                        </form>
                        <%
                            }
                        %>


                </div>

            </div>
        </section>
    </header>
    <div class="row p-0 m-0"></div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/-Filterable-Cards-.js"></script>
    <script src="assets/js/-Filterable-Gallery-with-Lightbox-BS4-.js"></script>
    <script src="assets/js/Filterable-Gallery-with-Lightbox.js"></script>
</body>

</html>
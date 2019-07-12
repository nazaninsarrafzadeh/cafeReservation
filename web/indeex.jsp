<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.DAO.RestaurantDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.DTO.Restaurant" %>
<%@ page import="model.DAO.CafeFileDAO" %>
<%@ page import="model.DTO.CafeImage" %>
<html>
 <head>
     <title>{{title}}</title>
     <meta name="viewport" content="width=device-width, initial-scale=1">
      <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet"> 
      <!-- <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet"> -->
      <link href="https://fonts.googleapis.com/css?family=Playfair+Display" rel="stylesheet">
  
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
     <link rel="stylesheet" href="css/cssHomepage.css">
 </head>

<body>
<%
    CafeImage image = new CafeImage();
    RestaurantDAO dao = new RestaurantDAO();
    ArrayList<Restaurant> restaurants = dao.selectRestaurants();
   // System.out.println(restaurants.size());
    CafeFileDAO fileDAO = new CafeFileDAO();
%>
    <header id="header">
        <div class="row">
            <ul class="main-nav">
                <li class="active"><a href="#header">HOME </a></li>
                 <li><a href="#about_us">ABOUT US </a></li>
                 <li><a href="login.jsp">SIGN IN </a></li>
                 <li><a href="signup.jsp">SIGN UP </a></li>
                 <li><a href="#search">SEARCH</a></li>
            </ul>
            <img src="img/header3.jpg" alt="" class="hed">
        </div>
    </header>
    <div class="row2">
            <div class="about_us" id="about_us">
            <h1 >welcome to our website</h1>
            <p id="about">about us ......</p>
            </div>
            <div class="poem"><p>this is a poem about cafe</p> </div>
        </div>


<div class="slidershow middle">
    <div class="slides">
        <%--<input type="radio" name="r" id="r1" checked>--%>
        <%--<input type="radio" name="r" id="r2">--%>
        <%--<input type="radio" name="r" id="r3">--%>
        <%--<input type="radio" name="r" id="r4">--%>
        <%
            for (Restaurant restaurant:restaurants) {

                image = fileDAO.selectImages(restaurant.getId()).get(0);
//                System.out.println("z  "+images.size());
//                System.out.println("id  "+restaurant.getId());
//                System.out.println("img  "+images.get(0).getName());
        %>
        <input type="radio" name="r" id="r<%= restaurant.getId()%>" checked>
        <div class="slide s1">
            <img src="img/cafe/<%= image.getName()%>" onclick="goToCafe(<%= restaurant.getId()%>)" alt="">
        </div>
            <div class="navigation">
                <label for="r<%= restaurant.getId()%>" class="bar"></label>
            </div>
        <%
            }
        %>

    </div>
    <%--<div class="navigation">--%>
        <%--<label for="r1" class="bar"></label>--%>
        <%--&lt;%&ndash;<label for="r2" class="bar"></label>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<label for="r3" class="bar"></label>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<label for="r4" class="bar"></label>&ndash;%&gt;--%>
    <%--</div>--%>
</div>

<div class="rating">
    <h1>best rating coffee shops</h1>
</div>


<div class="slidershow middle2">
        <div class="slides">
            <input type="radio" name="k" id="k1" checked>
            <input type="radio" name="k" id="k2">
            <input type="radio" name="k" id="k3">
            <input type="radio" name="k" id="k4">
            <div class="slide s2">
                <img src="img/home1.jpg" alt="">
            </div>
            <div class="slide">
                    <img src="img/cafe3.jpg" alt="">
                </div>
                <div class="slide">
                        <img src="img/cafe1.jpg" alt="">
                    </div>
                    <div class="slide">
                            <img src="img/cafe2.jpg" alt="">
                        </div>

        </div>
        <div class="navigation">
            <label for="k1" class="bar"></label>
            <label for="k2" class="bar"></label>
            <label for="k3" class="bar"></label>
            <label for="k4" class="bar"></label>
        </div>
    </div>



    <div class="slidershow middle3">
            <div class="slides">
                <input type="radio" name="l" id="l1" checked>
                <input type="radio" name="l" id="l2">
                <input type="radio" name="l" id="l3">
                <input type="radio" name="l" id="l4">
                <div class="slide s3">
                    <img src="img/home1.jpg" alt="">
                </div>
                <div class="slide">
                        <img src="img/cafe3.jpg" alt="">
                    </div>
                    <div class="slide">
                            <img src="img/cafe1.jpg" alt="">
                        </div>
                        <div class="slide">
                                <img src="img/cafe2.jpg" alt="">
                            </div>

            </div>
            <div class="navigation">
                <label for="l1" class="bar"></label>
                <label for="l2" class="bar"></label>
                <label for="l3" class="bar"></label>
                <label for="l4" class="bar"></label>
            </div>
        </div>

<div id="search">
    <h3>search here</h3>
</div>


        <div id="searchbox">
            <input placeholder="search" type="text">
            <button>SEARCH</button>
        </div>

<footer>

        <div class="container">
            <div class="row">
                <div class="col-sm-3 col-lg-3 ">
                    <div class="widget">
                        <h4>get in touch</h4>
                        <address>
                            <strong> name os the website blablablaa</strong><br>
                            ththththththththththt<br>
                            somewhere in Earth 1234
                        </address>
                        <p>
                            <i class="fas fa-phone"></i> +98-098765412 - (+98)1234567 <br>
                            <i class="fas fa-envelope"></i>www.ourgmail@gmail.com<br>
                        </p>
                    </div>
                </div>
                <div class="col-sm-3 col-lg-3 ">
                    <div class="widget">
                        <h4>information</h4>
                        <ul class="link-list">
                            <li><a href="#" >HOME</a> </li>
                            <li><a href="#">MORE INFORMATION</a> </li>
                            <li><a href="#">PRIVACY POLICY</a> </li>
                            <li><a href="#">SEARCH</a> </li>
                            <li><a href="#">Contact US</a> </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3 col-lg-3 ">
                    <div class="widget ">
                        <h3>fill your imale and sign up for the news letter to keep updated</h3>
                        <div class="form-group multiple-form-group input-group">
                            <input type="email" name="email" class="form-control">
                            <span class="input-group-btn">
                            <button type="button" class="btn btn-theme btn-add">Subscribe!</button>
                            </span>
                        </div>
                </div>
                </div>
            </div>
        </div>
        <div id=sub-footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="copyright">
                            <p>&copy ; Cafe Reservation - All rights reserved</p>
                            <div class="credits">
                                Designed by <a href="#Cafe Reservation"></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <ul class="social-network">
                            <li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a> </li>
                            <li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a> </li>
                            <li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a> </li>
                            <li><a href="#" data-placement="top" title="Instagram"><i class="fa fa-instagram"></i></a> </li>
                            <li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a> </li>


                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <a href="#" class="scrollup"><i>class="fa fa-angle-up active"</i></a>
<script src="js/indexPageController.js"></script>
</body>
</html>
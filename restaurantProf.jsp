<%@ page import="model.DTO.Restaurant" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
    <script src="js/scrolling.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700|Pinyon+Script" rel="stylesheet">
    <link rel="stylesheet" href="css/styles-merged.css">
    <link rel="stylesheet" href="css/style.min.css">



<body>
<% Restaurant restaurant = (Restaurant) request.getAttribute("restaurant");%>

<nav class="navbar navbar-default navbar-fixed-top probootstrap-navbar">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>



        <div id="navbar-collapse" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="" ><b>Follow</b></a> </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">

                <li><a href="#welcome" data-nav-section="welcome">Welcome</a></li>
                <li><a href="#menu" data-nav-section="menu">Menu</a></li>
                <li><a href="#reservation" data-nav-section="reservation">Reservation</a></li>
                <li><a href="#contact" data-nav-section="contact">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>


<section id="welcome" class="flexslider" data-section="welcome">
    <ul class="slides">
        <li style="background-image: url(img/cafe1.jpg)" class="overlay" data-stellar-background-ratio="0.5">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="probootstrap-slider-text text-center probootstrap-animate probootstrap-heading">
                            <h1 class="primary-heading">The X coffee shop</h1>
                        </div>
                    </div>
                </div>
            </div>
        </li>
        <li style="background-image: url(img/cafe2.jpg)" class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="probootstrap-slider-text text-center probootstrap-animate probootstrap-heading">
                            <h3 class="secondary-heading"> awsome place lalala :)))</h3>
                        </div>
                    </div>
                </div>
            </div>

        </li>
        <li style="background-image: url(img/cafe3.jpg)" class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="probootstrap-slider-text text-center probootstrap-animate probootstrap-heading">
                            <h3 class="secondary-heading">our caffee</h3>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</section>

<section class="probootstrap-section probootstrap-bg-white">
    <div class="container">
        <div class="row">
            <div class="col-md-5 text-center probootstrap-animate">
                <div class="probootstrap-heading dark">
                    <h1 class="primary-heading">${restaurant.getName()}</h1>
                    <span class="seperator">* * *</span>
                    <h3 class="secondary-heading"> ${restaurant.getDescription()}</h3>
                    <span class="seperator">* * *</span>
                </div>
                <p><a  class="probootstrap-custom-link">wish you a nice day</a></p>
            </div>
            <div class="col-md-6 col-md-push-1 probootstrap-animate">
                <p><img src="img/4cafe.jpg" alt="Free Bootstrap Template by uicookies.com" class="img-responsive"></p>
            </div>
        </div>
    </div>
</section>

<section id="menu" class="probootstrap-section-bg overlay" style="background-image: url(img/cafe-menu.jpg);"  data-stellar-background-ratio="0.5"  data-section="menu">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center probootstrap-animate">
                <div class="probootstrap-heading">

                    <h3 class="secondary-heading">Our Menu</h3>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="probootstrap-section probootstrap-bg-white">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <ul class="menus">
                    <li>
                        <figure class="image"><img src="img/post1.jpg" ></figure>
                        <div class="text">
                            <span class="price">$22.99</span>
                            <h3>Food1</h3>
                            <p>Crab / Potatoes / Rice</p>
                        </div>
                    </li>
                    <li>
                        <figure class="image"><img src="img/post2.jpg"></figure>
                        <div class="text">
                            <span class="price">$22.99</span>
                            <h3>Food2</h3>
                            <p>Crab / Potatoes / Rice</p>
                        </div>
                    </li>
                    <li>
                        <figure class="image"><img src="img/post3.jpg" ></figure>
                        <div class="text">
                            <span class="price">$22.99</span>
                            <h3>Food3</h3>
                            <p>Crab / Potatoes / Rice</p>
                        </div>
                    </li>
                    <li>
                        <figure class="image"><img src="img/post4.jpg"></figure>
                        <div class="text">
                            <span class="price">$22.99</span>
                            <h3>Food4</h3>
                            <p>Crab / Potatoes / Rice</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col-md-6">
                <ul class="menus">
                    <li>
                        <figure class="image"><img src="img/post4.jpg"></figure>
                        <div class="text">
                            <span class="price">$22.99</span>
                            <h3>Pizza</h3>
                            <p>Crab / Potatoes / Rice</p>
                        </div>
                    </li>
                    <li>
                        <figure class="image"><img src="img/post3.jpg"></figure>
                        <div class="text">
                            <span class="price">$22.99</span>
                            <h3>Coffee1</h3>
                            <p>Coffee / Milk/ Water</p>
                        </div>
                    </li>
                    <li>
                        <figure class="image"><img src="img/post2.jpg" ></figure>
                        <div class="text">
                            <span class="price">$22.99</span>
                            <h3>Salted Fried Chicken</h3>
                            <p>Crab / Potatoes / Rice</p>
                        </div>
                    </li>
                    <li>
                        <figure class="image"><img src="img/post1.jpg" ></figure>
                        <div class="text">
                            <span class="price">$22.99</span>
                            <h3>Coffee2</h3>
                            <p>Coffee / Milk/ Water</p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>
<script src="js/scripts.min.js"></script>
<script src="js/custom.min.js"></script>

<section id="reservation" class="probootstrap-section probootstrap-bg-white">
    <div class="container">
        <div class="col-md-12 probootstrap-animate">
            <form action="reservation" method="post" class="probootstrap-form">
                <div class="row">
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="people">How Many People</label>
                            <div class="form-field">
                                <i class="icon icon-chevron-down"></i>
                                <input name="people" id="people" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="date">Date</label>
                            <div class="form-field">
                                <i class="icon icon-calendar"></i>
                                <input name="date" type="text" id="date" class="form-control">
                                <script type="text/javascript">
                                    $(function () {
                                        $('#date').datetimepicker();
                                    });
                                </script>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label for="time">Time</label>
                            <div class="form-field">
                                <i class="icon icon-clock"></i>
                                <input type="text" id="time" class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-lg btn-primary btn-block">
                    </div>
                </div>
            </form>
        </div>
    </div>
    </div>
</section>

<section id="contact" class="probootstrap-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-6 probootstrap-animate">
                <div class="probootstrap-footer-widget">
                    <h3>Locations</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <p> streets<br>${restaurant.getAddress()}</p>
                        </div>
                    </div>
                    <h3>Email</h3>
                    <div class="row">
                        <div class="col-md-6">
                            <p> email <br>${restaurant.getEmail()}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 probootstrap-animate">
                <div class="probootstrap-footer-widget">
                    <h3>Open Hours</h3>
                    <div class="row">
                        <div class="col-md-4">
                            <p>Monday - Thursday <br> 5:30pm - 10:00pm</p>
                        </div>
                        <div class="col-md-4">
                            <p>Friday - Sunday <br> 5:30pm - 10:00pm</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
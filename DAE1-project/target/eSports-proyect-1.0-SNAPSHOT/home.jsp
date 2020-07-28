<%@ page import="pe.isil.model.Usuario" %>
<%@ page import="pe.isil.dao.TeamDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="pe.isil.model.Team" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
        body {
            font: 20px Montserrat, sans-serif;
            line-height: 1.8;
            color: #f5f6f7;
        }
        p {font-size: 16px;}
        .margin {margin-bottom: 45px;}
        .bg-1 {
            background-image: linear-gradient(to right, #304352,#d7d2cc);
            color: #ffffff;
        }
        .bg-2 {
            background-color: #5da3d9; /* Dark Blue */
            color: #ffffff;
        }
        .bg-3 {
            background-color: #ffffff; /* White */
            color: #555555;
        }
        .bg-4 {
            background-color: #2f2f2f; /* Black Gray */
            color: #fff;
        }
        .container-fluid {
            padding-top: 70px;
            padding-bottom: 70px;
        }
        .navbar {
            padding-top: 15px;
            padding-bottom: 15px;
            border: 0;
            border-radius: 0;
            margin-bottom: 0;
            font-size: 12px;
            letter-spacing: 5px;
        }
        .navbar-nav  li a:hover {
            color: #1abc9c !important;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="home.jsp">eSports</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="calculate_winnings.jsp">CALCULATE</a></li>
                <li><a href="teams.jsp">SHOW TEAMS</a></li>
                <li><a href="showprizepool.jsp">PERCENTAGES</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- First Container -->
<div class="container-fluid bg-1 text-center">
    <h3 class="margin">eSports</h3>
    <img src="test/img.jpg" class="img-responsive img-circle margin" style="display:inline" alt="dota" width="350px" height="350px">
    <h3>A form of sport competition using video games.</h3>
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
    <h3 class="margin">Press the button below, they can help you</h3>
    <p>There was an idea... to bring together a group of remarkable people, to see if we could become something more. So when they needed us we could fight the battles... that they never could.</p>
    <a href="test/gaa.jpg" class="btn btn-default btn-lg">
        <span class="glyphicon glyphicon-search"></span> Search
    </a>
</div>

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">
    <h3 class="margin text-warning">Where To Find Me?</h3><br>
    <div class="row">
        <div class="col-sm-4">
            <h3 class="text-primary">Here you can assign the money </h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            <a href="calculate_winnings.jsp"><img src="images/io.jpg" class="img-responsive margin" style="width:100%" alt="Image"></a>
        </div>
        <div class="col-sm-4">
            <h3 class="text-primary">Want to see the percentage per place?</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            <a href="showprizepool.jsp"><img src="test/prize.jpg" class="img-responsive margin" style="width:100%" alt="Image"></a>
        </div>
        <div class="col-sm-4">
            <h3 class="text-primary">List of the Teams of Dota 2</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
            <a href="teams.jsp"><img src="test/team.jpg" class="img-responsive margin" style="width:100%" alt="Image"></a>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
    <p>Copyright &copy; 2019 Develop by US </p>
</footer>


</body>
</html>

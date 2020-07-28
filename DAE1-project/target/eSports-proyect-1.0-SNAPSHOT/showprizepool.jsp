<%@ page import="pe.isil.model.Prizepool" %>
<%@ page import="java.util.List" %>
<%@ page import="pe.isil.dao.PrizepoolDAO" %><%--
  Created by IntelliJ IDEA.
  User: CRIS
  Date: 2/12/2019
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Prizepool Details</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%--<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">--%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
    nav {
        font: 20px Montserrat, sans-serif;
        line-height: 1.8;
        color: #f5f6f7;
    }
    p {font-size: 16px;}

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
    .thead-dark{
        background-color: #343a40;
        color: #ffffff;
    }
</style>
</head>
<body>
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
<br>


<%
    List<Prizepool> prizepools = PrizepoolDAO.listPrizepool();
    if (prizepools == null){
        System.out.println("prizepool not found");
    }
%>
<%!
    int prizepoolCounter = 1;
    String txt = "txtPrizepool";
%>

<div class="login-form">
    <form method="post" action="prizepool">
        <div class="container">
            <br>
            <h1 class="display-3 text-center">Percentage per Place</h1>
            <hr>
            <a href="prizepool.jsp" class="btn btn-link">Go to Edit </a>
            <table class="table table-bordered">
                <tr class="thead-dark">
                    <th class="text-center">ID</th>
                    <th class="text-center">Place</th>
                    <th class="text-center">Percentage</th>
                </tr>
                <%
                    for(Prizepool prizepool : prizepools) {
                %>
                <tr>
                    <td class="text-center"><%=prizepool.getIdPrizePool()%></td>
                    <td class="text-center"><%=prizepool.getPlace()%></td>
                    <td class="text-center"><%=prizepool.getPercentage()%></td>

                </tr>
                <%
                        prizepoolCounter++;
                    }%>
            </table>

        </div>
    </form>
</div>

</body>
</html>

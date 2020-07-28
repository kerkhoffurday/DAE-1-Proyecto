<%@ page import="pe.isil.model.Team" %>
<%@ page import="java.util.List" %>
<%@ page import="pe.isil.dao.TeamDAO" %><%--
  Created by IntelliJ IDEA.
  User: CRIS
  Date: 2/12/2019
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head>
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


<%
    List<Team> teams = TeamDAO.findAllTeams();
    if (teams != null){
        System.out.println("Teams exist");
    }
%>
<div class="container">
    <h1 class="display-4 text-center">Teams participating on the IT 2018</h1>
    <hr>
    <table class="table table-bordered">
        <tr class="thead-dark">
            <th class="text-center">ID</th>
            <th class="text-center">Nombre</th>
            <th class="text-center">País</th>
        </tr>
        <%
            for(Team team : teams) {
        %>
        <tr>
            <td class="text-center"><%=team.getIdEquipo()%></td>
            <td class="text-center"><%=team.getNomEquipo()%></td>
            <td class="text-center"><%=team.getPaisEquipo()%></td>
        </tr>
        <%}%>
    </table>
</div>
</body>
</html>

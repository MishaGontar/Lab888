<%@ page import="DataBase.Cookies" %><%--
  Created by IntelliJ IDEA.
  User: Bohdan
  Date: 09.12.2021
  Time: 6:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/main.css">
    <title>Sport club</title>
</head>
<body style="background-image: url(img/6.jpg);">
<div class="topnav">
    <a href="index.jsp">Home</a>
    <% if (Cookies.getCookieByName(request,"user") != null) {%>
    <a href="trainingController">Trainings</a>
    <a href="info_hall.jsp">Halls</a>
    <a href="user.jsp">User</a>
    <%} else {%>
    <a href="log_in.jsp">Log In</a>
    <a href="sign_up.jsp">Sign Up</a>
    <form style="display:inline" action="LogOut">
        <button class="button_log" type="submit" action="LogOut">Log Out</button>
    </form>
    <% }; %>
    <div id="google_translate_element" style="float:right"></div>

    <script type="text/javascript">
        function googleTranslateElementInit() {
            new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
        }
    </script>

    <script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</div>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: AmirhosseinIT
  Date: 2/23/2020
  Time: 12:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="resource/css/bootstrap.min.css">
    <link rel="stylesheet" href="resource/fonts/fontawesome/css/fontawesome.css">
    <link rel="stylesheet" href="resource/fonts/fontawesome/css/solid.css">
    <link rel="stylesheet" href="resource/fonts/fontawesome/css/all.css">
    <link rel="stylesheet" href="resource/css/style.css">
    <title>User Panel</title>
</head>
<body>

<div class="sidebar">
    <header>
        <a href="userPanel.jsp">User</a>
    </header>

    <a href="userInbox.jsp" ><i class="fa fa-fw fa-inbox"></i> Inbox</a>
    <a href="userCompose.jsp"><i class="fa fa-fw fa-envelope"></i> Compose</a>
    <hr>
    <a class=" dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="fa fa-fw fa-user"></i> Hello user
    </a>
    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
        <a class="dropdown-item" href="userProfile.jsp"><i class="fa fa-fw fa-user-circle"></i> Profile</a>
        <a class="dropdown-item" href="index.jsp"><i class="fa fa-fw fa-sign-out-alt"></i> Log Out</a>
    </div>
</div>

<div class="content">


</div>

<script src="resource/js/popper.min.js"></script>
<script src="resource/js/jquery.min.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
</body>
</html>

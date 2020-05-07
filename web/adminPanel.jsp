<%--
  Created by IntelliJ IDEA.
  User: AmirhosseinIT
  Date: 2/5/2020
  Time: 12:20 PM
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
    <title>Admin</title>
  </head>
  <body>


  <div class="sidebar">
    <header>
      <a href="adminPanel.jsp">Admin</a>
    </header>
    <a href="adminUsers.jsp"><i class="fa fa-fw fa-users"></i> Users</a>
    <a href="adminMessages.jsp" ><i class="fa fa-fw fa-envelope"></i> Message</a>
    <a href="adminRoles.jsp" ><i class="fa fa-fw fa-user"></i> Roles</a>
    <a href="adminSendMessage.jsp"><i class="fa fa-fw fa-edit"></i> Send Message</a>
    <hr>
    <a class=" dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <i class="fa fa-fw fa-user"></i> Hello user
    </a>
    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
      <a class="dropdown-item" href="adminProfile.jsp"><i class="fa fa-fw fa-user-circle"></i> Profile</a>
      <a class="dropdown-item" href="index.jsp"><i class="fa fa-fw fa-sign-out-alt"></i> Log Out</a>
    </div>
  </div>

  <div class="content">


  </div>


    <script>
        var xhttp = new XMLHttpRequest();

        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
            var obj = JSON.parse(this.responseText);
            document.getElementById("demo").innerHTML = null;
            for (var i = 0; i < obj.length; i++) {
              document.getElementById("demo").innerHTML +=  "<tr> <td>" + obj[i].name + "</td> <td>" + obj[i].email + "</td> <td>" + obj[i].id + "</td> </tr>";
            }
          }
        };
        xhttp.open("GET", "http://localhost:8081/action/person/findAll.do", true);
        xhttp.send();

    </script>
  <script src="resource/js/popper.min.js"></script>
  <script src="resource/js/jquery.min.js"></script>
  <script src="resource/js/bootstrap.min.js"></script>
  </body>
</html>

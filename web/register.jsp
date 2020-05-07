<%--
  Created by IntelliJ IDEA.
  User: AmirhosseinIT
  Date: 2/22/2020
  Time: 3:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="resource/css/bootstrap.min.css">
    <link rel="stylesheet" href="resource/fonts/fontawesome/css/fontawesome.css">
    <link rel="stylesheet" href="resource/fonts/fontawesome/css/solid.css">
    <link rel="stylesheet" href="resource/fonts/fontawesome/css/all.css">
    <link rel="stylesheet" href="resource/css/styleLogin.css">
    <title>Register</title>
</head>
<body>
<div class="modal-dialog text-center">
    <div class="col-sm-8 main-section">
        <div class="modal-content">
            <div class="col-12 user-img">
                <img src="resource/img/face.png" alt="">
            </div>

                <div class="form-group">
                    <i class="fa fa-user user-icon"></i> <input type="text" class="form-control" id="n" name="name" placeholder="Enter Username">
                </div>
                <div class="form-group">
                    <i class="fa fa-envelope user-icon"></i> <input type="email" class="form-control" id="e" name="email" placeholder="Enter Email">
                </div>
                <div class="form-group">
                    <i class="fa fa-lock user-icon"></i> <input type="password" class="form-control" id="p" name="password" placeholder="Enter Password">
                </div>
                <button type="submit" class="btn"><i class="fa fa-sign-out-alt"></i>Register</button>

        </div>
    </div>
</div>
<script src="resource/js/jquery.min.js"></script>
<script>
    $('button').on('click', function () {
        $.ajax({
            'url':'http://localhost:8081/action/person/save.do',
            'data':{'name':$('#n').val(),'email':$('#e').val(),'password':$('#p').val()},
            success: function () {
                window.location.href = "login.jsp";
            }
        })
    })
</script>

<script src="resource/js/popper.min.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: AmirhosseinIT
  Date: 2/6/2020
  Time: 2:05 AM
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
    <title>User List</title>
</head>
<body>

<div class="sidebar">
    <header>
        <a href="adminPanel.jsp">Admin</a>
    </header>
    <a id="u" class="active" href="adminUsers.jsp"><i class="fa fa-fw fa-users"></i> Users</a>
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
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        <h4>Users</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="thead-inverse">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Role</th>
                        </tr>
                        </thead>
                        <tbody id="users">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>

</div>
<script src="resource/js/popper.min.js"></script>
<script src="resource/js/jquery.min.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
            $.ajax({
                'url':'http://localhost:8081/action/person/findAll.do',
                'dataType':'JSON',
                success:function (res) {
                    var ht ;
                    $.each(res,function () {
                        ht+='<tr>';
                        ht += '<td>';
                        ht += this.id;
                        ht += '</td>';
                        ht += '<td>';
                        ht += this.name;
                        ht += '</td>';
                        ht += '<td>';
                        ht += this.email;
                        ht += '</td>';
                        ht += '<td>';
                        ht += (this.role === null) ? "" : this.role.name;
                        ht += '</td>';
                        ht += '</tr>';
                    })
                    $('#users').html(ht);
                 }
            })
    })

</script>


</body>
</html>

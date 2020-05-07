<%--
  Created by IntelliJ IDEA.
  User: AmirhosseinIT
  Date: 2/6/2020
  Time: 2:13 AM
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
    <title>Roles</title>
</head>
<body>
<div class="sidebar">
    <header>
        <a href="adminPanel.jsp">Admin</a>
    </header>
    <a href="adminUsers.jsp"><i class="fa fa-fw fa-users"></i> Users</a>
    <a href="adminMessages.jsp" ><i class="fa fa-fw fa-envelope"></i> Message</a>
    <a class="active" href="adminRoles.jsp" ><i class="fa fa-fw fa-user"></i> Roles</a>
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
    <section id="actions" class="py-4 mb-4 bg-faded">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <a href="" class="btn btn-success btn-block" data-toggle="modal" data-target="#newModal"><i class="fa fa-plus"></i> New</a>
                </div>
                <div class="col-md-3">
                    <a href="" class="btn btn-danger btn-block" data-toggle="modal" data-target="#deleteModal"><i class="fa fa-minus"></i> Delete</a>
                </div>
                <div class="col-md-3">
                    <a href="" class="btn btn-warning btn-block" data-toggle="modal" data-target="#editModal"><i class="fa fa-edit"></i> Edit</a>
                </div>
                <div class="col-md-3">
                    <a href="" class="btn btn-primary btn-block" data-toggle="modal" data-target="#assignModal"><i class="fa fa-tasks"></i> Assign</a>
                </div>
            </div>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        <h4>Roles</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="thead-inverse">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                        </tr>
                        </thead>
                        <tbody id="roles">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>

</div>
<div class="modal fade" id="newModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-success text-white">
                <h5 class="modal-title" id="newModalLabel">Role Information</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">

                    <div class="form-group">
                        <label  class="form-control-label">Name</label>
                        <input id="n" type="text" class="form-control">
                    </div>
                <div class="main">

                </div>

            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Close</button>
                <button class="btn btn-success" data-dismiss="modal" id="cre">Create</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="deleteModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-danger text-white">
                <h5 class="modal-title" id="deleteModalLabel">Role Information</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                    <div class="form-group">
                        <label  class="form-control-label">ID</label>
                        <input id="i" type="text" class="form-control">
                    </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Close</button>
                <button id="del" class="btn btn-danger" data-dismiss="modal">Delete</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="editModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-warning text-white">
                <h5 class="modal-title" id="editModalLabel">Role Information</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                    <div class="form-group">
                        <label  class="form-control-label">ID</label>
                        <input id="i2" type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label  class="form-control-label">Name</label>
                        <input id="n2" type="text" class="form-control">
                    </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Close</button>
                <button id="up" class="btn btn-warning" data-dismiss="modal">Update</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="assignModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title" id="assignModalLabel">Role Information</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                    <div class="form-group">
                        <label  class="form-control-label">Person ID</label>
                        <input id="i3" type="text" class="form-control">
                    </div>
                <div class="form-group">
                    <label  class="form-control-label">Role ID</label>
                    <input id="i4" type="text" class="form-control">
                </div>
                    <div class="form-group">
                        <label  class="form-control-label">Role Name</label>
                        <input id="n3" type="text" class="form-control">
                    </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Close</button>
                <button class="btn btn-primary" data-dismiss="modal" id="ass">Assign</button>
            </div>
        </div>
    </div>
</div>
<script>
    var xhttp = new XMLHttpRequest();

    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var obj = JSON.parse(this.responseText);
            document.getElementById("roles").innerHTML = null;
            for (var i = 0; i < obj.length; i++) {
                document.getElementById("roles").innerHTML +=  "<tr> <td>" + obj[i].id + "</td> <td>" + obj[i].name + "</td> </tr>";
            }
        }
    };
    xhttp.open("GET", "http://localhost:8081/action/role/findAllRole.do", true);
    xhttp.send();

</script>
<script src="resource/js/popper.min.js"></script>
<script src="resource/js/jquery.min.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        $('#cre').on('click',function () {
            $.ajax({
                'url':'http://localhost:8081/action/role/saveRole.do',
                'data':{'name':$('#n').val()},
                'dataType':'JSON',
                success:function (res) {
                        var ht = '<tr>';
                        ht += '<td>';
                        ht += res.id;
                        ht += '</td>';
                        ht += '<td>';
                        ht += res.name;
                        ht += '</td>';
                        ht += '</tr>';
                        $('#roles').append(ht);
                }
            })
        });
        $('#del').on('click', function () {
            $.ajax({
                'url': 'http://localhost:8081/action/role/removeRole.do',
                'data': {'id': $('#i').val()},
                'dataType': 'JSON',
                success: function (res) {
                    var ht = '<tr>';
                    ht += '<td>';
                    ht += res.id;
                    ht += '</td>';
                    ht += '<td>';
                    ht += res.name;
                    ht += '</td>';
                    ht += '</tr>';
                    $('ht').remove();
                }
            })
        });
        $('#up').on('click', function () {

            $.ajax({
                'url': 'http://localhost:8081/action/role/updateRole.do',
                'data': {'id': $('#i2').val(),'name':$('#n2').val()},
                'dataType': 'JSON',
                success: function (res) {
                    var ht = '<tr>';
                    ht += '<td>';
                    ht += res.id;
                    ht += '</td>';
                    ht += '<td>';
                    ht += res.name;
                    ht += '</td>';
                    ht += '</tr>';
                    $('#roles').append();
                }
            })
        });
        $('#ass').on('click', function () {
            $.ajax({
                'url': 'http://localhost:8081/action/person/assignRole.do',
                'data': {'id': $('#i3').val(),'role.id':$('#i4').val(),'role.name':$('#n3').val()},
                'dataType': 'JSON',
                success: function (res) {
                    console.log(res);
                    alert(res.id + " " + res.name + "<==>" + res.role.id + " " + res.role.name );
                }
            })
        });
    })
</script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: AmirhosseinIT
  Date: 2/23/2020
  Time: 1:46 AM
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
    <title>Profile</title>
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
    <section id="actions" class="py-4 mb-4 bg-faded">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <a href="" class="btn btn-success btn-block" data-toggle="modal" data-target="#passwordModal"><i class="fa fa-lock"></i> Change password</a>
                </div>
                <div class="col-md-3">
                    <a href="" class="btn btn-danger btn-block" data-toggle="modal" data-target="#deleteModal"><i class="fa fa-remove"></i> Delete Account</a>
                </div>
            </div>
        </div>
    </section>
    <div class="card">
        <div class="card-header">
            <h4>Edit Profile</h4>
        </div>
        <div class="container-fluid">
                <div class="form-group">
                    <label class="form-control-label">ID</label>
                    <input id="upID" type="text" class="form-control">
                </div>
                <div class="form-group">
                    <label class="form-control-label">Name</label>
                    <input id="upName" type="text" class="form-control">
                </div>
                <div class="form-group">
                    <label class="form-control-label">Email</label>
                    <input id="upEmail" type="text" class="form-control">
                </div>
                <div class="form-group">
                    <button id="edit" class="btn btn-success"><i class="fa fa-user-edit"></i> Edit</button>
                </div>
        </div>
    </div>
</div>

<div class="modal fade" id="passwordModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-warning text-white">
                <h5 class="modal-title" id="passwordModalLabel">Edit Password</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label  class="form-control-label">ID</label>
                    <input id="editID" type="password" class="form-control">
                </div>
                    <div class="form-group">
                        <label  class="form-control-label">Password</label>
                        <input id="editP" type="password" class="form-control">
                    </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Close</button>
                <button id="editPass" class="btn btn-warning" data-dismiss="modal">Edit Password</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="deleteModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-warning text-white">
                <h5 class="modal-title" id="deleteModalLabel">Delete Account</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                    <div class="form-group">
                        <label  class="form-control-label">ID</label>
                        <input id="delID" type="text" class="form-control">
                    </div>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Close</button>
                <button id="delBtn" class="btn btn-warning" data-dismiss="modal">Delete</button>
            </div>
        </div>
    </div>
</div>



<script src="resource/js/popper.min.js"></script>
<script src="resource/js/jquery.min.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        $('#delBtn').on('click',function () {
            $.ajax({
                'url':'http://localhost:8081/action/person/remove.do',
                'data':{'id':$('#delID').val()},
                'dataType':'JSON',
                success:function () {
                    alert($('#delID').val() + " removed");
                }
            })
        });
        $('#edit').on('click',function () {
            $.ajax({
                'url':'http://localhost:8081/action/person/update.do',
                'data':{'id':$('#upID').val(),'name':$('#upName').val(),'email':$('#upEmail').val()},
                'dataType':'JSON',
                success:function (res) {
                    alert(res.id + " " + res.name + " " + res.email);
                }
            })
        });
        $('#editPass').on('click',function () {
            $.ajax({
                'url':'http://localhost:8081/action/person/updatePass.do',
                'data':{'id':$('#editID').val(),'password':$('#editP').val()},
                'dataType':'JSON',
                success:function () {
                    alert("changed");
                }
            })
        })
    })
</script>
</body>
</html>

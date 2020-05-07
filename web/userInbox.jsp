<%--
  Created by IntelliJ IDEA.
  User: AmirhosseinIT
  Date: 2/23/2020
  Time: 1:38 AM
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
    <title>Title</title>
</head>
<body>
<div class="sidebar">
    <header>
        <a href="userPanel.jsp">User</a>
    </header>

    <a class="active" href="userInbox.jsp" ><i class="fa fa-fw fa-inbox"></i> Inbox</a>
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
    <div class="main">
        <div class="form-group">
            <label class="form-control-label">ID</label>
            <input name="from" id="f" type="text" class="form-control">
        </div>
        <div class="col-md-3">
            <button href="" id="fe" class="btn btn-success btn-block"><i class="fa fa-plus"></i> Fetch</button>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        <h4>Messages</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="thead-inverse">
                        <tr>
                            <th>#</th>
                            <th>subject</th>
                            <th>date</th>
                            <th>Text</th>
                            <th>From</th>
                            <th>To</th>
                        </tr>
                        </thead>
                        <tbody id="messages">

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
        $('#fe').on('click',function () {
            $.ajax({
                'url':'http://localhost:8081/action/message/findByAddTo.do',
                'data':{'addTo':$('#f').val()},
                'dataType':'JSON',
                success:function (res) {
                    var ht;
                    $.each(res,function () {
                        ht += '<tr>';
                        ht += '<td>';
                        ht += this.id;
                        ht += '</td>';
                        ht += '<td>';
                        ht += this.subject;
                        ht += '</td>';
                        ht += '<td>';
                        ht += this.date;
                        ht += '</td>';
                        ht += '<td>';
                        ht += this.text;
                        ht += '</td>';
                        ht += '<td>';
                        ht += this.addFrom;
                        ht += '</td>';
                        ht += '<td>';
                        ht += this.addTo;
                        ht += '</td>';
                        ht += '</tr>';
                    })
                    console.log(ht);
                    $('#messages').html(ht);
                }
            })
        })
    })
</script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: AmirhosseinIT
  Date: 2/10/2020
  Time: 7:04 AM
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
    <title>Send Message</title>
</head>
<body>
<div class="sidebar">
    <header>
        <a href="adminPanel.jsp">Admin</a>
    </header>
    <a href="adminUsers.jsp"><i class="fa fa-fw fa-users"></i> Users</a>
    <a href="adminMessages.jsp" ><i class="fa fa-fw fa-envelope"></i> Message</a>
    <a href="adminRoles.jsp" ><i class="fa fa-fw fa-user"></i> Roles</a>
    <a class="active" href="adminSendMessage.jsp"><i class="fa fa-fw fa-edit"></i> Send Message</a>
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
    <div class="card">
        <div class="card-header">
            <h4>Message Information</h4>
        </div>
        <div class="container-fluid">
                <div class="form-group">
                    <label class="form-control-label">From</label>
                    <input id="addFrom" type="text" class="form-control">
                </div>
                <div class="form-group">
                    <label class="form-control-label">To</label>
                    <input id="addTo" type="text" class="form-control">
                </div>
            <div class="form-group">
                <label class="form-control-label">Date</label>
                <input id="date" type="text" class="form-control">
            </div>
                <div  class="form-group">
                    <label class="form-control-label">Subject</label>
                    <select id="subject" name = "subject" class="form-control">
                        <option value="Web Development">Web Development</option>
                        <option value="Tech Gadgets">Tech Gadgets</option>
                        <option value="Business">Business</option>
                        <option value="Health & Wellness">Health & Wellness</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Body</label>
                    <textarea id="text" name="text" class="form-control"></textarea>
                </div>
                <div class="form-group">
                    <a id="send" class="btn btn-success" data-toggle="modal" data-target="#passwordModal"><i class="fa fa-paper-plane"></i> Send</a>
                </div>
        </div>
    </div>
</div>

<div class="modal fade" id="passwordModal">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-warning text-white">
                <h5 class="modal-title" id="passwordModalLabel">Message Text</h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <table>
                    <tbody id="msg">

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>



<script src="resource/js/popper.min.js"></script>
<script src="resource/js/jquery.min.js"></script>
<script src="resource/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        $('#send').on('click',function () {
            $.ajax({
                'url':'http://localhost:8081/action/message/saveMsg.do',
                'data':{'addFrom':$('#addFrom').val(),'addTo':$('#addTo').val(),'subject':$('#subject').val(),'text':$('#text'),'date':$('#date').val()},
                // 'dataType':'JSON',
                success:function (res) {
                    var ht = '<tr>';
                    ht += '<td class="text-right"><label class="mr-2">From:</label></td>';
                    ht += '<td>' + res.addFrom + '</td>';
                    ht += '</tr>';
                    ht += '<tr>';
                    ht += '<td class="text-right"><label class="mr-2">To:</label></td>';
                    ht += '<td>' + res.addTo + '</td>';
                    ht += '</tr>';
                    ht += '<tr>';
                    ht += '<td class="text-right"><label class="mr-2">Date:</label></td>';
                    ht += '<td>' + res.date + '</td>';
                    ht += '</tr>';
                    ht += '<tr>';
                    ht += '<td class="text-right"><label class="mr-2">Subject:</label></td>';
                    ht += '<td>' + res.subject + '</td>';
                    ht += '</tr>';
                    ht += '<tr>';
                    ht += '<td class="text-right"><label class="mr-2">Text:</label></td>';
                    ht += '<td>' + res.text + '</td>';
                    ht += '</tr>';
                    $('#msg').html('ht');
                }
            })
        })
    })
</script>

</body>
</html>

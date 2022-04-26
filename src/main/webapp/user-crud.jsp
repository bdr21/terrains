<%@ page import="models.Client" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>User Crud</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="js/main.mine.js" defer></script>
    <script>
            $(document).ready(function(){
                // Activate tooltip
                $('[data-toggle="tooltip"]').tooltip();

                // Select/Deselect checkboxes
                var checkbox = $('table tbody input[type="checkbox"]');
                $("#selectAll").click(function(){
                    if(this.checked){
                        checkbox.each(function(){
                            this.checked = true;
                        });
                    } else{
                        checkbox.each(function(){
                            this.checked = false;
                        });
                    }
                });
                checkbox.click(function(){
                    if(!this.checked){
                        $("#selectAll").prop("checked", false);
                    }
                });
            });
        </script>
</head>
<body>
<h1>View All Records</h1><br/>

<div class="container-xl">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
                        <h2>Manage <b>Users</b></h2>
                    </div>
                    <div class="col-sm-6">
                        <a href="#addUserModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New User</span></a>
                        <a href="#deleteUserModal" onclick="deleteBatchOfUsers()" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>
                    </div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
                    </th>
                    <th>UID</th>
                    <th>FName</th>
                    <th>Lname</th>
                    <th>Address</th>
                    <th>email</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="cl" items="${listedescl}">
                    <tr class="user-tr ">
                        <td>
                            <span class="custom-checkbox">
                                <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                <label for="checkbox1"></label>
                            </span>
                        </td>
                        <td><c:out value="${cl.getId()}"/></td>
                        <td id="user-fname"><c:out value="${cl.getPrenom()}"/></td>
                        <td id="user-lname"><c:out value="${cl.getNom()}"/></td>
                        <td id="user-address"><c:out value="${cl.getAdresse()}"/></td>
                        <td id="user-email"><c:out value="${cl.getEmail()}"/></td>
                        <td>
                            <a href="#editUserModal" onclick="fillEditForm(this)" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                            <a href="#deleteUserModal" onclick="sendIdToDeleteForm(this)" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="clearfix">
                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item active"><a href="#" class="page-link">3</a></li>
                    <li class="page-item"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div id="addUserModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="user-crud.servlet" method="post">
                <input type="hidden" name="_method" value="POST">
                <div class="modal-header">
                    <h4 class="modal-title">Add User</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>FName</label>
                        <input type="text" class="form-control" name="fname" id="af-fname">
                    </div>
                    <div class="form-group">
                        <label>Lname</label>
                        <input type="text" class="form-control" name="lname" id="af-lname">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" name="uemail" id="af-uemail">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="upass" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <textarea class="form-control" name="uaddress" id="af-uaddress"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-success" value="Add">
                </div>
            </form>
        </div>
    </div>
</div>

<div id="deleteUserModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="user-crud.servlet" method="post">
                <input hidden name="_method" value="DELETE">
                <input hidden name ="uid" id="df-uid">
                <input hidden name ="uids" id="df-uids">
                <div class="modal-header">
                    <h4 class="modal-title">Delete user</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <p>Are you sure you want to delete these Records?</p>
                    <p class="text-warning"><small>This action cannot be undone.</small></p>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-danger" value="Delete">
                </div>
            </form>
        </div>
    </div>
</div>

<div id="editUserModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="user-crud.servlet" method="post">
                <input hidden name="_method" value="PUT">
                <input hidden name="uid" id="ef-uid">
                <div class="modal-header">
                    <h4 class="modal-title">Edit User</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>FName</label>
                        <input type="text" class="form-control" name="fname" id="ef-fname">
                    </div>
                    <div class="form-group">
                        <label>Lname</label>
                        <input type="text" class="form-control" name="lname" id="ef-lname">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" name="email" id="ef-uemail">
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Address</label>
                        <textarea class="form-control" name="uaddress" id="ef-uaddress"></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <input type="submit" class="btn btn-info" value="Save">
                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>




<%--    <%  ArrayList<Client> arr = (ArrayList<Client>) request.getAttribute("listedescl");--%>
<%--        for (Client cl : arr) {--%>
<%--    %>--%>
<%--    <%= cl.getAdresse() %>--%>
<%--    <% } %>--%>


<%--<h1>Edit Form</h1>--%>
<%--<form action="user-crud.servlet" method="post">--%>
<%--    <table>--%>
<%--        <tr><td>FName:</td><td>--%>
<%--            <input type="text" name="fname" id="ef-fname"/></td></tr>--%>
<%--        <tr><td>LName:</td><td>--%>
<%--        <input type="text" name="lname" id="ef-lname"/></td></tr>--%>
<%--        <tr><td>Address:</td><td>--%>
<%--            <input type="text" name="uaddress" id="ef-uaddress"/></td></tr>--%>
<%--        <tr><td>Password:</td><td>--%>
<%--            <input type="password" name="password" id="password"/></td></tr>--%>
<%--        <tr><td>Email:</td><td>--%>
<%--            <input type="email" name="email" id="ef-uemail"/></td></tr>--%>
<%--        <tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>--%>
<%--    </table>--%>
<%--</form>--%>


<%--<table class="tftable" style="border: 1px solid black;" id="users-list">--%>
<%--    <tr>--%>
<%--        <th>Name</th>--%>
<%--        <th>Prenom</th>--%>
<%--        <th>Adresse</th>--%>
<%--        <th>Email</th>--%>
<%--    </tr>--%>
<%--    <c:forEach var="cl" items="${listedescl}">--%>
<%--        <tr class="user-tr " onclick="fillEditForm(this)">--%>
<%--            <td id="user-fname"><c:out value="${cl.getPrenom()}"/></td>--%>
<%--            <td id="user-lname"><c:out value="${cl.getNom()}"/></td>--%>
<%--            <td id="user-address"><c:out value="${cl.getAdresse()}"/></td>--%>
<%--            <td id="user-email"><c:out value="${cl.getEmail()}"/></td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--</table>--%>

<%--<h1>Add New User</h1>--%>
<%--<form action="user-crud.servlet" method="post">--%>
<%--    <input type="hidden" name="_method" value="POST">--%>
<%--    <table>--%>
<%--        <tr><td>FName:</td><td><input type="text" name="fname"/></td></tr>--%>
<%--        <tr><td>LName:</td><td><input type="text" name="lname"/></td></tr>--%>
<%--        <tr><td>Password:</td><td>--%>
<%--            <input type="password" name="upass"/></td></tr>--%>
<%--        <tr><td>Email:</td><td><input type="email" name="uemail"/></td></tr>--%>
<%--        <tr><td>Adresse:</td><td><input type="text" name="uaddress"/></td></tr>--%>
<%--        <tr><td colspan="2"><input type="submit" value="Add User"/></td></tr>--%>
<%--    </table>--%>
<%--</form>--%>
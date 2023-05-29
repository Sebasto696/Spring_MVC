<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

        <style>
            body {
                font-family: 'Courier', Arial, sans-serif;
            }

            .card-header {
                font-family: 'Courier', Arial, sans-serif;
            }
        </style>
    </head>

    <body>
        <div class="container d-flex justify-content-center align-items-center vh-100">
            <div class="card">
                <div class="card-header bg-dark text-white">
                    <h2 class="text-center">Table of persons</h2>
                    <div class="text-center">
                        <a href="agregar.htm" class="btn btn-light rounded-pill">New person</a>
                    </div>
                </div>



                <div class="card-body">
                    <div class="table-responsive table-responsive-md">
                        <table class="table table-hover rounded-3">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>E-mail</th>
                                    <th>Phone number</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="dato" items="${lista}">
                                    <tr>
                                        <td>${dato.Id}</td>
                                        <td>${dato.Nombres}</td>
                                        <td>${dato.Correo}</td>
                                        <td>${dato.Telefono}</td>
                                        <td>
                                            <a href="editar.htm?id=${dato.id}" class="btn btn-warning rounded-pill">Edit</a>
                                            <a href="eliminar.htm?id=${dato.id}" class="btn btn-danger rounded-pill">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>

        </div>
    </body>
</html>

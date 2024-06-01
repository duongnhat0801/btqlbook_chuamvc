<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 5/29/2024
  Time: 11:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body class="bg-info-subtle">
<div class="container mt-5">
    <div class="card">
        <div class="card-header d-flex justify-content-between">
            <h5>Quản Lý Sách</h5>
            <a href="/books/new" class="btn btn-success"> Thêm <i class="fa-solid fa-plus"></i></a>
        </div>
        <div class="card-body">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th scope="col"> # </th>
                    <th scope="col"> Tên Sách </th>
                    <th scope="col"> Giá Sách </th>
                    <th scope="col"> Mô Tả </th>
                    <th scope="col"> Tác Giả </th>
                    <th scope="col"> Hành Động </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${books}" var="item" varStatus="status">
                    <tr>
                        <td>${status.index + 1}</td>
                        <td>${item.name}</td>
                        <td>${item.price}</td>
                        <td>${item.description}</td>
                        <td>${item.auth}</td>
                        <td>
                            <div class="text-nowrap">
                                <a href="/books/edit?id=${item.id}" class="btn btn-info"><i class="fa-solid fa-pen-to-square"></i></a>
                                <a href="/books/delete?id=${item.id}" class="btn btn-danger"><i class="fa-solid fa-trash"></i></a>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

    </div>
</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>

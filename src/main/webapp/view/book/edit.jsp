<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 5/29/2024
  Time: 10:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container mt-4 p-4 ">
    <div class="card p-4 bg-secondary-subtle">
        <c:if test = "${errors != null}">

            <c:forEach items="${errors}" var="item">
                <p>${item}</p>
            </c:forEach>
        </c:if>
        <div>
            <form action="/books/edit?id=${book.id}" method="post">
                <div class="mb-3 ">
                    <input type="text" class="form-control mb-2" value="${book.name}" placeholder="Nhập Tên Sách" name="name">
                    <input type="text" class="form-control mb-2"  value="${book.price}" placeholder="Nhập Giá" name="price">
                    <input type="text" class="form-control mb-2"  value="${book.description}" placeholder="Nhập Mô Tả" name="description">
                    <input type="text" class="form-control mb-2"  value="${book.auth}" placeholder="Nhập Tên Tác Giả" name="author">
                    <input type='submit'  class="container mt-3 btn btn-success" value='Submit'>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>

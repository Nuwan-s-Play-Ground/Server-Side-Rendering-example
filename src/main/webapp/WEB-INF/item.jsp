<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.dep11.web.to.Customer" %>
<%@ page import="lk.ijse.dep11.web.to.Item" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP - Hello World</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,500;0,700;1,300;1,400&family=Poppins:ital@1&family=Ubuntu:ital,wght@1,300&display=swap" rel="stylesheet">
    <script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<%--    <link rel="stylesheet" href="css/reset.css">--%>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/home.css">
</head>
<body>
<%@include file="header.jsp"%>
<h1>
    <ion-icon name="cart"></ion-icon>
    Items</h1>
<table>
    <thead>
        <tr>
            <th>Item Code</th>
            <th>Description</th>
            <th>Unit Price</th>
        </tr>
    </thead>
    <tbody>
<%--    <%--%>
<%--        List<Item> itemList=(List<Item>) request.getAttribute("itemList");--%>
<%--        for (Item item: itemList) {--%>
<%--    %>--%>
<%--        <tr>--%>
<%--            <td><%= item.getItemCode()%></td>--%>
<%--            <td><%= item.getDescription()%></td>--%>
<%--            <td><%= item.getUnitPrice()%></td>--%>
<%--        </tr>--%>

<%--    <%--%>
<%--        }--%>
<%--    %>--%>
        <c:forEach var="item" items="${itemList}">
            <tr>
                <td>${item.itemCode}</td>
                <td>${item.description}</td>
                <td>${item.unitPrice}</td>
            </tr>
        </c:forEach>
    </tbody>
<%--        <tr>--%>
<%--            <td>C001</td>--%>
<%--            <td>Kasun</td>--%>
<%--            <td>Galle</td>--%>
<%--        </tr>--%>

<%--        <tr>--%>
<%--            <td>C002</td>--%>
<%--            <td>Nuwan</td>--%>
<%--            <td>Galle</td>--%>
<%--        </tr>--%>

<%--        <tr>--%>
<%--            <td>C003</td>--%>
<%--            <td>Kamal</td>--%>
<%--            <td>Matara</td>--%>
<%--        </tr>--%>
</table>
<footer>
    Smart POS-Project by DEP-11
</footer>
</body>
</html>

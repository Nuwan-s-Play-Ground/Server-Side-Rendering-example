<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.List" %>
<%@ page import="lk.ijse.dep11.web.to.Customer" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%--%>
<%--    try{--%>
<%--    Class.forName("com.mysql.cj.jdbc.Driver");--%>
<%--    Connection connection = DriverManager--%>
<%--            .getConnection("jdbc:mysql://localhost:3306/dep11","root","123");--%>
<%--    ResultSet rst = connection.createStatement().executeQuery("SELECT * FROM Customer");--%>
<%--%>--%>
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
<body class="p-2">
<%@include file="header.jsp"%>
<h1>
<%--<c:if test="false"><h1>I am a h1</h1></c:if>--%>

    <ion-icon name="body"></ion-icon>
    Customers</h1>

<%--    <c:forEach var="cu" items="${[1,2,3,4]}">--%>
<%--        <h1>${cu}</h1>--%>
<%--    </c:forEach>--%>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>ADDRESS</th>
        </tr>
    </thead>
    <tbody>
<%--    <%--%>
<%--        while (rst.next()){--%>
<%--            String id = rst.getString("CustID");--%>
<%--            String name = rst.getString("CustName");--%>
<%--            String address =rst.getString("CustAddress");--%>

<%--        List<Customer> customerList=(List<Customer>) request.getAttribute("customerList");--%>
<%--        for (Customer customer: customerList) {--%>
<%--    %>--%>
<%--        <tr>--%>
<%--            <td><%= customer.getId()%></td>--%>
<%--            <td><%= customer.getName()%></td>--%>
<%--            <td><%= customer.getAddress()%></td>--%>
<%--        </tr>--%>

<%--    <%--%>
<%--        }--%>
<%--    %>--%>

        <c:forEach var="customer" items="${customerList}">
            <tr>
                <td>${customer.id}</td>
                <td>${customer.name}</td>
                <td>${customer.address}</td>
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
<%--<%--%>
<%--    connection.close();--%>
<%--    } catch (Exception e){--%>
<%--        throw  new RuntimeException(e);--%>
<%--    }--%>
<%--%>--%>
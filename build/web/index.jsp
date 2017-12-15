<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" import="java.util.*, order.*, people.*" %>
<jsp:useBean id="oList" class="order.OrderList" scope="application"/>
<jsp:useBean id="pLisp" class="people.PeopleList" scope="application"/>



<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Библиотека</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf8">
    </head>
    <body>
        <div><form action="list.jsp"><input type="hidden" name="type" value="books"/><input type="submit" value="Книги"></form></div>
        <div><form action="list.jsp"><input type="hidden" name="type" value="people"/><input type="submit" value="Люди"></form></div>
        <div><form action="orderlist.jsp"><input type="submit" value="Заказы"></form></div>
                <div><form action="dbtest.jsp"><input type="submit" value="dbtest"></form></div>

    </body>
</html>

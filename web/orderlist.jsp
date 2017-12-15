<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" import="java.util.*, order.*, people.*" %>
<jsp:useBean id="oList" class="order.OrderList" scope="application"/>
<jsp:useBean id="pList" class="people.PeopleList" scope="application"/>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Заказы</title>
    </head>
    <body>
        <h1 align="center">Список заказов</h1>
        <table border="1" align="center">
            <thead><td>Номер заказа</td><td>Экземпляр</td><td>Заказчик</td><td>Библиотекарь</td><td>Дата</td></thead>
            <% for(Order order : oList.values()){
            %>
            <tr><td><%=order.getId()%></td><td><%=order.getExemplarId()%></td><td><%=order.getReader(pList,order.getReaderId())%></td>
                <td><%=order.getReader(pList,order.getLibrarianId())%></td><td><%=order.getDate()%></td></tr>
            <%}%>
        </table>
    </body>
</html>

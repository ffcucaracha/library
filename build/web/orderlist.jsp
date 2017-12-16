<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" import="java.util.*, order.*, people.*, java.sql.*, javax.sql.*, oracle.jdbc.*, oracle.jdbc.pool.*" %>
<jsp:useBean id="oList" class="order.OrderList" scope="application"/>
<jsp:useBean id="pList" class="people.PeopleList" scope="application"/>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body {
                background-color: NavajoWhite;
                background-image: url(https://pgvhdg-db3pap001.files.1drv.com/y4mEbcJmzyotWZm5BT5f9cdWu45nKOH_9GsZvGnDBU2dDuLcko9vD-AVJqJTDRmrF1EoH5xUQIqjpdUQCRGVLGFaaVlz0JGxCqg3C4__5B9ucoHr7gV1TmSYtfb_FkiNd9detN6OUUNs2Fl012km8FSiJNeUpP00rIm4u_cF3VbOzUJEwgGS0Z84rUHLZi8wvJIdrNqVbgX-K1XEnsp8shw0w?width=1024&height=768&cropmode=none); /* Путь к фоновому рисунку */
                background-position: top; /* Положение фона */
                background-repeat: no-repeat; /* Отменяем повторение фона */
            }
        </style>
        <title>Заказы</title>
    </head>
    <body>
        <h1 align="center">Список заказов</h1>
        <table border="1" align="center">
            <thead><td>Номер заказа</td><td>Заказчик</td><td>Библиотекарь</td><td>Дата</td><td></td></thead>
            <% for(Order order : oList.values()){
            %>
            <tr><td><%=order.getId()%></td><td><%=order.getReader(pList,order.getReaderId())%></td>
                <td><%=order.getReader(pList,order.getLibrarianId())%></td><td><%=order.getDate()%></td>
                <td><form action="orderview.jsp"><input name="id_" value="<%=order.getId() %>" type="hidden"/><input type="submit" value="Просмотреть"/></form></td></tr>
            <%}%>
        </table>
    </body>
</html>

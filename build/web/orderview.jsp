<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="true" import="java.util.*, order.*, people.*" %>
<jsp:useBean id="oneOrder" class="order.Order" scope="page"/>
<jsp:useBean id="pList" class="people.PeopleList" scope="application"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Заказ</title>
    </head>
    <body>
        <% 
            Integer id = 0;
            String answer;
            try{
                if((answer=request.getParameter("id"))!=null)
                id = Integer.parseInt(request.getParameter("id"));
            
            oneOrder = new Order(id);
        %>
        <table border="1" align="center">
            <tr><td>Номер заказа</td><td><%=oneOrder.getId()%></td></tr>
            <tr><td>Читатель</td><td><%=oneOrder.getReader(pList,oneOrder.getReaderId())%></td></tr>
            <tr><td>Библиотекарь</td><td><%=oneOrder.getReader(pList,oneOrder.getLibrarianId())%></td></tr>
            <tr><td>Дата</td><td><%=oneOrder.getDate()%></td></tr>  
            <tr><td>Экземпляр</td><td><%=oneOrder.getDate()%></td></tr>            
        </table>
        <% } catch(Exception e) {out.println(e.getMessage());} %>
    </body>
</html>

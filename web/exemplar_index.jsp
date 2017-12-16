<%-- 
    Document   : index
    Created on : 11.11.2017, 12:50:22
    Author     : physicsstudent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,exemplar.*"%>
<jsp:useBean id="list" class="exemplar.ExemplarList" scope="application"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exemplar</title>
    </head>
    <body align ="center">
        <h1>Exemplar</h1>
        <%--<%=list.getI()%>--%>
        <table border="1" align="center">
        <tr>
            <td>Инвентарный номер</td>
            <td>Стоимость</td>
            <td>Что сделать?</td>
        </tr>
        <%=list.getList()%>
        <tr>
        <form action="create.jsp">
            <input hidden="" name="i" value="<%=list.getI()%>"/>
            <td><input name="inv num"></td>
            <td><input name="price"></td>
            <td>
                <input type="submit" value="Submit!">
            </td>
        </form>
        </tr>
        </table>
    </body>
</html>


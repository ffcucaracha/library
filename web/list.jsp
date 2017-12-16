<%-- 
    Document   : list
    Created on : 21.11.2017, 10:15:17
    Author     : Анна Самошилова
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!111</h1>
        <% try{
            String type = request.getParameter("type");
        } catch(Exception e) {}
  %>
  <h2><%=request.getParameter("type")%><h2>
    </body>
</html>

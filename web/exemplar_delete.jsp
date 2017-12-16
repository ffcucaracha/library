<%-- 
    Document   : delete
    Created on : 11.11.2017, 12:51:07
    Author     : physicsstudent
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="exemplar.*, java.text.*"%>
<jsp:useBean id="list" class="exemplar.ExemplarList" scope="application"/>
<%
try{
    Integer i = Integer.parseInt(request.getParameter("i"));
    list.deleteFromHashMap(i);
    out.print("Delete! <button><a href=\"index.jsp\">go back</a></button>");
} catch(Exception e){}
%>

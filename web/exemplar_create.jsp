<%-- 
    Document   : create
    Created on : 11.11.2017, 12:50:57
    Author     : physicsstudent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="exemplar.*, java.text.*"%>
<jsp:useBean id="list" class="exemplar.ExemplarList" scope="application"/>
<%
try
{
    Integer i = Integer.parseInt(request.getParameter("inv num"));
    Integer price_=Integer.parseInt(request.getParameter("price"));
    Exemplar ex = new Exemplar(i,price_);
    list.addToHashMap(ex);
    out.print("Add! <button><a href=\"index.jsp\">go back</a></button>");
}
catch(Exception e){    out.print(e.getMessage());
};
%>

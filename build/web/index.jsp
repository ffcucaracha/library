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
       <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf8"> -->
       <style>
           .cell{
               font-size: 2em;
           }
           TABLE {
                width: 100%; /* Ширина таблицы */
            } 
            input.nbutton{
                position: relative;
                display: inline-block;
                color: black;
                font-weight: bold;
                text-decoration: none;
                text-shadow: rgba(255,255,255,.5) 1px 1px, rgba(100,100,100,.3) 3px 7px 3px;
                user-select: none;
                padding: 1em 2em;
                outline: none;
                border-radius: 3px / 100%;
                background-image:
                 linear-gradient(45deg, rgba(255,255,255,.0) 30%, rgba(255,255,255,.8), rgba(255,255,255,.0) 70%),
                 linear-gradient(to right, rgba(255,255,255,1), rgba(255,255,255,0) 20%, rgba(255,255,255,0) 90%, rgba(255,255,255,.3)),
                 linear-gradient(to right, rgba(125,125,125,1), rgba(255,255,255,.9) 45%, rgba(125,125,125,.5)),
                 linear-gradient(to right, rgba(125,125,125,1), rgba(255,255,255,.9) 45%, rgba(125,125,125,.5)),
                 linear-gradient(to right, rgba(223,190,170,1), rgba(255,255,255,.9) 45%, rgba(223,190,170,.5)),
                 linear-gradient(to right, rgba(223,190,170,1), rgba(255,255,255,.9) 45%, rgba(223,190,170,.5));
                background-repeat: no-repeat;
                background-size: 200% 100%, auto, 100% 2px, 100% 2px, 100% 1px, 100% 1px;
                background-position: 200% 0, 0 0, 0 0, 0 100%, 0 4px, 0 calc(100% - 4px);
                box-shadow: rgba(0,0,0,.5) 3px 10px 10px -10px;
              }
              input.nbutton:hover {
                transition: .5s linear;
                background-position: -200% 0, 0 0, 0 0, 0 100%, 0 4px, 0 calc(100% - 4px);
              }
              input.nbutton:active {
                top: 1px;
              }
             
       </style>
    </head>
    <body background="https://pgvrdg-db3pap001.files.1drv.com/y4mZP7regTeuwUOpAFh7tShUm0C3FTYG2qNvNYcQ26Gd321nVozyXbgBXYHJdiPlCR-1-CP8U-jfuvvrmDLXBvaOf-oZs_x6nIMOCc4jIJX34pZFJq2n-SzlBwz5DixSyyl_dmKR1ZToMwfcILD0eNiENkczqVB6O-LOp_UnSB3iRHdECx4lYnIYI3LHJSdffq-lmxHdYnlV1O5CVKkjHPonw?width=1120&height=700&cropmode=none">
        <table style="margin-top: 130px" align="center">
            <tr>
                <td class="cell" align="center"><form action="list.jsp"><input  type="hidden" name="type" value="books"/><input class="nbutton" type="submit" value="Книги"></form></td>
                <td class="cell" align="center"><form action="list.jsp"><input type="hidden" name="type" value="people"/><input class="nbutton" type="submit" value="Люди"></form></td>
                <td class="cell" align="center"><form action="orderlist.jsp"><input class="nbutton" type="submit" value="Заказы"></form></td>
                <td class="cell" align="center"><form action="exemplar_index.jsp"><input class="nbutton" type="submit" value="Экземпляры"></form></td>
               <!-- <td><form action="dbtest.jsp"><input type="submit" value="dbtest"></form></td> -->
            </tr>
        </table>
    </body>
</html>

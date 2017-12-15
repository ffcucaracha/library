<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, java.sql.*, javax.sql.*, oracle.jdbc.*, oracle.jdbc.pool.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>  
        <table>
        <% OracleDataSource ods = new OracleDataSource(); ods.setServerName("paralab"); 
    ods.setServiceName("lab.univer.omsk.su"); ods.setPortNumber(1521); ods.setUser("AnnaS"); ods.setPassword("1");
    ods.setDriverType("thin"); ods.setNetworkProtocol("tcp");
    
Connection c = null; Statement st = null;
try{
        out.println("hi");

    c=ods.getConnection();
    st=c.createStatement();
    ResultSet r = st.executeQuery("select * from people");
    
    while(r.next())
    { %>
    <tr><td><%=r.getInt(1)%></td><td><%=r.getString(2)%></td><td><%=r.getString(3)%></td></tr>
   <% }
    
} catch(Exception e) {
    out.println(e.getMessage());
} finally {
    try{st.close();} catch(Exception e){}
    try{c.close();} catch(Exception e){}
}
%>
        </table>
    </body>
</html>

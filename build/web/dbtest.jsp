<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*, java.sql.*, javax.sql.*, oracle.jdbc.*, oracle.jdbc.pool.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>  
        <table border="1" align="center">
        <% OracleDataSource ods = new OracleDataSource(); ods.setServerName("paralab"); 
    ods.setServiceName("lab.univer.omsk.su"); ods.setPortNumber(1521); ods.setUser("AnnaS"); ods.setPassword("1");
    ods.setDriverType("thin"); ods.setNetworkProtocol("tcp");
    
Connection c = null; Statement st = null; PreparedStatement pst = null; CallableStatement cst = null; ResultSet rs = null;
try{
    c=ods.getConnection();
    st=c.createStatement();
    
    ResultSet r = st.executeQuery("select * from tbl_order where id=1");
    
    while(r.next())
    { %>
    <tr><td><%=r.getInt(1)%></td><td><%=r.getInt(2)%></td><td><%=r.getInt(3)%></td></tr>
   <% }
    
    /* pst = c.prepareStatement("insert into people(FIRST_NAME, SECOND_NAME, FATHER_NAME, BIRTHDAY) values(?,?,?,?)");
    pst.setString(2, "Александр");
    pst.setString(3, "Мамонов");
    pst.setString(4, "Владимирович");
    pst.setDate(5, new java.sql.Date(17,5,7));

    pst.execute();
    c.commit();

    pst = c.prepareStatement("select");

    rs = pst.executeQuery();

    cst = c.prepareCall("{call f(?,?}");
    cst.setString(2, "имя");

    cst.registerOutParameter(6, Types.NUMERIC);
    cst.execute();

    out.println("n="+cst.getBigDecimal(6)+" f()= "+cst.getString(2)); */

} catch(Exception e) {
    out.println(e.getMessage());
} finally {
    try{st.close();} catch(Exception e){}
    try{c.close();} catch(Exception e){}
%>        </table>
<%
}
%>
    </body>
</html>

<%-- 
    Document   : login
    Created on : Jul 2, 2015, 11:39:33 AM
    Author     : Java1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <jsp:useBean id="yetenek" class="admin.AdminBean" scope="request">

        <jsp:setProperty name="yetenek" property="*"/>
        <jsp:getProperty name="yetenek" property="email"/>
        <jsp:getProperty name="yetenek" property="sifre"/>

    </jsp:useBean>

    <%
        
        response.sendRedirect(yetenek.login(yetenek.getEmail(),yetenek.getSifre()));
        if(yetenek.login(yetenek.getEmail(),yetenek.getSifre()).equals("admin.jsp")){
        session.setAttribute("admin", "oturumacti");
        }

    %>

</html>
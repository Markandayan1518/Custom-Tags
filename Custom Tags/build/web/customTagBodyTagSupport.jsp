<%-- 
    Document   : customTagBodyTagSupport
    Created on : Jun 22, 2016, 11:28:03 AM
    Author     : mark-4304
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tlds/bodyTagSupport.tld" prefix="dev" %>
<html>
    <head>
        <title>Body Tag Support Example</title>
    </head>
    <body>
        <b>content of JSP page body....</b>

        <form action="">
            Enter characters in capital letter <input type="text" name="text"/>

            <%
                String str = request.getParameter("text");
            %>
            <input type="submit" value="submit"/>
        </form>
        <b>contents of custom tag body....</b>
        <dev:ascii>
            <%=str%>
        </dev:ascii>
    </body>
</html>
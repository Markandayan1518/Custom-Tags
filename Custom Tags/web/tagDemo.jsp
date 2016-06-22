<%-- 
    Document   : tagDemo
    Created on : Jun 22, 2016, 10:28:50 AM
    Author     : mark-4304
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="ex" uri="/WEB-INF/tlds/CustomTag.tld"%>
<%@taglib prefix="dev" tagdir="/WEB-INF/tags/"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tag DEMO Page</title>
    </head>
    <body>
        <h1> ${ex:hello("Mark")} </h1>
        <p>
            Excepted Substring ::
            <ex:substring start="${param.startIndex}" end="${param.endIndex}">Markandayan</ex:substring>
        </p>
        <br/>
        <dev:CustomTag str="$${param.string}" start="${param.startIndex}" end="${param.endIndex}"/>
    </body>
</html>

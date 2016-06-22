<%-- 
    Document   : CustomTag
    Created on : Jun 22, 2016, 9:59:29 AM
    Author     : mark-4304
--%>

<%@tag description="Sample Tag file" pageEncoding="UTF-8"%>
<%@attribute name="str" required="true" rtexprvalue="true"%>
<%@attribute name="start" required="true" rtexprvalue="true"%>
<%@attribute name="end" required="true" rtexprvalue="true"%>
<h2>This text from CustomTag.tag file </h2>

<%
    out.print(str.substring(Integer.parseInt(start), Integer.parseInt(end)));
%>
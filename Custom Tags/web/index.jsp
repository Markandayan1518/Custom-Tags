<%-- 
    Document   : index
    Created on : Jun 22, 2016, 9:38:24 AM
    Author     : mark-4304
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Custom Tags Page</title>
    </head>
    <body>
        <h1>Custom Tag Demo !</h1>
        <form action="tagDemo.jsp">
            <table border="0">
                <tr>
                    <td>Enter the String :</td>
                    <td> <input type="text" name="string" value="" /> </td>
                </tr>

                <tr>
                    <td>Start Index :</td>
                    <td> <input type="text" name="startIndex" value="" /> </td>
                </tr>
                <tr>
                    <td>Ending Index :</td>
                    <td> <input type="text" name="endIndex" value="" /> </td>
                </tr>
                </tbody>
            </table>
            <input type="submit" value="Submit" />
        </form>
        <h3>
            <a href="customTagBodyTagSupport.jsp" target="_blank">Example for Body Tag Support</a>
        </h3>
    </body>
</html>

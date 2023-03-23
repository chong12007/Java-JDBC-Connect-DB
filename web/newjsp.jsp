<%-- 
    Document   : newjsp
    Created on : Mar 23, 2023, 5:18:41 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factorial Table</title>
    </head>
    <body>
        <table>
            <tr>
                <td>Number</td> <td>Factorial</td>
            </tr><!-- comment -->
            <%! int result =1; %>
            <% for (int i = 0; i < 10; i++) {
            
                result = result * i;
            
            %>
  
            <tr>
                <td><%= i %></td><td><%= result %> </td><!-- comment -->
                
            </tr>
            
            <%}%>
    

            </tr>
        </table>
    </body>
</html>

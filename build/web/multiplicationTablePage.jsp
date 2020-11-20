<%-- 
    Document   : multiplicationTablePage
    Created on : Nov 20, 2020, 7:46:25 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>table Page</title>
            <style>
                
            table,tr,td{
                border: 1px solid black;
            }
            .coloredCells{
                background-color: deeppink;
                color: white;
            }
            .h{
                background-color: black;
                color: white;
            }
        </style>
    </head>
    <body>
        <h1>Hello World!</h1>
        
                <%
                    Integer numValue =Integer.parseInt(request.getParameter("numberValue"));
                %>
                
                 <form action = "index.jsp">
                 <table>
            <tr>
                <td class = "coloredCells">Multiply</td>
                
                <% for(int i = 1; i <= numValue; ++i){ %>
                <td class = "h"> <%= i %> </td>
                <% } %>
                
            </tr>
            <% for(int j = 1; j <= numValue; ++j){ %>
            <tr></tr>
                <td class = "h"> <%= j %> </td>
                
              <% for(int k = 1; k <= numValue; ++k){ %>
              <% if (j == k) { %>
              <td class="coloredCells"> <%= j * k %> </td>
              <% } else { %>
                <td> <%= j * k %> </td>
              <% }
               } 
            } %>
                 </table>
                 <input type="submit" value="back"/>
                 </form>
               
    </body>
</html>

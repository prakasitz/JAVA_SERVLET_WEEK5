<%-- 
    Document   : index
    Created on : Feb 23, 2019, 3:00:33 PM
    Author     : praka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
           int i = 10;
           if(i > 5) {
        %>
            <div style="color: green;">i is greater than 5</div>
        <%  } else { %>
            <div style="color: red;">i isn't greater than 5</div>
        <%  } %>
        <% //scriplet tag
           if(i > 5) {
        %>
            <div style="color: green;"><%= i + " is greater than 5" %></div>
        <%  } else { %>
            <div style="color: red;"><%=i +" isn't greater than 5"%></div>
        <%  } %>
        <br/>
        
        <%! // declarations tag
            String s = "data member";
            String getMessage(String str1, String str2) {
                return str1+" "+str2;
            }
        %>
        
        <%= getMessage("ok","นะคะ") %>
        <br>
        <%= getMessage(s,"Helllo") %>
        <hr>
        <div>
            Username: <%= request.getParameter("user") %>
        </div>
        <div>
            Password: <%= request.getParameter("pass") %>
        </div>
        
    </body>
</html>

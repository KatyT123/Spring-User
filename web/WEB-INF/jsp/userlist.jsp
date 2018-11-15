<%-- 
    Document   : userlist
    Created on : Nov 2, 2018, 7:18:05 PM
    Author     : KATY
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
        </script>
        <title>JSP Page</title>
        <style>
              body  {
            	background-image: url(./fond1.jpg);
                background-size: cover;
            }
         </style>
    </head>
     <body>
         <h2> This is the existing User List </h2>
         <% ArrayList<User> result = (ArrayList)request.getAttribute("result");%>
        <table class="table">
               <div class="container">
                   <thead>
                  <tr>
                  <th>Username</th>
                  <th>Surname</th>
                  
                  </tr>
               </thead>
        <% for (User u: result){%>
                <tbody>
                 <tr>
                   <td><%= u.getName()%></td>
                  <td><%= u.getSurname()%></td>
                </tr>
              <%}%>
               
                </tbody>
          </table>
     </body>
 
</html>

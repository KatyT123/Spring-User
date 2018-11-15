<%-- 
    Document   : home
    Created on : Nov 1, 2018, 7:44:46 PM
    Author     : KATY
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
        </script
        <script src=check.js></script>
        <title>User Register Form </title>
         <style>
              .center {
                margin: auto;
                width: 50%;
                padding: 20px;
              }
               body  {
            	background-image: url(./fond1.jpg);
                background-size: cover;
            }
               
        </style>
    </head>
    <body>
        <h1 class="center">Login Form</h1>
            <form:form modelAttribute="user" action="checklogin.htm" method="GET" class="center">
                
               <table>
                <tr>
                    <td><form:label path="name">Type user Name</form:label></td>
                    <td><form:input path="name" /></td>
                </tr>
                <tr>
                    <td><form:label path="password" id="password">Password</form:label></td>
                    <td><form:password path="password" /></td>
                </tr>
                <tr>
                    <td colspan="3">
                       <input type="submit" value="Submit" />
                    </td>
                </tr>
            </table>
        </form:form>
    </body>
</html>
<%-- 
    Document   : registerform
    Created on : Nov 5, 2018, 12:31:31 PM
    Author     : KATY
--%>


<%@page import="model.User"%>
<%@page import="org.springframework.ui.ModelMap"%>
<!DOCTYPE html>
<html>
    <%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
        </script>
         <link rel="stylesheet" href = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script>
                var allowsubmit = false;
		$(function(){
			$('#confirm_password').keyup(function(e){
				//get values 
				var pass = $('#password').val();
				var confpass = $(this).val();
				if(pass == confpass){
					//if both are same remove the error and allow to submit
					$('.error').text('');
					allowsubmit = true;
				}else{
					//if not matching show error and not allow to submit
					$('.error').text('Password not match!');
					allowsubmit = false;
				}
			});
			
			//jquery form submit
			$('#form').submit(function(){
			
				var pass = $('#password').val();
				var confpass = $('#confirm_password').val();
 
				//just to make sure once again during submit
				//if both are true then only allow submit
				if(pass == confpass){
			               allowsubmit = true;
				}
				if(allowsubmit){
					return true;
				}else{
					return false;
				}
			});
		});    
                    
        </script>
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
        
        <h1 class="center">User Register Form</h1>
            <form:form modelAttribute="user" id="form" action="registerhandling.htm" method="GET" class="center">
                
               <table>
                <tr>
                    <td><form:label path="name">Type Name</form:label></td>
                    <td><form:input path="name" /></td>
                </tr>
                <tr>
                    <td><form:label path="surname">Surname</form:label></td>
                    <td><form:input path="surname" /></td>
                </tr>
                <tr>
                    <td><form:label path="password"  >Password</form:label></td>
                    <td><form:password path="password" id="password"/></td>
                </tr>
                 
                <tr>
                    <td><form:label path="confirm_password"  >Confirm Password </form:label></td>
                    <td><form:password path="confirm_password" id="confirm_password" /><span class="error" style="color:red"></span> </td>
                     
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

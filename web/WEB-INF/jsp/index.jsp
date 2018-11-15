<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href = "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
        </script>
       
        
         <style>
             body  {
            	background-image: url(./fond1.jpg);
                background-size: cover;
             }
              .center {
                margin: auto;
                width: 50%;
                padding: 10px;
              }
              
         </style>
           
    </head>

    <body>
        <h1 class="center"> Spring Web MVC project</h1>
        <h2 class="center"> Register or Log In below</h2>
        <form action="loginform.htm" method="post" class="center">
             <input type="submit" value="Click here to LOG IN">
        </form> 
         <form action="registerform.htm" method="post" class="center">
             <input type="submit" value="Click here to REGISTER">
        </form>
    </body>
</html>

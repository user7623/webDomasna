<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title><b>Home</b></title>
    </head>
    <body>

        <%
            if (session != null) 
            {
                if (session.getAttribute("loggedUser") == null) 
                {
                    response.sendRedirect("login.jsp");
                }
            }
        %>

        <h2> Success! You are now logged in! </h2> <br>
        <form action="loginservlet" method="GET">
            <input type="submit" name="logout" value="Logout">
        </form>
    </body>
</html>
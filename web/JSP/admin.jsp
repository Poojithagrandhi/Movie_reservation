<%-- 
    Document   : admin
    Created on : 4 Oct, 2018, 10:37:44 PM
    Author     : pooji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN</title>
    </head>
    <body>
        <div>
            <center>
            <div id="first">
                    <br><br>
                    <form action="" method="post">
                        USERNAME:
                        <input type="text" name="uname"/><br><br>
                    PASSWORD:
                    <input type="password" name="pwd"/><br><br>
                    <input type="submit" value="LOGIN"/>
                    </form>
                </div>
            </center>
        </div>
    </body>
</html>
<style>
    body{
        background-image: url("../Images/3.jpg");
    }
    #first{
        border: 3px solid black;
        margin: auto;
        height: 200px;
        width: 500px;
        background: white;
    }
</style>
<%! String a,b; %>
<%
    if(request.getMethod().equalsIgnoreCase("post"))
    {
    a=request.getParameter("uname");
    b=request.getParameter("pwd");
    if(a.equals("admin"))
    {
        if(b.equals("admin"))
        {
            response.sendRedirect("admin1.jsp");
        }
        
    }
    }
%>
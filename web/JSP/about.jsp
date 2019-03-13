<%-- 
    Document   : about
    Created on : 4 Oct, 2018, 10:38:16 PM
    Author     : pooji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <title>ABOUT</title>
    </head>
    <body>
        <div id="head">
                <b>ABOUT US</b>
            </div>
        <div id="menu">
                <ol>
                    
                    <li style="margin-left:  300px;"><a href="../index.jsp">Home</a></li>
                    <li><a href="movie.jsp">Movies</a></li>
                    <li><a href="wallet.jsp">Wallet</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                    
                </ol>
            </div>
    <center>
        <div class="founder">
            <img src="../Images/23.jpg" style="height: 250px; widows: 250;"/>
            <h3>OWNER OF MOVIE TIME</h3><BR><BR>
        </div>
        <div class="founder">
            <img src="../Images/22.jpg" style="height: 250px; widows: 250;"/>
            <h3>OWNER OF THIS WEBSITE</h3><BR><BR>
            </center>
        </div>
    </body>
</html>
<style>
    body{
        background-image: url("../Images/17.png");
    }
    .founder{
        height: 300px;
        width: 300px;
        padding: 30px;
        float: left;
    }
    #head{
        font-family: fantasy;
        padding: 10px;
        width: 100%;
        height: 30px;
        background: #ff0099;
    }
    li{
        border-radius: 10px;
        border: 2px solid white;
        list-style: none;
        text-align: center;
        background: #6666ff;
        color: white;
        width: 150px;
        height: 30px;
        float: left;
    }
    li:hover{
        background-color: #ccccff;
        color: black;
    }
    li a{
        text-decoration: none;
       
    }
    a:link{
        color: white;
    }
    a:active{
        color: white;
    }
    a:visited{
        color: white;
    }
    a:hover{
        color: black;
    }
    #menu{
        width: 100%;
        height: 60px;
        padding: 5px;
        margin: auto;
    }
</style>
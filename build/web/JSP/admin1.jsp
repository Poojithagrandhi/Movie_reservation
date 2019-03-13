<%-- 
    Document   : admin1
    Created on : 6 Oct, 2018, 1:45:32 PM
    Author     : pooji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <title>ADMIN</title>
    </head>
    <body>
        <div class="outer">
            
                <div id="head">
                MOVIE TIME ADMIN PAGE
            </div>
            <div style="width: 100%;height: 40px;">
            <center>
                <ol>
                    
                    <li style="margin-left:  300px;"><a href="add1.jsp">Add movie</a></li>
                    <li><a href="wal.jsp">Wallet</a></li>
                    <li><a href="cust.jsp">Customer details</a></li>
                    <li><a href="mlist.jsp">Movies details</a></li>
                    
                </ol>
            </div>
            <div style="margin: auto;">
                <img src="../Images/30.jpg" style="width: 80%;height: 600px;"
            </div>
            </center>
        </div>
        
    </body>
</html>
<style>
    .outer{
        margin: auto;
        
    }
    body{
        background-image: url("../Images/21.jpg");
    }
    #head{
        padding: 10px;
        height: 20px;
        width: 100%;
        font-family: fantasy;
        background-color: #ff0066;
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
    li:hover{
        background-color: wheat;
        color: black;
    }
    li{
        border-radius: 10px;
        border: 2px solid white;
        list-style: none;
        text-align: center;
        background: #ff6633;
        color: white;
        width: 150px;
        height: 30px;
        float: left;
    }
</style>

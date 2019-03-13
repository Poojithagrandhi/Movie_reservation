<%-- 
    Document   : contact
    Created on : 4 Oct, 2018, 10:39:30 PM
    Author     : pooji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <title>CONTACT US</title>
    </head>
    <body>
        <div id="head">
                <b>CONTACT US</b>
            </div>
        <div id="menu">
                <ol>
                    
                    <li style="margin-left:  300px;"><a href="../index.jsp">Home</a></li>
                    <li><a href="movie.jsp">Movies</a></li>
                    <li><a href="wallet.jsp">Wallet</a></li>
                    <li><a href="about.jsp">About</a></li>
                    
                </ol>
            </div>
        <div id="mar">
            <marquee>*******CONTACT US FOR ALL YOUR PROBLEMS*******</marquee>
        </div><br><br>
        <div id="main">
            <div class="inner">
                <h2><b>what does this website offer???</b></h2><br>
                &nbsp;&nbsp;&nbsp;&nbsp;This website allows you to create your own wallet through which you can book your movie tickets.It allows you to book tickets of your choice.
            </div>
            <div class="inner"><br>
                <div id="on">
                <font size="5"> <b>Phone no.:</b></font>91-8796894752<br><br>
                <font size="5"><b>Email-id:</b></font>movietime.admin@gmail.com<br><br>
                </div>
                <center>  <div id="one">
                    <b>follow us on</b><br><br>
                    <img src="../Images/21_1.jpg" style="width: 80px;height: 80px;"
                    </div></center>
            </div>
        </div>
    </body>
</html>
<style>
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
    #on{
        width: 40%;
        float: left;
    }
    body{
        background-image: url("../Images/17.png");
    }
    #one{
        width: 50%;
        height: 100px;
        
        float: right;
    }
    .inner{
        width: 80%;
        margin:20px;
        height: 120px;
        padding: 20px;
        border: 2px solid lavender;
        background-image: linear-gradient(#cc66ff,#cc99ff);
        box-shadow: 5px 2px;
    }
    #main{
        width: 80%;
        height: 500px;
        
        margin: auto;
        
    }
    #head{
        font-family: fantasy;
        padding: 10px;
        width: 100%;
        height: 30px;
        background: #ff0099;
    }
    #mar{
        margin-top: 10px;
        background: #00ccff;
        height: 25px;
        width: 100%;
    }
</style>
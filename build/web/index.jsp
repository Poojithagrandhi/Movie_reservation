<%-- 
    Document   : index
    Created on : 4 Oct, 2018, 10:28:28 PM
    Author     : pooji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MOVIE_TIME</title>
        <link rel="icon" href="Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <div id="head">
                MOVIE TIME
            </div>
            <div id="banner">
                <img src="Images/26 (1).jpg" style="width: 30%;height: 120px; padding-left: 40px;"/>
                <img src="Images/27_1.jpg" style="width: 30%;height: 120px;"/>
                <img src="Images/26 (3).jpg" style="width: 30%;height: 120px;"/>
            </div>
            <div id="menu">
                <ol>
                    
                    <li style="margin-left:  300px;"><a href="JSP/movie.jsp">movies</a></li>
                    <li><a href="JSP/wallet.jsp">Wallet</a></li>
                    <li><a href="JSP/about.jsp">About</a></li>
                    <li><a href="JSP/contact.jsp">contact us</a></li>
                    
                </ol>
            </div>
            <div id="new">
                 <div class='inner'>
                    <div class="img">
                        <center>  <img src="Images/18.jpg" style="height: 150px; width: 100px;"/></center>
                    </div>    
                    <div class='desc'>
                        NAME: &nbsp; URI :the surgical strike<br><br>
                        DIRECTOR:&nbsp; Aditya Dhar<br><br>
                        STARRING BY:&nbsp; Yami Gautam<br><br>
                        <button>BOOK </button>
                    </div>
                </div>
                <div class='inner'>
                    <div class="img">
                        <center> <img src="Images/20.jpg" style="height: 150px;width: 100px;"/></center>
                    </div>    
                    <div class='desc'>
                        NAME: &nbsp; Nota<br><br>
                        DIRECTOR:&nbsp; Anand<br><br>
                        STARRING BY:&nbsp; Vijay Devarkonda<br><br>
                        <button>BOOK </button>
                    </div>
                </div>
                <div class='inner'>
                    <div class="img">
                        <center><img src="Images/19.jpg" style="height: 150px;width: 100px;"/></center>
                    </div>    
                    <div class='desc'>
                        NAME: &nbsp; Baazaa<br><br>
                        DIRECTOR:&nbsp; Sagar Sarhadi<br><br>
                        STARRING BY:&nbsp; Saif Ali Khan<br><br>
                        <button>BOOK </button>
                    </div>
                </div>
            </div>
            <div id="reg">
               
            </div>
        </div>
    </body>
</html>
<style>
    body{
        background-image: url("Images/16.png")
    }
    #head{
        padding: 10px;
        height: 20px;
        width: 100%;
        font-family: fantasy;
        background-color: #ff0066;
    }
    #show:hover ol{
        display: block;
    }
    .inner{
        border:2px solid grey;
        width: 98%;
        height: 160px;
        margin: 5px;
        padding: 10px;
        background-image: linear-gradient(coral,#ffcc00);
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
    #new{
        background: #cccccc;
        margin: auto;
        height: 600px;
        width: 60%;
        border: 2px solid lavender;
        margin-top: 10px;
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
    #banner img{
        margin-top: 15px;
        margin-bottom: 10px;
    }
    .img{
        float: left;
        
        width: 20%;
        height: 150px;
    }
    .desc{
        float: left;
        width: 60%;
        
        height:  100px;
        
    }
    #menu{
        width: 100%;
        height: 60px;
        padding: 5px;
        margin: auto;
    }
    #banner
    {
        margin: auto;
        width: 80%;
        border: 2px solid lavender;
        height: 150px;
        background: wheat;
        margin-top: 5px;
    }
    button{
        background-image: linear-gradient(#00ccff,#99ffff);
        width: 60px;
        height: 20px;
    }
</style>

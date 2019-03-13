<%-- 
    Document   : movie
    Created on : 4 Oct, 2018, 10:37:59 PM
    Author     : pooji
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MOVIE DETAILS</title>
    </head>
    <body>
        <div id="head">
                <b>MOVIE BOOKING</b>
            </div>
        <div id="menu">
                <ol>
                    
                    <li style="margin-left:  300px;"><a href="../index.jsp">Home</a></li>
                    <li><a href="wallet.jsp">Wallet</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">contact us</a></li>
                    
                </ol>
            </div>
        <div id="main">
            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "");
                PreparedStatement ps=con.prepareStatement("select * from movies");
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
                    %>
                    <div id='outer'>
                    <div id='inner'>
                        <font size='4'>
                        
                        NAME:&nbsp;&nbsp;<%= rs.getString("name") %><br>
                            DIRECTOR:&nbsp;&nbsp;<%= rs.getString("director") %><br>
                            STARRING BY:&nbsp;&nbsp;<%= rs.getString("hero") %><br>
                            RATING:&nbsp;&nbsp;<%= rs.getString("rating") %><br>
                            LANGUAGE:&nbsp;&nbsp;<%= rs.getString("lang") %><br>
                            <button><a href='book.jsp?movn=<%= rs.getString("name") %>'>BOOK NOW</a></button>
                        
                            </font>
                    </div>
                             <div id='inner1'>
                        <font size='4' color='darkpink'>
                        <center><u> <b>PLOT</b></u></center>
                        </font><br>
                        &nbsp;&nbsp;&nbsp;&nbsp;<%= rs.getString("plot") %>
                            
                    </div>
                    </div>
                    <%
                }
                %>
        </div>
    </body>
</html>
<style>
    li a{
        text-decoration: none;
       
    }
    li:hover{
        background-color: #ccccff;
        color: black;
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
    #menu{
        width: 100%;
        height: 60px;
        padding: 5px;
        margin: auto;
    }
    a{
        color: black;
        text-decoration: none;
        font-weight: bolder;
        font-family: cursive;
    }
    button{
        background-image: linear-gradient(#ff9933,#ffcc66);
        border: 0px;
        box-shadow: 2px 2px grey;
        height: 25px;
        padding: 5px 5px 5px 5px;
        border-radius: 6px;
        
    }
    #outer{
        width: 100%;
        background-image: linear-gradient(#cccccc,#ffffff);
        height: 200px;
    }
    body{
        background-image: url("../Images/17.png");
    }
    #inner{
        margin: 10px;
        margin-right: 5px;
        padding-left: 50px;
        padding-top: 10px;
        text-align: left;
        width: 30%;
        float: left;
        height: 150px;
        border: 2px solid #000000;
        background-image: linear-gradient(#cc66ff,#ffccff);
    }
    #inner1{
        margin: 10px;
        margin-left: 0px;
        float: left;
        padding-top: 10px;
        text-align: center;
        width: 60%;
        height: 150px;
        border: 2px solid #000000;
        background-image: linear-gradient(#cc66ff,#ffccff);
    }
    #main{
        width: 90%;
        margin: auto;
        height: auto;
    }
    #head{
        font-family: fantasy;
        padding: 10px;
        width: 100%;
        height: 30px;
        background: #ff0099;
    }
</style>
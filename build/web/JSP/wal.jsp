<%-- 
    Document   : wal
    Created on : 13 Oct, 2018, 1:17:48 PM
    Author     : pooji
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN WALLET</title>
    </head>
    <body>
        <div class="outer" style="width: 100%;height: 700px;">
            
                <div id="head">
                MOVIE TIME ADMIN PAGE
            </div>
            <center>
                <div style="width: 100%;height: 40px;">
                <ol>
                    
                    <li style="margin-left:  400px;"><a href="admin1.jsp">Home</a></li>
                    <li><a href="add1.jsp">Add movie</a></li>
                    <li><a href="cust.jsp">Customer details</a></li>
                    <li><a href="mlist.jsp">Movies details</a></li>
                    
                </ol>
                </div>
            </center>
       
    </body>
</html>
<%
  Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "");
           PreparedStatement ps=con.prepareStatement("select * from bal");
           ResultSet rs=ps.executeQuery();
           while(rs.next())
           {
%>
<center>
    <div style="width: 100%;">
        <h1>
            The total amount in the account is
        <%= rs.getString("bal") %>
        </h1>
    </div>
        <img src='../Images/24.jpg' style="width: 300px; height: 400px;"
</center>
         </div>
<%
           }
%>
<style>
    .outer{
        margin: auto;
        
    }
    body{
        background-image: linear-gradient(#999999,#ffffff);
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
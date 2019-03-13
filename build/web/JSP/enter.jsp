<%-- 
    Document   : enter
    Created on : 6 Oct, 2018, 8:54:39 PM
    Author     : pooji
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <title>ADMIN INSERT</title>
    </head>
    <body>
        <div id="head">
                <b>MODIFICATION STATUS</b>
            </div>
         <div style="width:100%;height: 40px;">      <ol>
                    
                    <li style="margin-left:  400px;"><a href="add1.jsp">Add movie</a></li>
                    <li><a href="wal.jsp">Wallet</a></li>
                    <li><a href="cust.jsp">Customer details</a></li>
                    <li><a href="mlist.jsp">Movies details</a></li>
                    
                </ol>
            </div>
    </body>
</html>
<%
    Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "");
           String name=request.getParameter("name");
           String dir=request.getParameter("dir");
           String hero=request.getParameter("hero");
           String rate=request.getParameter("rate");
           String lang=request.getParameter("lang");
           String plot=request.getParameter("plot");
            PreparedStatement ps=con.prepareStatement("insert into movies(name,director,hero,rating,lang,plot) values(?,?,?,?,?,?)");
            ps.setString(1,name);
            ps.setString(2, dir);
            ps.setString(3, hero);
            ps.setString(4, rate);
            ps.setString(5, lang);
            ps.setString(6, plot);
            int z=ps.executeUpdate();
            PreparedStatement ps1=con.prepareStatement("insert into seat(name) values(?)");
            ps1.setString(1, name);
            ps1.executeUpdate();
            if(z>0)
            {
               %>
               <div id="main">
            
                   <center>
                       <h1>SUCCESFULLY ADDED DETAILS</h1>
                       <img src="../Images/13.jpg" style="height: 500px;"/>
                   </center>
               </div>
               
               
               
               
               
               <%
            }
           
%>
<style>
    li a{
        text-decoration: none;
       
    }
    body{
        background-image: linear-gradient(#999999,#ffffff);
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
    
     #head{
        font-family: fantasy;
        padding: 10px;
        width: 100%;
        height: 30px;
        background: #ff0099;
    }
</style>
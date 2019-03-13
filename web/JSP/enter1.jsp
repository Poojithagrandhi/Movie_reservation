<%-- 
    Document   : enter1
    Created on : 6 Oct, 2018, 9:17:21 PM
    Author     : pooji
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETE</title>
    </head>
    <body>
        <div id="head">
                <b>MODIFICATION STATUS</b>
            </div>
        <center>
            <ol style="width: 100%;height: 40px;">
                    
                    <li style="margin-left:  400px;"><a href="add1.jsp">Add movie</a></li>
                    <li><a href="wal.jsp">Wallet</a></li>
                    <li><a href="cust.jsp">Customer details</a></li>
                    <li><a href="mlist.jsp">Movies details</a></li>
                    
                </ol>
            </center>
    </body>
</html>
<%
    Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "");
           String name=request.getParameter("msg");
           
            PreparedStatement ps=con.prepareStatement("delete from movies where name=?");
            ps.setString(1,name);
            int z=ps.executeUpdate();
            if(z>0)
            {
               %>
               <div id="main">
            
                   <center>
                       <h1>SUCCESFULLY DELETED DETAILS</h1>
                       <img src="../Images/14.jpg" style="height: 500px;"/>
                   </center>
               </div>
               
               
               
               
               
               <%
            }
           
%>
<style>
    body{
        background-image: linear-gradient(#999999,#ffffff);
    }
     #head{
        font-family: fantasy;
        padding: 10px;
        width: 100%;
        height: 30px;
        background: #ff0099;
    }
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
    
</style>
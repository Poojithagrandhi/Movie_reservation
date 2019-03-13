<%-- 
    Document   : mlist
    Created on : 13 Oct, 2018, 10:04:13 AM
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
        <title> MOVIE DETAILS</title>
    </head>
    <body>
       <div id="head">
                MOVIE LIST
            </div>
        
    </body>
</html>
<%
    Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "");
           PreparedStatement ps=con.prepareStatement("select * from movies");
           ResultSet rs=ps.executeQuery();
           %>
           <center>
               <div style="width: 100% ;height: 40px;">
               <ol>
                    
                   <li style="margin-left:  400px;"><a href="admin1.jsp">Home</a></li>
                    <li><a href="add1.jsp">Add movie</a></li>
                    <li><a href="wal.jsp">Wallet</a></li>
                    <li><a href="cust.jsp">Customer details</a></li>
                    
               </ol>
               </div><br><br>
           <table style="border: 2px solid #000000;">
               <tr>
                   <th style="padding: 5px;border:1px solid #000000;">NAME</th>
                   <th style="padding: 5px;border:1px solid #000000;">DIRECTOR</th>
                   <th style="padding: 5px;border:1px solid #000000;">HERO</th>
                   <th style="padding: 5px;border:1px solid #000000;">RATING</th>
                   <th style="padding: 5px;border:1px solid #000000;">LANGUAGE</th>
                   <th style="padding: 5px;border:1px solid #000000;">DELETE</th>
                   <th style="padding: 5px;border:1px solid #000000;">MODIFY</th>
               </tr>
           <%
           while(rs.next())
           {
               %>
               <tr>
               <% 
               for(int i=2;i<=6;i++)
               {
                   
               %>
                
               <td style="padding: 5px;border:1px solid #000000;">
                   <%= rs.getString(i) %>
               </td>
               
               
               
               
               <%
               }
               %>
               <td style="padding: 5px;border:1px solid #000000;">
                   <button><a href="enter1.jsp?msg=<%= rs.getString("name") %>">delete</a></button>
               </td>
               <td style="padding: 5px;border:1px solid #000000;">
                   <button><a href='enter2.jsp?msg=<%= rs.getString("name") %>'>modify</a></button>
               </td>
               </tr>
               <%
           }
           
%>
           </table>
           </center>
           <style>
                body{
        background-image: url("../Images/16.png");
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
    button{
        background-image: linear-gradient(#cc33ff,#ffccff);
        border-radius: 5px;
        box-shadow: 2px 2px gray;
        color: #ff33cc;
        
    }
    a{
        color: #ff33cc;
        text-decoration: none;
    }
    a:visited{
        color: #ff33cc;
    }
    a:active{
        color: #ff33cc;;
    }
    a:link{
        color: #ff33cc;;
    }
    table{
        background-color: white;
    }
    table th{
        background-color: #ff9999;
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
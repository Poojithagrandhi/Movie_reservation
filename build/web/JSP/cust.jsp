<%-- 
    Document   : cust
    Created on : 6 Oct, 2018, 9:53:18 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <title>CUSTOMER DETAILS</title>
    </head>
    <body>
        <div id="head">
                CUSTOMER LIST
            </div>
    </body>
</html>
<%
    Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "");
           PreparedStatement ps=con.prepareStatement("select * from cust");
           ResultSet rs=ps.executeQuery();
           %>
           <center>
               <div style="width: 100% ;height: 40px;">
               <ol>
                    
                   <li style="margin-left:  400px;"><a href="admin1.jsp">Home</a></li>
                    <li><a href="add1.jsp">Add movie</a></li>
                    <li><a href="wal.jsp">Wallet</a></li>
                    <li><a href="mlist.jsp">Movies details</a></li>
                    
               </ol>
               </div><br><br>
           <table style="border: 2px solid #000000;">
               <tr>
                   <th style="padding: 5px;border:1px solid #000000;">NAME</th>
                   <th style="padding: 5px;border:1px solid #000000;">PHONE</th>
                   <th style="padding: 5px;border:1px solid #000000;">USERNAME</th>
                   <th style="padding: 5px;border:1px solid #000000;">PASSWORD</th>
                   <th style="padding: 5px;border:1px solid #000000;">PASSWORD1</th>
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
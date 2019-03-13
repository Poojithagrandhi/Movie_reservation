<%-- 
    Document   : bal
    Created on : 7 Oct, 2018, 6:30:05 PM
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
        <title>BALANCE</title>
    </head>
    <body>
        <div id="head">
                <b>BALANCE PAGE</b>
            </div>
        <div id="menu">
                <ol>
                    
                    <li style="margin-left:  300px;"><a href="movie.jsp">movies</a></li>
                    <li><a href="wallet.jsp">Wallet</a></li>
                    <li><a href="mywallet.jsp">My Wallet</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">contact us</a></li>
                    
                </ol>
            </div>
    </body>
</html>
<%! String a,b,d; %>
                <%
                    if(request.getMethod().equalsIgnoreCase("post"))
                    {
                        a=request.getParameter("uname1");
                        b=request.getParameter("pwd1");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "");
                        PreparedStatement ps=con.prepareStatement(" select * from cust ");
                        ResultSet rs=ps.executeQuery();
                        while(rs.next())
                        {
                            d=rs.getString("username");
                            if(a.equals(d))
                            {
                                d=rs.getString("password");
                                if(b.equals(d))
                                {
                                    
                                    %>
                                    <center>
                                    <div><br><br>
                                        <h1><%=
                                                rs.getString("balance")
                                                
                                        %> is the remaining balance in your account</h1>
                                    </div>
                                    <img src="../Images/24.jpg" style="height: 400px;width: 300px;"/>
                                    </center>
                                    <%
                                    
                                }
                            }
                        }
                    }
                    
                    %>
                    
 <style>
     body{
         background-image: linear-gradient(#999999, #cccccc );
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
    #menu{
        width: 100%;
        height: 60px;
        padding: 5px;
        margin: auto;
    }
  #head{
        font-family: fantasy;
        padding: 10px;
        width: 100%;
        height: 30px;
        background: #ff0099;
    }
   </style>
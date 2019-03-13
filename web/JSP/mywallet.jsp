<%-- 
    Document   : mywallet
    Created on : 6 Oct, 2018, 1:26:29 PM
    Author     : pooji
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="../Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MY_WALLET</title>
    </head>
    <body>
        <div>
            <div id='head'>
                <b>MY WALLET</b>
            </div><br><br>
            <div id="menu">
                <ol>
                    
                    <li style="margin-left:  300px;"><a href="movie.jsp">movies</a></li>
                    <li><a href="wallet.jsp">Wallet</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">contact us</a></li>
                    
                </ol>
            </div>
            <div id="first">
                <div class="inner">
                <center>
                    <h3>WANT TO ADD MONEY<br> *****ADD HERE*****</h3><br>
                    <form action="" method="post">
                    <table>
                        <tr>
                            <th>
                                USERNAME:
                            </th>
                            <td>
                                <input type="text" name="uname"/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                PASSWORD:
                            </th>
                            <td>
                                <input type="password" name="pwd"/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                AMOUNT TO <br>BE ADDED:
                            </th>
                            <td>
                                <input type="number" name="amt"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                        <input type="submit" value="ADD"/>
                            </td>
                        </tr>
                    </table>
                    </form>
                
                <%! String a,b,c,d; 
                int e; %>
                <%
                    if(request.getMethod().equalsIgnoreCase("post"))
                    {
                        a=request.getParameter("uname");
                        b=request.getParameter("pwd");
                        c=request.getParameter("amt");
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "");
                        PreparedStatement ps=con.prepareStatement(" select username,password,balance from cust ");
                        ResultSet rs=ps.executeQuery();
                        while(rs.next())
                        {
                            d=rs.getString("username");
                            if(a.equals(d))
                            {
                                d=rs.getString("password");
                                if(b.equals(d))
                                {
                                    e=Integer.parseInt(rs.getString("balance"));
                                    e+=Integer.parseInt(c);
                                    PreparedStatement q=con.prepareStatement("update cust set balance=? where username=?");
                                    q.setString(1, Integer.toString(e));
                                    q.setString(2, a);
                                    q.executeUpdate();
                                    %>
                                    <div><br><br>
                                        <h4>SUCCESSFULLY ADDED MONEY!!!!!!!!!</h4>
                                    </div>
                                    <%
                                    
                                }
                            }
                        }
                    }
                    
                    %>
            </center>
            </div>     
            </div>
            <div id="second">
                <div class="inner">
                    <center>
                    <h3>WANT TO CHECK BALANCE<br> *****CHECK HERE*****</h3><br>
                    <form action="bal.jsp" method="post">
                    <table>
                        <tr>
                            <th>
                                USERNAME:
                            </th>
                            <td>
                                <input type="text" name="uname1"/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                PASSWORD:
                            </th>
                            <td>
                                <input type="password" name="pwd1"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                        <input type="submit" value="CHECK"/>
                            </td>
                        </tr>
                    </table>
                    </form>
                    
                </div>
            </div>
        </div>
        
    </body>
</html>
<style>
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
    body{
        background-image: url("../Images/21.jpg");
    }
    #second{
        width: 40%;
        height: 400px;
        border: 2px solid #cc00cc;
        background: #cc00cc;
        float: right;
    }
    .inner{
        background: cornsilk;
        width: 70%;
        padding: 5px;
        margin-left: 70px;
        margin-top: 30px;
        height: 300px;
    }
    #head{
        height: 30px;
        padding: 10px;
        width: 100%;
        background: #ff0066;
    }
    #first{
        float: left;
        background: #cc00cc;
        margin-left: 70px;
        height: 400px;
        width: 40%;
        border: 2px solid #cc66ff;
        padding: 10px;
    }
</style>
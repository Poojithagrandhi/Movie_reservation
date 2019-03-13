<%-- 
    Document   : wallet
    Created on : 4 Oct, 2018, 10:38:52 PM
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
        <title>WALLET</title>
    </head>
    <body>
        <div>
            <div id='head'>
                <b> WALLET</b>
            </div>
            <div id="menu">
                <ol>
                    
                    <li style="margin-left:  300px;"><a href="../index.jsp">Home</a></li>
                    <li><a href="movie.jsp">Movies</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">contact us</a></li>
                    
                </ol>
            </div>
            <div>
                <div id="main">
                <div id="first">
                    
                    <center>    <h3>CHECK YOUR BALANCE HERE</h3> <form action="" method="post">
                        USERNAME:
                        <input type="text" name="uname"/><br><br>
                    PASSWORD:
                    <input type="password" name="pwd"/><br><br>
                    <input type="submit" value="CHECK"/><br><br>
                    <div id="a"></div>
                        </form></center>
                </div>
                    <div>
                        <center> <img src="../Images/11.jpg " style="width: 300px;height: 200px;margin-top: 50px;"/></center>
                    </div>
                </div>
                <div id="main1">
                <div id="second"><br><br>
                    <center>
                        <b><h3> CREATE A NEW ACCOUNT</h3></b><br><br>
                    <table>
                        <form action="add.jsp" method="post" >
                        <tr>
                            <th>
                                NAME:
                            </th>
                            <td>
                                <input type="text" name="name" required="true"/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                PHONE:
                            </th>
                            <td>
                                <input type="number" name="ph" required="true"/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                USERNAME:
                            </th>
                            <td>
                                <input type="text" name="uname" required="true"/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                SET PASSWORD:
                            </th>
                            <td>
                                <input type="password" name="pwd" required="true"/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                RE-ENTER<br> PASSWORD:
                            </th>
                            <td>
                                <input type="password" name="pwd1" required="true"/>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                BALANCE:
                            </th>
                            <td>
                                <input type="number" name="bal" required="true"/>
                            </td>
                        </tr>
                        <tr>
                            
                            <td>
                                <input type="submit" value="CREATE"/>
                            </td>
                        </tr>
                        </form>
                    </table>
                    </center>
                </div>
            </div>
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
    #main1{
        width: 50%;
        padding: 20px;
        height: 500px;
        border: 2px solid black;
        float: right;
        background-image: linear-gradient(#999999,#ffffff);
    }
    #head{
        background-color: #ff0099;
        width: 100%;
        height: 30px;
        font-family: fantasy;
        padding: 10px;
    }
    body{
        background-image: url("../Images/17.png");
    }
    #main{
        padding-top: 20px;
        width: 40%;
        height: 500px;
        border: 2px solid black;
        float: left;
        background-image: linear-gradient(#999999,#ffffff);
    }
    #first{
        margin-left: 70px;
        height: 160px;
        width: 80%;
        background: #cc99ff;
        padding: 10px;
        float: left;
        border: 2px dashed activecaption;
    }
    #second{
        margin-right: 50px;
        height: 400px;
        background: #cc99ff;
        width: 80%;
        float: right;
        border: 2px solid lavender;
    }
    table tr th{
        text-align: left;
    }
</style>
<%
    if(request.getMethod().equalsIgnoreCase("post"))
    {
        String a=request.getParameter("uname");
        String b=request.getParameter("pwd");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "");
        PreparedStatement ps=con.prepareStatement("select username,password from cust ");
        ResultSet rs=ps.executeQuery();
        int flag=0;
        while(rs.next())
        {
            String s=rs.getString("username");
            if(a.equals(s))
            {
                s=rs.getString("password");
                if(b.equals(s))
                {
                    response.sendRedirect("mywallet.jsp");
                    flag=1;
                }
            }
        }
        if(flag==0)
        {
            %>
            <script>
                var x="Enter valid details";
                document.getElementById("a").value=x;
            </script>
            <%
        }
    
    }
    %>
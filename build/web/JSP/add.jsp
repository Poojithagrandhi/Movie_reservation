<%-- 
    Document   : add
    Created on : 6 Oct, 2018, 1:27:02 PM
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
        <title>INSERT</title>
    </head>
    <body>
        <div>
        <div id="head">
            <h3><b> CUSTOMER DETAILS INSERTION PAGE</b></h3>
        </div>
            <div id="menu">
                <ol>
                    
                    <li style="margin-left:  300px;"><a href="movie.jsp">movies</a></li>
                    <li><a href="wallet.jsp">Wallet</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">contact us</a></li>
                    
                </ol>
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
      body{
         background-image: linear-gradient(#999999, #cccccc );
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
        height: 30px;
        padding: 10px;
        width: 100%;
        background: #ff0066;
    }
</style>
<%
 Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "");
           String name=request.getParameter("name");
           String ph=request.getParameter("ph");
           String uname=request.getParameter("uname");
           String pwd=request.getParameter("pwd");
           String pwd1=request.getParameter("pwd1");
            String bal=request.getParameter("bal");
           if(pwd.equals(pwd1))
           {
            PreparedStatement ps=con.prepareStatement("insert into cust(name,phone,username,password,password1,balance) values(?,?,?,?,?,?)");
            ps.setString(1,name);
            ps.setString(2, ph);
            ps.setString(3, uname);
            ps.setString(4, pwd);
            ps.setString(5, pwd1);
            ps.setString(6,bal);
            int z=ps.executeUpdate();
            if(z>0)
            {
               %>
               
               <center>
               <div>
                   <h4> SUCCESSFULLY REGISTERED !!!!!!!!!!!!!!!!!!!!!!<br>HOPE YOU HAVE A GREAT TIME WITH US </h4>
                   <img src="../Images/23.jpg" style="height: 500px;width: 500px;"/>
               </div>
               </center>
               
               
               <%
            }
            
}
           else
{
            %>
            <center>
               <div>
                   <h4> HAD A PROBLEM IN CREATING YOUR ACCOUNT<br> PLEASE ENTER SAME PASSWORD AGAIN :(</h4>
                   <img src="../Images/25.jpg" style="height: 500px;width: 500px;"/>
               </div>
               </center>
            <%
}
%>
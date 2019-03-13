<%-- 
    Document   : book
    Created on : 8 Oct, 2018, 12:55:43 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <title>BOOK</title>
    </head>
 
    <body>
        <div id='head'>
                <b> BOOK YOUR TICKETS HERE</b>
        </div>
        <div id="menu">
                <ol>
                    
                    <li style="margin-left:  300px;"><a href="../index.jsp">Home</a></li>
                    <li><a href="movie.jsp">Movies</a></li>
                    <li><a href="wallet.jsp">Wallet</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="contact.jsp">contact us</a></li>
                    
                </ol>
            </div>
        <div id='main'>
            <div id='inner'>
                <center>
                    <h1>BOOK HERE</h1>
                <form action="" method="post">
                    <table>
                        <tr>
                            <th>
                                MOVIE NAME:
                            </th>
                            <td>
                                <div id="mn" style="width: 120px;height: 20px;background-color: white;border: 1px solid lightgray;">
                                    <%= request.getParameter("movn") %>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                PRICE:
                            </th>
                            <td>
                                <input type="number" id="price" value="120" readonly="true"/>
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
                                PASSWORD:
                            </th>
                            <td>
                                <input type="password" name="pwd" required="true"/>
                            </td>
               
                        <tr>
                            <th>
                                SHOW TIME:
                            </th>
                            <td>
                                <select name="stime">
                                    <option>...</option>
                                    <option value="morning">morning</option>
                                    <option value="matnee">matnee</option>
                                    <option value="first">first</option>
                                    <option value="second">second</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" value='book'/>
                            </td>
                           
                        </tr>
                    </table>
                </form>
                </center>
            </div>
 
<%
      
    
          if(request.getMethod().equalsIgnoreCase("post"))
          {
              int g=0;
              int e=0;
              String s="";
            
           
              String a=request.getParameter("uname");
              String b=request.getParameter("movn");
              String c=request.getParameter("pwd");
              String d=request.getParameter("stime");
               Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "");
           PreparedStatement z=con.prepareStatement("select password from cust where username=? ");
           z.setString(1, a);
           ResultSet x=z.executeQuery();
           while(x.next())
           {
               String l=x.getString("password");
               if(l.equals(c))
               {
                   PreparedStatement ps=con.prepareStatement(" insert into cust1(name,mname,time) values(?,?,?)");
                    ps.setString(1, a);
                    ps.setString(2, b);
                    ps.setString(3, d);
                    int zz=ps.executeUpdate();
                    if(zz>0)
                    {
                        PreparedStatement ps1=con.prepareStatement(" select balance from cust where username=?");
                        ps1.setString(1, a);
                        ResultSet rs=ps1.executeQuery();
                        while(rs.next())
                        {
                            
                                    e=Integer.parseInt(rs.getString("balance"));
                                    e-=Integer.parseInt("120");
                                    PreparedStatement q=con.prepareStatement("update cust set balance=? where username=?");
                                    q.setString(1, Integer.toString(e));
                                    q.setString(2, a);
                                    q.executeUpdate();
                        }
                        PreparedStatement p2=con.prepareStatement("select * from bal");
                        ResultSet r2 =p2.executeQuery();
                        while(r2.next())
                        {
                            e=Integer.parseInt(r2.getString("bal"));
                            e+=Integer.parseInt("120");
                            PreparedStatement ps2=con.prepareStatement("update bal set bal=? where id=1");
                            ps2.setString(1, Integer.toString(e));
                            ps2.executeUpdate();
                        }
                      
                        if(d.equalsIgnoreCase("morning"))
                        {
                            PreparedStatement p3=con.prepareStatement("select * from seat where name=?");
                            p3.setString(1,b);
                            ResultSet r3=p3.executeQuery();
                            while(r3.next())
                            {
                                e=Integer.parseInt(r3.getString("s1"));
                                e+=1;
                                PreparedStatement ps3=con.prepareStatement("update seat set s1=? where name=?");
                                ps3.setString(1,Integer.toString(e));
                                ps3.setString(2, b);
                                ps3.executeUpdate();
                                if(e<=60)
                                {
                                %>
                                <div style="width: 100%;">
                                    <center>  <h2>  Your seat number is <%= (Integer.parseInt(r3.getString("s1"))+1) %></h2></center>
                                </div>
                                <div id="pic">
                            <h2>Success your ticket is booked</h2>
                            <center> <img src="../Images/28.jpg" style="width: 300px;height: 300px;"/></center>
                       </div>
                                <%
                            }
                                else
                                {
                                    %>
                                    <div id="pic">
                                        <h2>Sorry no tickets available</h2>
                            <center> <img src="../Images/31.jpg" style="width: 300px;height: 300px;"/></center>
                       </div>
                                    <%
                                }
                            }
                        }
                        else if(d.equalsIgnoreCase("matnee"))
                        {
                            PreparedStatement p4=con.prepareStatement("select * from seat where name=?");
                            p4.setString(1,b);
                            ResultSet r4=p4.executeQuery();
                            while(r4.next())
                            {
                                e=Integer.parseInt(r4.getString("s2"));
                                e+=1;
                                PreparedStatement ps4=con.prepareStatement("update seat set s2=? where name=?");
                                ps4.setString(1,Integer.toString(e));
                                ps4.setString(2, b);
                                ps4.executeUpdate();
                                if(e<=60)
                                {
                                %>
                                <div style="width: 100%;">
                                    <center>  <h2>  Your seat number is <%= (Integer.parseInt(r4.getString("s2"))+1) %></h2></center>
                                </div>
                                <div id="pic">
                            <h2>Success your ticket is booked</h2>
                            <center> <img src="../Images/28.jpg" style="width: 300px;height: 300px;"/></center>
                       </div>
                                <%
                            }
                                else
                                {
                                    %>
                                    <div id="pic">
                                        <h2>Sorry no tickets available</h2>
                            <center> <img src="../Images/31.jpg" style="width: 300px;height: 300px;"/></center>
                       </div>
                                    <%
                                }
                            }
                        }
                        else if(d.equalsIgnoreCase("first"))
                        {
                            PreparedStatement p5=con.prepareStatement("select * from seat where name=?");
                            p5.setString(1,b);
                            ResultSet r5=p5.executeQuery();
                            while(r5.next())
                            {
                                e=Integer.parseInt(r5.getString("s3"));
                                e+=1;
                                PreparedStatement ps5=con.prepareStatement("update seat set s3=? where name=?");
                                ps5.setString(1,Integer.toString(e));
                                ps5.setString(2, b);
                                ps5.executeUpdate();
                                if(e<=60)
                                {
                                %>
                                <div style="width: 100%;">
                                    <center>  <h2>  Your seat number is <%= (Integer.parseInt(r5.getString("s3"))+1) %></h2></center>
                                </div>
                                <div id="pic">
                            <h2>Success your ticket is booked</h2>
                            <center> <img src="../Images/28.jpg" style="width: 300px;height: 300px;"/></center>
                       </div>
                                <%
                            }
                                else
                                {
                                    %>
                                    <div id="pic">
                                        <h2>Sorry no tickets available</h2>
                            <center> <img src="../Images/31.jpg" style="width: 300px;height: 300px;"/></center>
                       </div>
                                    <%
                                }
                            }
                        }
                        else if(d.equalsIgnoreCase("second"))
                        {
                            PreparedStatement p6=con.prepareStatement("select * from seat where name=?");
                            p6.setString(1,b);
                            ResultSet r6=p6.executeQuery();
                            while(r6.next())
                            {
                                e=Integer.parseInt(r6.getString("s4"));
                                e+=1;
                                PreparedStatement ps6=con.prepareStatement("update seat set s4=? where name=?");
                                ps6.setString(1,Integer.toString(e));
                                ps6.setString(2, b);
                                ps6.executeUpdate();
                                if(e<=60)
                                {
                                %>
                                <div style="width: 100%;">
                                    <center>  <h2>  Your seat number is <%= (Integer.parseInt(r6.getString("s4"))+1) %></h2></center>
                                </div>
                                <div id="pic">
                            <h2>Success your ticket is booked</h2>
                            <center> <img src="../Images/28.jpg" style="width: 300px;height: 300px;"/></center>
                       </div>
                                <%
                            }
                                else
                                {
                                    %>
                                    <div id="pic">
                                        <h2>Sorry no tickets available</h2>
                            <center> <img src="../Images/31.jpg" style="width: 300px;height: 300px;"/></center>
                       </div>
                                    <%
                                }
                        }
                        }
                        } 
                    
              }
           }
          }
 %>                      
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
    #pic{
        margin: auto;
        width: 60%;
        height: auto;
    }
    #head{
        height: 30px;
        padding: 10px;
        width: 100%;
        background: #ff0066;
    }
    #inner{
        margin: auto;
        height: 40%;
        width: 40%;
        padding-left:  7%;
        padding-top: 10px;
        background: #cccccc;
        border: 2px double #00ccff;
    }
    body{
        background-image: url(../Images/21.jpg);
    }
    #main{
        padding: 20px;
        width: 80%;
        height: 700px;
        margin: auto;
        background-image: linear-gradient(#ff99ff,#ffcccc);
        border: 2px solid #cc99ff;
    }
</style>
<script>
    document.getElementById("price").value=120;
   
    document.getElementById("mn").innerHTML= <%= request.getParameter("movn") %>;
</script>
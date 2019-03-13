<%-- 
    Document   : add1
    Created on : 6 Oct, 2018, 6:45:36 PM
    Author     : pooji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="../Images/26 (2).jpg" type="image/gif" sizes="16x16"/>
        <title>ADMIN ADD</title>
    </head>
    <body>
        <div id="main">
            <div id="head">
                <b>MODIFICATION PAGE</b>
            </div>
            <center>
               <div style="width: 100% ;height: 40px;">
               <ol>
                    
                   <li style="margin-left:  400px;"><a href="admin1.jsp">Home</a></li>
                    <li><a href="add1.jsp">Add movie</a></li>
                    <li><a href="wal.jsp">Wallet</a></li>
                    <li><a href="mlist.jsp">Movies details</a></li>
                    
               </ol>
               </div><br><br>
          
            <div class="inner">
            <div id="add">
                <center>
                    <h4> <b>ADD A NEW MOVIE DETAIL!!!!!!</b></h4>
                    <form action="enter.jsp" method="post">
                <table>
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
                        DIRECTOR:
                    </th>
                    <td>
                        <input type="text" name="dir" required="true"/>
                    </td>
                    </tr>
                    <tr>
                    <th>
                        HERO:
                    </th>
                    <td>
                        <input type="text" name="hero" required="true"/>
                    </td>
                    </tr>
                    <tr>
                    <th>
                        RATING:
                    </th>
                    <td>
                        <input type="text" name="rate" required="true"/>
                    </td>
                    </tr>
                    <tr>
                    <th>
                        LANGUAGE:
                    </th>
                    <td>
                        <input type="text" name="lang" required="true"/>
                    </td>
                    </tr>
                    <tr>
                    <th>
                        PLOT:
                    </th>
                    <td>
                        <textarea name='plot' required="true"></textarea>
                    </td>
                    </tr>
                    <tr><td><input type="submit" value="INSERT"/></td></tr>
                </table>
                </form>
                </center>
            </div>
        
            </div>
                
                </div>
              
            </center>
        </div>
    </body>
</html>
<style>
    #main{
        margin: auto;
    }
    #mod{
         border: 2px dashed #cc66ff;
        width: 50%;
        height: 150px;
        background: cornsilk;
        margin-left: 50px;
        padding: 20px;
    }
    #del{
        border: 2px dashed #cc66ff;
        width: 50%;
        height: 100px;
        background: cornsilk;
        margin-left: 50px;
        padding: 20px;
    }
    #delete{
        margin-left: 70px;
        width: 40%;
        padding: 20px;
        float: left;
        border: 2px solid #cc33ff;
        background: #ff6666;
        height: 200px;
    }
    #head{
        font-family: fantasy;
        padding: 10px;
        width: 100%;
        height: 30px;
        background: #ff0099;
    }
    body{
        background: url("../Images/21.jpg")
    }
    .inner{
        
        padding: 50px;
        margin: 10px ;
        height: 300px;
        width: 40%;
        border: 2px solid #cc66ff;
        background: #ff6666;
        
    }
    #add{
        float: left;
        margin-left: 70px;
        border: 2px dashed #cc33ff;
        padding: 40px;
        height: 250px;
        width: 50%;
        background: cornsilk;
    }
    table tr{
        margin: 5px;
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
<%
    
%>
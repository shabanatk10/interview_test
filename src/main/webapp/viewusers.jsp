    <!DOCTYPE html>  
      
    <%@page import="mypack.User"%>
<html>  
    <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
    <title>View Users</title>  
    </head>  
    <body>  
      
    <%@page import="mypack.UserDao,mypack.User,java.util.*"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
      
    <h1>Users List</h1>  
      
    <%  
    List<User> list=UserDao.getAllRecords(); 
    request.setAttribute("list",list);  
    %>  
      
    <table border="1" width="90%">  
    <tr><th>Id</th><th>Name</th><th>Password</th> 
    <th>Sex</th><th>Country</th><th>Edit</th></tr>  
    <c:forEach items="${list}" var="u">  
    <tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td>  
    <td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td>  
    </c:forEach>  
    </table>  
    <br/><a href="userform.html">Add New User</a>  
      
    </body>  
    </html>  
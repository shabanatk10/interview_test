    <%@page import="mypack.UserDao"%>  
    <jsp:useBean id="u" class="mypack.User"></jsp:useBean>  
    <jsp:setProperty property="*" name="u"/>  
      
    <%  
    int i=UserDao.save(u);  
    if(i>0){  
    	response.sendRedirect("viewusers.jsp");     
    	}else{  
    	out.print("something went wrong");
    }  
    %>  
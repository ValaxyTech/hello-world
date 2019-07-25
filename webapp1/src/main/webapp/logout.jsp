<%
 
     String username=(String)session.getAttribute("username");
    if(username!=null)
        {
           out.println(username+" loged out, <a href=\"index.jsp\">Back</a>");
            session.removeAttribute("username");
             
        }
     else
         {
         out.println("You are already not login <a href=\"index.jsp\">Back</a>");
     }
 
 
 
%>

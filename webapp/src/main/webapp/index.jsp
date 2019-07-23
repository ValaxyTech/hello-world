<HTML>
    <HEAD>
        <TITLE>Login using JSP</TITLE>
    </HEAD>
 
    <BODY>
        <H1>DEVOPS LOGIN FORM</H1>
        <%
        String myname =  (String)session.getAttribute("username");
        
        if(myname!=null)
            {
             out.println("Welcome  "+myname+"  , <a href=\"logout.jsp\" >Logout</a>");
            }
        else 
            {
            %>
            <form action="checkLogin.jsp">
                <table>
                    <tr>
                        <td> Username  : </td><td> <input name="username" size=15 type="text" /> </td> 
                    </tr>
                    <tr>
                        <td> Password  : </td><td> <input name="password" size=15 type="text" /> </td> 
                    </tr>
                </table>
                <input type="submit" value="Login" />
            </form>
            <% 
            }
         
             
            %>
         
    </BODY>
</HTML>


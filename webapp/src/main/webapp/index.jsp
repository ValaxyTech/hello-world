<h1> Hello, This is Calculator Application </h1>

<h1> Artithematic Operations </h1
  <%@ page import="com.packtpub.Calculator" %><%
    Calculator calculator = new Calculator();
    int sum = calculator.sum(1, 5);
    out.println("1 + 5 = " + sum);
    out.println("<br>");
    int multiply=calculator.multiply(2,3);
    out.println("4 x 3="+ multiply);
    out.println("<br>");
%>

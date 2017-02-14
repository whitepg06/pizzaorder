<%-- 
    Document   : order
    Created on : Feb 13, 2017, 8:40:42 PM
    Author     : Perry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perry's JSP Pizza</title>
    </head>
    <body>
        <h1>Order Results</h1>
        
        <p>Email = ${param.email}</p>
        <p>Size = ${param.size}</p>
        <p>Crust = ${param.crust}</p>
        
        <%
            double cost = 0;
            String crust = request.getParameter("crust");
            String size = request.getParameter("size");
            if (crust.equals("pan")) {
                cost += 1.0;
            } else if (crust.equals("hand-tossed")) {
                cost += 0.5;
            }else if (crust.equals("thin")) {
                cost += 0.25;
            
            if(size.equals("small")) {
                cost += 5.0;
            }else if (size.equals("medium")){
                cost += 6.0;
            }else if(size.equals("large")){
                cost += 7.0;
            }
            
            String toppings[] = request.getParameterValues("toppings");
            if (toppings != null &&toppings.length != 0) {
                out.println("<p>Toppings: ");
                for (String myTopping : toppings) {
                    out.println(myTopping + ", ");
                    cost += 0.75;
                }
                out.println("</p>");
            }
            out.println("<p>Total Cost: $"+ cost + "</p>");
            
   
                
            }
            
            %>
    </body>
</html>

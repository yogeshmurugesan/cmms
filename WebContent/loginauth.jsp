<%-- 
    Document   : loginauth
    Created on : Jan 18, 2013, 11:08:50 PM
    Author     : Yogesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
    <head>

        <title>login auth Page</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%@page session  = "true"%>
        <%!  String s1, s2,s3="", s4="",s5="",s6="";
            boolean b1 = false;%>
        <% 

                    s1 = request.getParameter("t1").trim();
                    s2 = request.getParameter("p1").trim();

                    try {
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
                        Statement st = con.createStatement();
                        String q = "select * from userlog";
                        ResultSet rs = st.executeQuery(q);
                        while (rs.next()) {
                            s3 = rs.getString(1);
                            s4 = rs.getString(3);
                            if (s1.equals(s3) && s2.equals(s4))
                            {
                               s5 = s3;
                               s6 = s4;
                            }
                        }

out.println("s1"+s1);
  out.println("s2"+s2);

 out.println("s3"+s3);
  out.println("s4"+s4);

 out.println("s5"+s5);
  out.println("s6"+s6);
                        if (s1.equals(s5) && s2.equals(s6))
                            {
//response.sendRedirect("summa.jsp?t1=asd"+s1);
                           session.setMaxInactiveInterval(24 * 60 * 60);
                            session.setAttribute("user", s1);
                            //out.println("valid");
        %>
         <jsp:forward page="login.jsp"/> 
        <%
                         } 
                        else
                         {
                          //  out.println("error");
                           response.sendRedirect("index1.html");
                        }


                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
        %>


    </body>
</html>

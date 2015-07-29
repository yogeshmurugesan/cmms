<%@page import="java.sql.*" %>
<%
            String s = request.getParameter("q");

            String dis = "";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
            Statement st = c.createStatement();
            String sql = "INSERT INTO summa VALUES ('" + s + "')  ";
            int i = st.executeUpdate(sql);


            st.close();
            c.close();
%>
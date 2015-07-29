<%-- 
    Document   : get13
    Created on : Mar 1, 2013, 11:06:20 AM
    Author     : Yogesh
--%>

<%@page import="java.sql.*"%>
<%!String s2;
    int i1 = 0;%>
<%
             String s = request.getParameter("q");
         //   String s = "it";
            String dis = "--select--";
            String s1[] =new String[20];
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from applyreval");

            while (rs.next()) {

                if (s.equals(rs.getString(3))) {

               dis=dis+","+ rs.getString(1);

                }
       
            }



             if (dis == "--select--") {
            out.println("noarrear");
            } else {
            out.println(dis);
            }
            st.close();
            con.close();
%>
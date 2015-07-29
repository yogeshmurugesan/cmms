<%@page import="java.sql.*"%>
<%
            String s = request.getParameter("q");//o1  dept
            String s1 = request.getParameter("q1");// sem
            String s2="a";

            String dis = "";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from mark");
//out.println("input"+s.trim()+"dd");
            while (rs.next()) {
                if (s.equals(rs.getString(1)) && s1.equals(rs.getString(4)) && s2.equals(rs.getString(10))) {

                    if (dis == "") {
                        dis = rs.getString(5) + "," + rs.getString(6);
                    } else {
                        dis = dis + ":" + rs.getString(5) + "," + rs.getString(6);
                    }
                }
            }
            if (dis == "") {
                out.println("nosuggestion,nosuggestion,nosuggestion,nosuggestion,nosuggestion:");
            } else {
                out.println(dis);
            }
            st.close();
            con.close();
%>
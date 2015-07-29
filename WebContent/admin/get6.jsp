
<%@page import="java.sql.*"%>
<%
            String s = request.getParameter("q");
            String dis = "--select--";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from papers");

            while (rs.next()) {

                if (s.equals(rs.getString(3))) {
                    dis =dis + "," +rs.getString(1);
                }
            }
            if (dis == "--select--") {
                out.println("nosuggestion");
            } else {
                out.println(dis);
            }
            st.close();
            con.close();
%>
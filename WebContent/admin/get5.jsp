
<%@page import="java.sql.*"%>
<%
            String s = request.getParameter("q");
            String dis = "";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from papers");

            while (rs.next()) {

                if (s.equals(rs.getString(1))) {
                    dis =rs.getString(2);
                }
            }
            if (dis == "") {
                out.println("nosuggestion");
            } else {
                out.println(dis);
            }
            st.close();
            con.close();
%>
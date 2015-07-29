<%-- 
    Document   : arrearsmarkdo
    Created on : Feb 28, 2013, 10:58:50 PM
    Author     : Yogesh
--%>


<%@page import="java.sql.*" %>
<%! String in[] = new String[20];
    String ex[] = new String[20];
    String pa1[] = new String[20];
    String pa2[] = new String[20];
    String s1, s2, s3, s4, s5, s6, s7, sql, co;
    int i = 0, j, m, to, z = 0;
    int in1[] = new int[20];
    int ex1[] = new int[20];
%>
<%

            s1 = request.getParameter("o1");// Dept
            s2 = request.getParameter("o3");// id(no)
            s3 = request.getParameter("o4");// semester



            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
            Statement st = c.createStatement();


            ResultSet rs = st.executeQuery("select * from papers");
            while (rs.next()) {
                if (s1.equals(rs.getString(3)) && s3.equals(rs.getString(5))) {
                    pa1[z] = rs.getString(1);
                    pa2[z] = rs.getString(2);
                    z++;
                }
            }

            z = 0;



            rs = st.executeQuery("select * from summa");
            while (rs.next()) {
                j = rs.getInt(1);
            }



            rs = st.executeQuery("select * from userlog");
            while (rs.next()) {
                if (s1.equals(rs.getString(4)) && s2.equals(rs.getString(1))) {
                    s4 = rs.getString(2);
                }
            }


            out.print("<br>");
            int u = j;
            for (int k = 1; k <= j; k++) {
                //out.println(k);
                in[k - 1] = request.getParameter("t" + String.valueOf(k));
                ex[k - 1] = request.getParameter("e" + String.valueOf(k));

            }

            for (int k = 0; k < j; k++) {
                in1[k] = Integer.parseInt(in[k]);
                ex1[k] = Integer.parseInt(ex[k]);
                to = in1[k] + ex1[k];
                if (in1[k] >= 8 && ex1[k] >= 27) {
                    co = "p";
                } else {
                    co = "a";
                }


                sql = "update mark set dept='" + s1 + "',idno='" + s2 + "',name='" + s4 + "',sem='" + s3 + "',pid='" + pa1[k] + "',pname='" + pa2[k] + "',inter=" + in1[k] + ",exter=" + ex1[k] + ",total=" + to + ",code='" + co + "'   where idno='" + s2 + "' and pid='" + pa1[k] + "'  ";
                i = st.executeUpdate(sql);

            }

            if (1 <= i) {
                out.println(" <script> alert('Arrear Mark Added successfuly'); </script> ");
                response.sendRedirect("arrearsmark.jsp");
            }
            pa1[0] = null;
            pa2[0] = null;

%>
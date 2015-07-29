<%-- 
    Document   : remarkentrydo
    Created on : Mar 1, 2013, 12:15:16 PM
    Author     : Yogesh
--%>

<%--
    Document   : markentrydo
    Created on : Feb 28, 2013, 12:45:03 PM
    Author     : Yogesh
--%>

<%@page import="java.sql.*" %>
<%! String in[] = new String[20];
    String ex[] = new String[20];
    String pa1[] = new String[20];
    String pa2[] = new String[20];
    String s1, s2, s3, s4, s5, s6, s7, sql,sql1, co;
    int i = 0, j, m, to, z = 0;
    int in1[] = new int[20];
    int ex1[] = new int[20];
%>
<%

            s1 = request.getParameter("o1");// Dept
            s2 = request.getParameter("o3");// id(no)




            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
            Statement st = c.createStatement();

            out.println("s1  " + s1);
            out.println("s2  " + s2);

            ResultSet rs = st.executeQuery("select * from applyreval");

            while (rs.next()) {

                if (s1.equals(rs.getString(3)) && s2.equals(rs.getString(1))) {
                    pa1[z] = rs.getString(5);
                    pa2[z] = rs.getString(4);

                    z++;
                }
            }
            out.println("pid  " + pa1[0]);
            out.println("pna  " + pa2[0]);
            out.println("pid  " + pa1[1]);
            out.println("pna  " + pa2[1]);


            out.println("<br>");

            rs = st.executeQuery("select * from mark");

            while (rs.next()) {

                if (pa1[0].equals(rs.getString(5))) {
                    s3 = rs.getString(4);

                }
            }

            out.println("s3  " + s3);


            z = 0;



            rs = st.executeQuery("select * from summa");
            while (rs.next()) {
                j = rs.getInt(1);
            }
            out.println("j  " + j);


            rs = st.executeQuery("select * from userlog");
            while (rs.next()) {
                if (s1.equals(rs.getString(4)) && s2.equals(rs.getString(1))) {
                    s4 = rs.getString(2);
                }
            }
            out.println("s4  " + s4);

            out.print("<br>");
            int u = j;
            for (int k = 1; k <= j; k++) {
                //out.println(k);
                in[k - 1] = request.getParameter("t" + String.valueOf(k));
                ex[k - 1] = request.getParameter("e" + String.valueOf(k));

            }

            out.println("inter  " + in[0]);
            out.println("exter  " + ex[0]);
            out.println("inter  " + in[1]);
            out.println("exter  " + ex[1]);

            for (int k = 0; k < j; k++) {
                in1[k] = Integer.parseInt(in[k]);
                ex1[k] = Integer.parseInt(ex[k]);
                to = in1[k] + ex1[k];
                if (in1[k] >= 8 && ex1[k] >= 27) {
                    co = "p";
                } else {
                    co = "a";
                }

                out.println("to  " + to);
                out.println("co  " + co);


                sql = "INSERT INTO reval VALUES ('" + s1 + "','" + s2 + "','" + s4 + "','" + s3 + "','" + pa1[k] + "','" + pa2[k] + "'," + in1[k] + "," + ex1[k] + "," + to + ",'" + co + "' )  ";
                i = st.executeUpdate(sql);
                
                sql = "update mark set dept='" + s1 + "',idno='" + s2 + "',name='" + s4 + "',sem='" + s3 + "',pid='" + pa1[k] + "',pname='" + pa2[k] + "',inter=" + in1[k] + ",exter=" + ex1[k] + ",total=" + to + ",code='" + co + "'   where idno='" + s2 + "' and pid='"+pa1[k]+"'  ";
                i = st.executeUpdate(sql);

                sql = "DELETE FROM applyreval WHERE idno='" + s2 + "' ";
                i = st.executeUpdate(sql);

                 }
               
                if (1 <= i) {
                out.println(" <script> alert('Mark added successfuly'); </script> ");
                 response.sendRedirect("markentry.jsp");
                }

                pa1[0] = null;
                pa2[0] = null;
%>
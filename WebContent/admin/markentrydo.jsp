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
    String s1, s2, s3, s4, s5, s6, s7, sql, co;
    int i = 0, j, m, to, z = 0;
    int in1[] = new int[20];
    int ex1[] = new int[20];
    int cr[] = new int[20];
%>
<%

            s1 = request.getParameter("o1");// Dept
            s2 = request.getParameter("o3");// id(no)
            s3 = request.getParameter("o4");// semester



            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
            Statement st = c.createStatement();

            out.println("s1" + s1);
            out.println("s3" + s3);
            ResultSet rs = st.executeQuery("select * from papers");

            while (rs.next()) {

                if (s1.equals(rs.getString(3)) && s3.equals(rs.getString(5))) {
                    pa1[z] = rs.getString(1);
                    pa2[z] = rs.getString(2);
                    cr[z] = rs.getInt(6);
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
                sql = "INSERT INTO mark (dept,idno,name,sem,pid,pname,inter,exter,total,code,credit) VALUES ('" + s1 + "','" + s2 + "','" + s4 + "','" + s3 + "','" + pa1[k] + "','" + pa2[k] + "'," + in1[k] + "," + ex1[k] + "," + to + ",'" + co + "'," + cr[k] + ")  ";
                i = st.executeUpdate(sql);

            }

            sql = "update mark set gp=(total/10)*credit";
            i = st.executeUpdate(sql);

            sql = "insert into topper (idno,sem,gptot,crtot) (select idno,sem,sum(gp),sum(credit) from mark where idno='"+ s2 +"' and sem='"+s3+"'  group by sem)";
            i = st.executeUpdate(sql);

            sql="update topper set gpa=gptot/crtot";
            i = st.executeUpdate(sql);

            if(s3.equals("VI")){
            sql="insert into top (idno,cgpa) (select idno,(sum(gpa)/6) from topper where idno='"+s2+"' group by idno)";
            i = st.executeUpdate(sql);}
            
            if (1 <= i) {
                out.println(" <script> alert('Mark added successfuly'); </script> ");
                response.sendRedirect("markentry.jsp");
            }

            pa1[0] = null;
            pa2[0] = null;
%>
<%-- 
    Document   : revalapply
    Created on : Mar 5, 2013, 2:40:17 PM
    Author     : Yogesh
--%>

<%@page session="true"%>
<%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("index1.html");
            }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> USER </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Le styles -->
        <link href="assets/css/bootstrap.css" rel="stylesheet">
        <link href="assets/css/user.css" rel="stylesheet">
        <link href="assets/css/scroll.css" rel="stylesheet">

        <style type="text/css">
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
        </style>
        <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">

        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.ico">
        <link rel="apple-touch-icon" href="assets/ico/bootstrap-apple-72x72.png">
        <link rel="apple-touch-icon" sizes="72x72" href="assets/ico/bootstrap-apple-57x57.png">
        <link rel="apple-touch-icon" sizes="114x114" href="assets/ico/bootstrap-apple-114x114.png">

    </head>

    <body>

        <br><br><br><br>
        <div class="navbar navbar-fixed-top">
            <br><br><br><br>
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="main.jsp">C&nbsp;M&nbsp;M&nbsp;S</a>

                    <!-- log out -->
                    <div class="btn-group pull-right">
                        <a class="btn btn-danger" href="logout.jsp"><i class="icon-user"></i> Log out</a>
                        <a class="btn btn-danger dropdown-toggle" data-toggle="dropdown" href="#"><i class="icon-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="logout.jsp"><i class="icon-share-alt"></i> Log out</a></li>
                            <li><a href="accdetail.jsp"><i class="icon-th"></i> Edit Account</a></li>
                        </ul>
                    </div>


                    <div class="nav-collapse">
                        <ul class="nav space18">

                            <!-- 1 Mark -->
                            <li class="dropdown bar" id="users" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Mark
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="mark.jsp"><i class="icon-book"></i> view overall mark</a></li>
                                    <li><a data-toggle="modal" href="#partmark"><i class="icon-th"></i> view particular mark</a></li>

                                </ul>
                            </li>

                            <!-- 2 percentage-->
                            <li class="dropdown bar" id="mark" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    percentage
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a data-toggle="modal" href="#partpercent"><i class="icon-align-justify"></i> particular sem percentage</a></li>
                                    <li><a href="percentage.jsp"><i class="icon-th"></i> overall percentage</a></li>

                                </ul>
                            </li>

                            <!-- 3 Toppers -->
                            <li class="dropdown bar" id="dept">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Toppers
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a data-toggle="modal" href="#parttop"><i class="icon-align-justify"></i> particular sem Toppers</a></li>
                                    <li><a href="topper.jsp"><i class="icon-th"></i> overall Toppers</a></li>
                                </ul>
                            </li>

                            <!-- 4 Revaluation Apply-->
                            <li class="dropdown bar active" id="revma" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Revaluation Apply
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="revalapply.jsp"><i class="icon-align-justify"></i> Apply for Revaluation</a></li>

                                </ul>
                            </li>

                            <!-- 5  Mark Statement -->
                            <li class="dropdown bar" id="revap">
                                <a  href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Mark Statement
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a data-toggle="modal" href="#markst"><i class="icon-align-justify"></i> view markstatement</a></li>

                                </ul>
                            </li>





                        </ul>
                    </div><!--/.nav-collapse -->
                </div>
            </div>

            <br><br>
            <div class="container">

                <!-- Main hero unit for a primary marketing message or call to action -->
                <div class="hero-unit">

                    <div class="nano" style="height: 450px; ">
                        <div class="content">
                            <fieldset>
                                <h3>    <legend> REVALUATION APPLY</legend> </h3>

                                <!-- First -->
                                <%@page import="java.sql.*" %>
                                <%! String pi[] = new String[20];
                                    String pn[] = new String[20];
                                    String de[] = new String[20];
                                    String pi1[] = new String[20];
                                    String s1, s2, s3, s5, s6, s7, sql, co, pd, sc;
                                    int i = 0, j, m = 0, to = 0, z = 0;
                                    int in1[] = new int[20];
                                    int ex1[] = new int[20];
                                %>
                                <%! String s4[] = new String[12];%>
                                <% String s = request.getParameter("h1");
                                            i = Integer.parseInt(s);
                                            s1 = request.getParameter("h2");

                                            sc = (String) session.getAttribute("user");
                                            pd = sc + ".pdf";

                                            s4 = s1.split(",");
                                            i = s4.length;



                                            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
                                            Statement st = c.createStatement();
                                            ResultSet rs = null;
                                            for (j = 0; j < i; j++) {
                                                rs = st.executeQuery("select * from papers where id='" + s4[j] + "'  ");
                                                while (rs.next()) {
                                                    pi[j] = rs.getString(1);
                                                    pn[j] = rs.getString(2);
                                                    de[j] = rs.getString(3);
                                                }
                                            }


                                            s5 = (String) session.getAttribute("user");
                                            rs = st.executeQuery("select * from userlog where id='" + s5 + "'  ");
                                            while (rs.next()) {


                                                s6 = rs.getString(2);


                                            }


                                            for (j = 0; j < i; j++) {


                                                sql = "INSERT INTO applyreval VALUES ('" + s5 + "','" + s6 + "','" + de[j] + "','" + pn[j] + "','" + pi[j] + "' )  ";
                                                z = st.executeUpdate(sql);

                                            }
                                            if (z <= 1) {
                                                out.print("<h3>Successfully applyed revalution DOWNLOAD Challan</h3>");
                                %>

                                <% }%>
                                <%@page import="java.io.*" %>
                                <%@page  import="com.itextpdf.text.*" %>
                                <%@page  import="com.itextpdf.text.pdf.*" %>

                                <%

                                            String dirname = "/tmp/pdf/bin";
                                            File f = new File(dirname);


                                            if (f.exists()) {
                                                System.out.println("file all create");
                                                //  out.println("file all create");
                                                String g = f.getAbsolutePath();
                                                //out.println(g);

                                                 try {
                    OutputStream file = new FileOutputStream(new File(dirname + "/" + pd));
                    Document document = new Document();
                    PdfWriter.getInstance(document, file);

                    //Inserting Image in PDF
                    Image image = Image.getInstance("C:/tmps/img/cmms.png");
                    image.scaleAbsolute(510f, 40f);//image width,height
                    //                                  image.setAbsolutePosition(100, 650); // Code 1

                    //image.setRotationDegrees(40);
                    // Image image1 = null;
                                           /*image1 = Image.getInstance("C:/Users/Yogesh/Documents/NetBeansProjects/demo/web/assets/img/bird.png");;
                    image1.scaleAbsolute(220f, 60f);//image width,height
                    image1.setInitialRotation(90f);
                     */


                    //Inserting Table in PDF
                    float[] colsWidth = {2f, 0.5f, 0.5f};
                    PdfPTable table = new PdfPTable(colsWidth);


                    PdfPCell cell1 = new PdfPCell(new Paragraph("Particulars"));
                    PdfPCell cell2 = new PdfPCell(new Paragraph("Rs."));
                    PdfPCell cell3 = new PdfPCell(new Paragraph("Ps."));

                    cell1.setColspan(0);
                    cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
                    cell1.setPadding(10.0f);
                    cell1.setBackgroundColor(new BaseColor(112, 206, 245));

                    cell2.setColspan(0);
                    cell2.setHorizontalAlignment(Element.ALIGN_CENTER);
                    cell2.setPadding(10.0f);
                    cell2.setBackgroundColor(new BaseColor(112, 206, 245));

                    cell3.setColspan(0);
                    cell3.setHorizontalAlignment(Element.ALIGN_CENTER);
                    cell3.setPadding(10.0f);
                    cell3.setBackgroundColor(new BaseColor(112, 206, 245));


                    table.addCell(cell1);
                    table.addCell(cell2);
                    table.addCell(cell3);


                    for (int gs = 0; gs < 6; gs++) {
                        if (gs == 5) {
                            table.addCell("Total");
                        } else {
                            table.addCell("\n");
                        }
                        table.addCell("\n");
                        table.addCell("\n");
                        table.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                        table.setSpacingAfter(30.0f);
                    }


float[] colsWidth1 = {0.6f, 0.3f, 0.3f};
                    PdfPTable table1 = new PdfPTable(colsWidth1);


                    PdfPCell ce1 = new PdfPCell(new Paragraph("Note"));
                    PdfPCell ce2 = new PdfPCell(new Paragraph("Rs."));
                    PdfPCell ce3 = new PdfPCell(new Paragraph("Ps."));

                    ce1.setColspan(0);
                    ce1.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce1.setPadding(10.0f);
                    ce1.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce2.setColspan(0);
                    ce2.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce2.setPadding(10.0f);
                    ce2.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce3.setColspan(0);
                    ce3.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce3.setPadding(10.0f);
                    ce3.setBackgroundColor(new BaseColor(112, 206, 245));


                    table1.addCell(ce1);
                    table1.addCell(ce2);
                    table1.addCell(ce3);

                    table1.addCell("    1000 X ");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("     500 X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("     100 X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("      50 X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("      20 X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("      10 X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("       5 X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("   coins X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("     Total");table1.addCell("\n");table1.addCell("\n");
                    table1.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                    table1.setSpacingAfter(30.0f);




                    String dis = "\n            Exam No : " + session.getAttribute("user");
                    Paragraph pa1 = new Paragraph(); // 1
                    pa1.add(dis);



                    Chunk chunk1 = new Chunk(" Denomination ");


                    document.open();        //PDF document opened........

                    document.addTitle("MARK STTATEMENT");
                    document.addSubject("MARK");
                    document.addAuthor("YOGESH KUMAR");


                    document.add(image);        ///pdf image
                    //   document.add(image1);
                    document.add(Chunk.NEWLINE);   //Something like in HTML
                    document.add(pa1);

                    document.add(table);
                    document.add(table);
                    document.add(chunk1);
                    document.add(table1);
                    /*  document.add(chunk);


                    document.add(Chunk.NEWLINE);   //Something like in HTML
                     */ /*  document.newPage();            //Opened new page
                    document.add(list);            //In the new page we are going to add list*/

                    document.close();

                    file.close();

                    System.out.println("Pdf created successfully..");

                } catch (Exception e) {
                    e.printStackTrace();
                }

            } else {
                                                f.mkdirs();
                                                System.out.println("file is now create");
                                                out.println("file is now create");
                                                String g = f.getAbsolutePath();
                                                out.println(g);
                                                try {
                    OutputStream file = new FileOutputStream(new File(dirname + "/" + pd));
                    Document document = new Document();
                    PdfWriter.getInstance(document, file);

                    //Inserting Image in PDF
                    Image image = Image.getInstance("C:/tmps/img/cmms.png");
                    image.scaleAbsolute(510f, 40f);//image width,height
                    //                                  image.setAbsolutePosition(100, 650); // Code 1

                    //image.setRotationDegrees(40);
                    // Image image1 = null;
                                           /*image1 = Image.getInstance("C:/Users/Yogesh/Documents/NetBeansProjects/demo/web/assets/img/bird.png");;
                    image1.scaleAbsolute(220f, 60f);//image width,height
                    image1.setInitialRotation(90f);
                     */


                    //Inserting Table in PDF
                    float[] colsWidth = {2f, 0.5f, 0.5f};
                    PdfPTable table = new PdfPTable(colsWidth);


                    PdfPCell cell1 = new PdfPCell(new Paragraph("Particulars"));
                    PdfPCell cell2 = new PdfPCell(new Paragraph("Rs."));
                    PdfPCell cell3 = new PdfPCell(new Paragraph("Ps."));

                    cell1.setColspan(0);
                    cell1.setHorizontalAlignment(Element.ALIGN_CENTER);
                    cell1.setPadding(10.0f);
                    cell1.setBackgroundColor(new BaseColor(112, 206, 245));

                    cell2.setColspan(0);
                    cell2.setHorizontalAlignment(Element.ALIGN_CENTER);
                    cell2.setPadding(10.0f);
                    cell2.setBackgroundColor(new BaseColor(112, 206, 245));

                    cell3.setColspan(0);
                    cell3.setHorizontalAlignment(Element.ALIGN_CENTER);
                    cell3.setPadding(10.0f);
                    cell3.setBackgroundColor(new BaseColor(112, 206, 245));


                    table.addCell(cell1);
                    table.addCell(cell2);
                    table.addCell(cell3);


                    for (int gs = 0; gs < 6; gs++) {
                        if (gs == 5) {
                            table.addCell("Total");
                        } else {
                            table.addCell("\n");
                        }
                        table.addCell("\n");
                        table.addCell("\n");
                        table.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                        table.setSpacingAfter(30.0f);
                    }


float[] colsWidth1 = {0.6f, 0.3f, 0.3f};
                    PdfPTable table1 = new PdfPTable(colsWidth1);


                    PdfPCell ce1 = new PdfPCell(new Paragraph("Note"));
                    PdfPCell ce2 = new PdfPCell(new Paragraph("Rs."));
                    PdfPCell ce3 = new PdfPCell(new Paragraph("Ps."));

                    ce1.setColspan(0);
                    ce1.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce1.setPadding(10.0f);
                    ce1.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce2.setColspan(0);
                    ce2.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce2.setPadding(10.0f);
                    ce2.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce3.setColspan(0);
                    ce3.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce3.setPadding(10.0f);
                    ce3.setBackgroundColor(new BaseColor(112, 206, 245));


                    table1.addCell(ce1);
                    table1.addCell(ce2);
                    table1.addCell(ce3);

                    table1.addCell("    1000 X ");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("     500 X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("     100 X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("      50 X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("      20 X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("      10 X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("       5 X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("   coins X");table1.addCell("\n");table1.addCell("\n");
                    table1.addCell("     Total");table1.addCell("\n");table1.addCell("\n");
                    table1.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                    table1.setSpacingAfter(30.0f);




                    String dis = "\n            Exam No : " + session.getAttribute("user") ;
                    Paragraph pa1 = new Paragraph(); // 1
                    pa1.add(dis);



                    Chunk chunk1 = new Chunk(" Denomination ");


                    document.open();        //PDF document opened........

                    document.addTitle("MARK STTATEMENT");
                    document.addSubject("MARK");
                    document.addAuthor("YOGESH KUMAR");


                    document.add(image);        ///pdf image
                    //   document.add(image1);
                    document.add(Chunk.NEWLINE);   //Something like in HTML
                    document.add(pa1);

                    document.add(table);
                    document.add(table);
                    document.add(chunk1);
                    document.add(table1);
                    /*  document.add(chunk);


                    document.add(Chunk.NEWLINE);   //Something like in HTML
                     */ /*  document.newPage();            //Opened new page
                    document.add(list);            //In the new page we are going to add list*/

                    document.close();

                    file.close();

                    System.out.println("Pdf created successfully..");

                } catch (Exception e) {
                    e.printStackTrace();
                }
                                            }
                                            s1 = null;
                                            s2 = null;
                                            s3 = null;
                                            s4 = null;
                                            
                                            i = 0;

                                %>


                                <form action="download.jsp">

                                    <span class="space31"><button id="fat" name="m" data-loading-text="Downloading..." class="btn btn-primary" value="<%=pd%>">
                                            Download
                                        </button></span>

                                </form>

                            </fieldset>
                            <br><br>
                        </div>
                    </div>
                </div>

            </div> <!-- /container -->


        </div>
        <!-- Le modal partmark -->
        <!-- ================================================== -->

        <div class="modal fade" id="partmark">
            <div class="modal-header">
                <a class="close" data-dismiss="modal">×</a>
                <h3>Delete Account</h3>
            </div>
            <form id="login" action="partmark.jsp" method="post">
                <div class="modal-body">
                    <font color="#c3325f" class="space5">
                        <b><p>Which Semester Mark want to select </p></b>
                    </font>
                    <div class="row-fluid">
                        <div class="span6">
                            <div class="control-group">

                                <div class="controls space10">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r1" value="I" checked="">
                                        First Semester
                                    </label>
                                </div>
                            </div>

                            <div class="control-group space10">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r2" value="II">
                                        Second Semester
                                    </label>
                                </div>
                            </div>

                            <div class="control-group space10">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r3" value="III">
                                        Third Semester
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="span6">

                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r4" value="IV">
                                        Fourth Semester
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r5" value="V">
                                        Fifth Semester
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r6" value="VI">
                                        Sixth Semester
                                    </label>
                                </div>
                            </div>
                        </div>


                    </div>


                </div>
                <div class="modal-footer">

                    <button type="reset"  class="btn" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary"  >yes</button>
                </div>
            </form>

        </div>

        <!-- Le modal percentage
            ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <div class="modal fade" id="partpercent">
            <div class="modal-header">
                <a class="close" data-dismiss="modal">×</a>
                <h3>Percentage</h3>
            </div>
            <form id="login" action="partpercentage.jsp" method="post">
                <div class="modal-body">
                    <font color="#c3325f" class="space5">
                        <b><p>Which Semester percentage want to select </p></b>
                    </font>
                    <div class="row-fluid">
                        <div class="span6">
                            <div class="control-group">

                                <div class="controls space10">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r1" value="I" checked="">
                                        First Semester
                                    </label>
                                </div>
                            </div>

                            <div class="control-group space10">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r2" value="II">
                                        Second Semester
                                    </label>
                                </div>
                            </div>

                            <div class="control-group space10">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r3" value="III">
                                        Third Semester
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="span6">

                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r4" value="IV">
                                        Fourth Semester
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r5" value="V">
                                        Fifth Semester
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r6" value="VI">
                                        Sixth Semester
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="reset"  class="btn" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary"  >yes</button>
                </div>
            </form>

        </div>

        <!-- Le modal toppers
               ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <div class="modal fade" id="parttop">
            <div class="modal-header">
                <a class="close" data-dismiss="modal">×</a>
                <h3>Toppers</h3>
            </div>
            <form id="login" action="parttopper.jsp" method="post">
                <div class="modal-body">
                    <font color="#c3325f" class="space5">
                        <b><p>Which Semester Topper want to select </p></b>
                    </font>
                    <div class="row-fluid">
                        <div class="span6">
                            <div class="control-group">

                                <div class="controls space10">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r1" value="I" checked="">
                                        First Semester
                                    </label>
                                </div>
                            </div>

                            <div class="control-group space10">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r2" value="II">
                                        Second Semester
                                    </label>
                                </div>
                            </div>

                            <div class="control-group space10">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r3" value="III">
                                        Third Semester
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="span6">

                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r4" value="IV">
                                        Fourth Semester
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r5" value="V">
                                        Fifth Semester
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r6" value="VI">
                                        Sixth Semester
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="reset"  class="btn" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary"  >yes</button>
                </div>
            </form>

        </div>

        <!-- Le modal Mark Statement
               ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <div class="modal fade" id="markst">
            <div class="modal-header">
                <a class="close" data-dismiss="modal">×</a>
                <h3>View Mark Statement</h3>
            </div>
            <form id="login" action="markstatement.jsp" method="post">
                <div class="modal-body">
                    <font color="#c3325f" class="space5">
                        <b><p>Which Semester MarkStatement want to select </p></b>
                    </font>
                    <div class="row-fluid">
                        <div class="span6">
                            <div class="control-group">

                                <div class="controls space10">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r1" value="I" checked="">
                                        First Semester
                                    </label>
                                </div>
                            </div>

                            <div class="control-group space10">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r2" value="II">
                                        Second Semester
                                    </label>
                                </div>
                            </div>

                            <div class="control-group space10">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r3" value="III">
                                        Third Semester
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="span6">

                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r4" value="IV">
                                        Fourth Semester
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r5" value="V">
                                        Fifth Semester
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r6" value="VI">
                                        Sixth Semester
                                    </label>
                                </div>
                            </div>
                            <div class="control-group">
                                <div class="controls">
                                    <label class="radio">
                                        <input type="radio" name="r1" id="r6" value="X">
                                        Over All Semester
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="reset"  class="btn" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary"  >yes</button>
                </div>
            </form>

        </div>





        <!-- Le javascript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/bootstrap-collapse.js"></script>
        <script src="assets/js/bootstrap-dropdown.js"></script>
        <script src="assets/js/bootstrap-tooltip.js"></script>
        <script src="assets/js/bootstrap-transition.js"></script>
        <script src="assets/js/bootstrap-modal.js"></script>
        <script src="assets/js/bootstrap-button.js"></script>
        <script>
            $(function(){
                $('#fat').click(function () {
                    var btn = $(this)
                    btn.button('loading')
                    setTimeout(function () {
                        btn.button('reset')
                    }, 1000)
                });
                $('.dropdown-toggle').dropdown();
                $('#partmark').modal('toogle');
                $('#partpercent').modal('toogle');
                $('#parttop').modal('toogle');
                $('#markst').modal('toogle');
                // $('#as').tooltip();
            });
        </script>





    </body>
</html>


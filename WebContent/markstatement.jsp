<%-- 
    Document   : markstatement
    Created on : Mar 5, 2013, 2:43:59 PM
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
                            <li class="dropdown bar" id="revma" >
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    Revaluation Apply
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="revalapply.jsp"><i class="icon-align-justify"></i> Apply for Revaluation</a></li>

                                </ul>
                            </li>

                            <!-- 5  Mark Statement -->
                            <li class="dropdown bar active" id="revap">
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
                                <h3> 
                                    <%! String s1, s2, s3, s4, s5 = "x", s6, pd;
                                        String pi[] = new String[100], pn[] = new String[100], co[] = new String[100], dis;
                                        int in[] = new int[100], ex[] = new int[100], to[] = new int[100], cr[] = new int[100], i = 0;
                                    %>
                                    <% s1 = (String) session.getAttribute("user");
                                                s2 = request.getParameter("r1");
                                                pd = s1 + ".pdf";
                                    %>
                                    <legend><%=s2%> SEMESTER MARK STATEMENT</legend> </h3>
                                    <%@page  import="java.io.*,java.sql.*" %>
                                    <%@page  import="com.itextpdf.text.*" %>
                                    <%@page  import="com.itextpdf.text.pdf.*" %>


                                <%
                                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                                            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cmms", "root", "root");
                                            Statement st = c.createStatement();

                                            String sql = "SELECT * FROM mark where idno='" + s1 + "'";
                                            ResultSet rs = st.executeQuery(sql);
                                            while (rs.next()) {
                                                if (s1.equals(rs.getString(2))) {
                                                    s3 = rs.getString(3);
                                                    s4 = rs.getString(1);
                                                }


                                            }

                                %>





                                <%

                                            sql = "SELECT * FROM mark where idno='" + s1 + "' and sem='" + s2 + "' ";
                                            rs = st.executeQuery(sql);
                                            while (rs.next()) {
                                                pi[i] = rs.getString(5);
                                                pn[i] = rs.getString(6);
                                                cr[i] = rs.getInt(11);
                                                in[i] = rs.getInt(7);
                                                ex[i] = rs.getInt(8);
                                                to[i] = rs.getInt(9);
                                                co[i] = rs.getString(10);
                                                i++;
                                %>


                                <%  }

                                            if (s2.equals("X")) {%>
                                <jsp:forward page="overall.jsp" ></jsp:forward>
                                <% }
                                %>



                                <%

                                            //String dirname = "/tmp/pdf/bin";
                                			String dirname= getServletContext().getRealPath("")+"\\gen_pdf\\pdf\\bin";
                                            File f = new File(dirname);


                                            if (f.exists()) {
                                                System.out.println("file all create");
                                                //  out.println("file all create");
                                                String g = f.getAbsolutePath();
                                                //out.println(g);

                                                try {
                                                    OutputStream file = new FileOutputStream(new File(dirname + "/" + pd));
                                                    Document document = new Document(PageSize.A4.rotate());
                                                    PdfWriter.getInstance(document, file);

                                                    //Inserting Image in PDF
                                                    
                                                    String logoimg= getServletContext().getRealPath("")+"\\logo\\img\\cmms.png";
                                                    logoimg=logoimg.replace('\\','/').trim();
                                                    System.out.println(logoimg);
                                                    Image image = Image.getInstance(logoimg);
                                                    
                                                    image.scaleAbsolute(760f, 140f);//image width,height
                                                    //                                  image.setAbsolutePosition(100, 650); // Code 1

                                                    //image.setRotationDegrees(40);
                                                    // Image image1 = null;
                                           /*image1 = Image.getInstance("C:/Users/Yogesh/Documents/NetBeansProjects/demo/web/assets/img/bird.png");;
                                                    image1.scaleAbsolute(220f, 60f);//image width,height
                                                    image1.setInitialRotation(90f);
                                                     */


                                                    //Inserting Table in PDF
                                                    float[] colsWidth = {1f, 2f, 1f, 1f, 1f, 1f, 1f};
                                                    PdfPTable table = new PdfPTable(colsWidth);

                                                    PdfPCell cell = new PdfPCell(new Paragraph("Paper Id"));
                                                    PdfPCell cell1 = new PdfPCell(new Paragraph("Paper Name"));
                                                    PdfPCell cell6 = new PdfPCell(new Paragraph("Credit"));
                                                    PdfPCell cell2 = new PdfPCell(new Paragraph("Internal"));
                                                    PdfPCell cell3 = new PdfPCell(new Paragraph("External"));
                                                    PdfPCell cell4 = new PdfPCell(new Paragraph("Total"));
                                                    PdfPCell cell5 = new PdfPCell(new Paragraph("Code"));


                                                    cell.setColspan(0);
                                                    cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                                                    cell.setPadding(10.0f);
                                                    cell.setBackgroundColor(new BaseColor(112, 206, 245));

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

                                                    cell4.setColspan(0);
                                                    cell4.setHorizontalAlignment(Element.ALIGN_CENTER);
                                                    cell4.setPadding(10.0f);
                                                    cell4.setBackgroundColor(new BaseColor(112, 206, 245));

                                                    cell5.setColspan(0);
                                                    cell5.setHorizontalAlignment(Element.ALIGN_CENTER);
                                                    cell5.setPadding(10.0f);
                                                    cell5.setBackgroundColor(new BaseColor(112, 206, 245));

                                                    cell6.setColspan(0);
                                                    cell6.setHorizontalAlignment(Element.ALIGN_CENTER);
                                                    cell6.setPadding(10.0f);
                                                    cell6.setBackgroundColor(new BaseColor(112, 206, 245));

                                                    table.addCell(cell);
                                                    table.addCell(cell1);
                                                    table.addCell(cell6);
                                                    table.addCell(cell2);
                                                    table.addCell(cell3);
                                                    table.addCell(cell4);
                                                    table.addCell(cell5);

                                                    for (int k = 0; k < i; k++) {

                                                        table.addCell(pi[k]);
                                                        table.addCell(pn[k]);
                                                        table.addCell(Integer.toString(cr[k]));
                                                        table.addCell(Integer.toString(in[k]));
                                                        table.addCell(Integer.toString(ex[k]));
                                                        table.addCell(Integer.toString(to[k]));
                                                        table.addCell(co[k]);
                                                        table.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                                                        table.setSpacingAfter(30.0f);

                                                    }                                                          // Space After table starts, like margin-Bottom in CSS
                                                    String dis = "\n\n\n                          Name : " + s3 + "         Exam No : " + s1 + "                                                                Semester : " + s2 + "   Department : " + s4;
                                                    Paragraph pa1 = new Paragraph(); // 1
                                                    pa1.add(dis);



                                                    Chunk chunk1 = new Chunk(" * a = Arrear , p = Pass ");
                                                    chunk1.setBackground(new BaseColor(204, 143, 138));

                                            
                                                 //Now Insert Every Thing Into PDF Document
                                                    document.open();        //PDF document opened........

                                                    document.addTitle("MARK STTATEMENT");
                                                    document.addSubject("MARK");
                                                    document.addAuthor("YOGESH KUMAR");


                                                    document.add(image);        ///pdf image
                                                    //   document.add(image1);
                                                    document.add(Chunk.NEWLINE);   //Something like in HTML
                                                    document.add(pa1);

                                                    document.add(table);
                                                    document.add(chunk1);
                                               
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
                                                    Document document = new Document(PageSize.A4.rotate());
                                                    PdfWriter.getInstance(document, file);

                                                    //Inserting Image in PDF
                                                    String logoimg= getServletContext().getRealPath("")+"\\logo\\img\\cmms.png";
                                                    
                                                    Image image = Image.getInstance(logoimg);
                                                    image.scaleAbsolute(760f, 140f);//image width,height
                                                    //                                  image.setAbsolutePosition(100, 650); // Code 1

                                                    //image.setRotationDegrees(40);
                                                    // Image image1 = null;
                                           /*image1 = Image.getInstance("C:/Users/Yogesh/Documents/NetBeansProjects/demo/web/assets/img/bird.png");;
                                                    image1.scaleAbsolute(220f, 60f);//image width,height
                                                    image1.setInitialRotation(90f);
                                                     */


                                                    //Inserting Table in PDF
                                                    float[] colsWidth = {1f, 2f, 1f, 1f, 1f, 1f, 1f};
                                                    PdfPTable table = new PdfPTable(colsWidth);

                                                    PdfPCell cell = new PdfPCell(new Paragraph("Paper Id"));
                                                    PdfPCell cell1 = new PdfPCell(new Paragraph("Paper Name"));
                                                    PdfPCell cell6 = new PdfPCell(new Paragraph("Credit"));
                                                    PdfPCell cell2 = new PdfPCell(new Paragraph("Internal"));
                                                    PdfPCell cell3 = new PdfPCell(new Paragraph("External"));
                                                    PdfPCell cell4 = new PdfPCell(new Paragraph("Total"));
                                                    PdfPCell cell5 = new PdfPCell(new Paragraph("Code"));


                                                    cell.setColspan(0);
                                                    cell.setHorizontalAlignment(Element.ALIGN_CENTER);
                                                    cell.setPadding(10.0f);
                                                    cell.setBackgroundColor(new BaseColor(112, 206, 245));

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

                                                    cell4.setColspan(0);
                                                    cell4.setHorizontalAlignment(Element.ALIGN_CENTER);
                                                    cell4.setPadding(10.0f);
                                                    cell4.setBackgroundColor(new BaseColor(112, 206, 245));

                                                    cell5.setColspan(0);
                                                    cell5.setHorizontalAlignment(Element.ALIGN_CENTER);
                                                    cell5.setPadding(10.0f);
                                                    cell5.setBackgroundColor(new BaseColor(112, 206, 245));

                                                    cell6.setColspan(0);
                                                    cell6.setHorizontalAlignment(Element.ALIGN_CENTER);
                                                    cell6.setPadding(10.0f);
                                                    cell6.setBackgroundColor(new BaseColor(112, 206, 245));

                                                    table.addCell(cell);
                                                    table.addCell(cell1);
                                                    table.addCell(cell6);
                                                    table.addCell(cell2);
                                                    table.addCell(cell3);
                                                    table.addCell(cell4);
                                                    table.addCell(cell5);

                                                    for (int k = 0; k < i; k++) {

                                                        table.addCell(pi[k]);
                                                        table.addCell(pn[k]);
                                                        table.addCell(Integer.toString(cr[k]));
                                                        table.addCell(Integer.toString(in[k]));
                                                        table.addCell(Integer.toString(ex[k]));
                                                        table.addCell(Integer.toString(to[k]));
                                                        table.addCell(co[k]);
                                                        table.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                                                        table.setSpacingAfter(30.0f);

                                                    }                                                          // Space After table starts, like margin-Bottom in CSS
                                                    String dis = "\n\n\n                          Name : " + s3 + "         Exam No : " + s1 + "                                                                Semester : " + s2 + "   Department : " + s4;
                                                    Paragraph pa1 = new Paragraph(); // 1
                                                    pa1.add(dis);



                                                    Chunk chunk1 = new Chunk(" * a = Arrear , p = Pass ");
                                                    chunk1.setBackground(new BaseColor(204, 143, 138));

                                                    //Inserting List in PDF
                                              /* List list = new List(true, 30);
                                                    list.add(new ListItem("Java4s"));
                                                    list.add(new ListItem("Php4s"));
                                                    list.add(new ListItem("Some Thing..."));*/

                                                    //Text formating in PDF
                                            /*   Chunk chunk = new Chunk("Welecome To Java4s Programming Blog...");
                                                    chunk.setUnderline(+1f, -2f);//1st co-ordinate is for line width,2nd is space between
                                                    Chunk chunk1 = new Chunk("Php4s.com");
                                                    chunk1.setUnderline(+4f, -8f);
                                                    chunk1.setBackground(new BaseColor(17, 46, 193));
                                                     */
                                                    //Now Insert Every Thing Into PDF Document
                                                    document.open();        //PDF document opened........

                                                    document.addTitle("MARK STTATEMENT");
                                                    document.addSubject("MARK");
                                                    document.addAuthor("YOGESH KUMAR");


                                                    //document.add(image);        ///pdf image
                                                    //   document.add(image1);
                                                    document.add(Chunk.NEWLINE);   //Something like in HTML
                                                    document.add(pa1);

                                                    document.add(table);
                                                    document.add(chunk1);
                                                    /*  document.add(chunk);


                                                    document.add(Chunk.NEWLINE);   //Something like in HTML
                                                     */ /*  document.newPage();            //Opened new page
                                                    document.add(list);            //In the new page we are going to add list*/

                                                    document.close();

                                                    file.close();

                                                    System.out.println("Pdf created successfully..");

                                                } catch (Exception e) {
                                                    
                                                	System.out.print("none ");
                                                	e.printStackTrace();
                                                    
                                                }
                                            }
                                            s1 = null;
                                            s2 = null;
                                            s3 = null;
                                            s4 = null;
                                            dis = null;
                                            for (int k = 0; k < i; k++) {
                                                pi[k] = null;
                                                pn[k] = null;
                                                in[k] = 0;
                                                ex[k] = 0;
                                                to[k] = 0;
                                                co[k] = null;
                                                cr[k] = 0;
                                            }
                                            i = 0;

                                %>
                               
                                <h3> <div>
                                        <form action="download.jsp">
                                        <span class="space8">Download your Mark Statement </span>
                                        <span class="space1"> <button id="fat" name="m" data-loading-text="Downloading..." class="btn btn-primary" value="<%=pd%>">
                                    Download
                                </button></span>
</form>
                                    </div>
                                </h3>

                            </fieldset>
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


            });

        </script>




    </body>
</html>

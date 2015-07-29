<%-- 
    Document   : overall
    Created on : Mar 11, 2013, 6:34:27 PM
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
                                    <legend> OVERALL MARK STATEMENT</legend> </h3>
                                <%! String pd,s1;%>
                                <%
                                s1 = (String) session.getAttribute("user");
            pd = s1 + ".pdf";%>
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
                // $('#as').tooltip();
            });
        </script>





    </body>
</html>


<%@page  import="java.io.*,java.sql.*" %>
<%@page  import="com.itextpdf.text.*" %>
<%@page  import="com.itextpdf.text.pdf.*" %>
<%! String  s2, s3, s4, s5 = "x", s6;
    String pi[] = new String[100], pn[] = new String[100], co[] = new String[100], dis;
    String pi1[] = new String[100], pn1[] = new String[100], co1[] = new String[100];
    String pi2[] = new String[100], pn2[] = new String[100], co2[] = new String[100];
    String pi3[] = new String[100], pn3[] = new String[100], co3[] = new String[100];
    String pi4[] = new String[100], pn4[] = new String[100], co4[] = new String[100];
    String pi5[] = new String[100], pn5[] = new String[100], co5[] = new String[100];
    int in[] = new int[100], ex[] = new int[100], to[] = new int[100], cr[] = new int[100];
    int in1[] = new int[100], ex1[] = new int[100], to1[] = new int[100], cr1[] = new int[100];
    int in2[] = new int[100], ex2[] = new int[100], to2[] = new int[100], cr2[] = new int[100];
    int in3[] = new int[100], ex3[] = new int[100], to3[] = new int[100], cr3[] = new int[100];
    int in4[] = new int[100], ex4[] = new int[100], to4[] = new int[100], cr4[] = new int[100];
    int in5[] = new int[100], ex5[] = new int[100], to5[] = new int[100], cr5[] = new int[100];
    int i = 0, i1 = 0, i2 = 0, i3 = 0, i4 = 0, i5 = 0;
%>
<%

            s1 = (String) session.getAttribute("user");
            pd = s1 + ".pdf";

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

            sql = "SELECT * FROM mark where idno='" + s1 + "' and sem='I' ";
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
            }
%>

<%

            sql = "SELECT * FROM mark where idno='" + s1 + "' and sem='II' ";
            rs = st.executeQuery(sql);
            while (rs.next()) {
                pi1[i1] = rs.getString(5);
                pn1[i1] = rs.getString(6);
                cr1[i1] = rs.getInt(11);
                in1[i1] = rs.getInt(7);
                ex1[i1] = rs.getInt(8);
                to1[i1] = rs.getInt(9);
                co1[i1] = rs.getString(10);
                i1++;
            }
%>
<%

            sql = "SELECT * FROM mark where idno='" + s1 + "' and sem='III' ";
            rs = st.executeQuery(sql);
            while (rs.next()) {
                pi2[i2] = rs.getString(5);
                pn2[i2] = rs.getString(6);
                cr2[i2] = rs.getInt(11);
                in2[i2] = rs.getInt(7);
                ex2[i2] = rs.getInt(8);
                to2[i2] = rs.getInt(9);
                co2[i2] = rs.getString(10);
                i2++;
            }
%>
<%

            sql = "SELECT * FROM mark where idno='" + s1 + "' and sem='IV' ";
            rs = st.executeQuery(sql);
            while (rs.next()) {
                pi3[i3] = rs.getString(5);
                pn3[i3] = rs.getString(6);
                cr3[i3] = rs.getInt(11);
                in3[i3] = rs.getInt(7);
                ex3[i3] = rs.getInt(8);
                to3[i3] = rs.getInt(9);
                co3[i3] = rs.getString(10);
                i3++;
            }
%>
<%

            sql = "SELECT * FROM mark where idno='" + s1 + "' and sem='V' ";
            rs = st.executeQuery(sql);
            while (rs.next()) {
                pi4[i4] = rs.getString(5);
                pn4[i4] = rs.getString(6);
                cr4[i4] = rs.getInt(11);
                in4[i4] = rs.getInt(7);
                ex4[i4] = rs.getInt(8);
                to4[i4] = rs.getInt(9);
                co4[i4] = rs.getString(10);
                i4++;
            }
%>
<%

            sql = "SELECT * FROM mark where idno='" + s1 + "' and sem='VI' ";
            rs = st.executeQuery(sql);
            while (rs.next()) {
                pi5[i5] = rs.getString(5);
                pn5[i5] = rs.getString(6);
                cr5[i5] = rs.getInt(11);
                in5[i5] = rs.getInt(7);
                ex5[i5] = rs.getInt(8);
                to5[i5] = rs.getInt(9);
                co5[i5] = rs.getString(10);
                i5++;
            }
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
                                                    
                    //Image image = Image.getInstance("C:/tmps/img/cmms.png");
                    Image image = Image.getInstance(logoimg);
                    image.scaleAbsolute(760f, 140f);//image width,height

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
                        table.setSpacingAfter(20.0f);

                    }

//222222222222
                    PdfPTable table1 = new PdfPTable(colsWidth);

                    PdfPCell ce11 = new PdfPCell(new Paragraph("Paper Id"));
                    PdfPCell ce12 = new PdfPCell(new Paragraph("Paper Name"));
                    PdfPCell ce13 = new PdfPCell(new Paragraph("Credit"));
                    PdfPCell ce14 = new PdfPCell(new Paragraph("Internal"));
                    PdfPCell ce15 = new PdfPCell(new Paragraph("External"));
                    PdfPCell ce16 = new PdfPCell(new Paragraph("Total"));
                    PdfPCell ce17 = new PdfPCell(new Paragraph("Code"));


                    ce11.setColspan(0);
                    ce11.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce11.setPadding(10.0f);
                    ce11.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce12.setColspan(0);
                    ce12.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce12.setPadding(10.0f);
                    ce12.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce13.setColspan(0);
                    ce13.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce13.setPadding(10.0f);
                    ce13.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce14.setColspan(0);
                    ce14.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce14.setPadding(10.0f);
                    ce14.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce15.setColspan(0);
                    ce15.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce15.setPadding(10.0f);
                    ce15.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce16.setColspan(0);
                    ce16.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce16.setPadding(10.0f);
                    ce16.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce17.setColspan(0);
                    ce17.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce17.setPadding(10.0f);
                    ce17.setBackgroundColor(new BaseColor(112, 206, 245));


                    table1.addCell(ce11);
                    table1.addCell(ce12);
                    table1.addCell(ce13);
                    table1.addCell(ce14);
                    table1.addCell(ce15);
                    table1.addCell(ce16);
                    table1.addCell(ce17);

                    for (int k = 0; k < i1; k++) {

                        table1.addCell(pi1[k]);
                        table1.addCell(pn1[k]);
                        table1.addCell(Integer.toString(cr1[k]));
                        table1.addCell(Integer.toString(in1[k]));
                        table1.addCell(Integer.toString(ex1[k]));
                        table1.addCell(Integer.toString(to1[k]));
                        table1.addCell(co1[k]);
                        table1.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                        table1.setSpacingAfter(20.0f);

                    }

//3333333333333333

                    PdfPTable table2 = new PdfPTable(colsWidth);

                    PdfPCell ce21 = new PdfPCell(new Paragraph("Paper Id"));
                    PdfPCell ce22 = new PdfPCell(new Paragraph("Paper Name"));
                    PdfPCell ce23 = new PdfPCell(new Paragraph("Credit"));
                    PdfPCell ce24 = new PdfPCell(new Paragraph("Internal"));
                    PdfPCell ce25 = new PdfPCell(new Paragraph("External"));
                    PdfPCell ce26 = new PdfPCell(new Paragraph("Total"));
                    PdfPCell ce27 = new PdfPCell(new Paragraph("Code"));


                    ce21.setColspan(0);
                    ce21.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce21.setPadding(10.0f);
                    ce21.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce22.setColspan(0);
                    ce22.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce22.setPadding(10.0f);
                    ce22.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce23.setColspan(0);
                    ce23.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce23.setPadding(10.0f);
                    ce23.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce24.setColspan(0);
                    ce24.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce24.setPadding(10.0f);
                    ce24.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce25.setColspan(0);
                    ce25.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce25.setPadding(10.0f);
                    ce25.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce26.setColspan(0);
                    ce26.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce26.setPadding(10.0f);
                    ce26.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce27.setColspan(0);
                    ce27.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce27.setPadding(10.0f);
                    ce27.setBackgroundColor(new BaseColor(112, 206, 245));


                    table2.addCell(ce21);
                    table2.addCell(ce22);
                    table2.addCell(ce23);
                    table2.addCell(ce24);
                    table2.addCell(ce25);
                    table2.addCell(ce26);
                    table2.addCell(ce27);

                    for (int k = 0; k < i2; k++) {

                        table2.addCell(pi2[k]);
                        table2.addCell(pn2[k]);
                        table2.addCell(Integer.toString(cr2[k]));
                        table2.addCell(Integer.toString(in2[k]));
                        table2.addCell(Integer.toString(ex2[k]));
                        table2.addCell(Integer.toString(to2[k]));
                        table2.addCell(co2[k]);
                        table2.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                        table2.setSpacingAfter(20.0f);

                    }

                    //444444444
                    PdfPTable table3 = new PdfPTable(colsWidth);

                    PdfPCell ce31 = new PdfPCell(new Paragraph("Paper Id"));
                    PdfPCell ce32 = new PdfPCell(new Paragraph("Paper Name"));
                    PdfPCell ce33 = new PdfPCell(new Paragraph("Credit"));
                    PdfPCell ce34 = new PdfPCell(new Paragraph("Internal"));
                    PdfPCell ce35 = new PdfPCell(new Paragraph("External"));
                    PdfPCell ce36 = new PdfPCell(new Paragraph("Total"));
                    PdfPCell ce37 = new PdfPCell(new Paragraph("Code"));


                    ce31.setColspan(0);
                    ce31.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce31.setPadding(10.0f);
                    ce31.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce32.setColspan(0);
                    ce32.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce32.setPadding(10.0f);
                    ce32.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce33.setColspan(0);
                    ce33.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce33.setPadding(10.0f);
                    ce33.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce34.setColspan(0);
                    ce34.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce34.setPadding(10.0f);
                    ce34.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce35.setColspan(0);
                    ce35.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce35.setPadding(10.0f);
                    ce35.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce36.setColspan(0);
                    ce36.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce36.setPadding(10.0f);
                    ce36.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce37.setColspan(0);
                    ce37.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce37.setPadding(10.0f);
                    ce37.setBackgroundColor(new BaseColor(112, 206, 245));


                    table3.addCell(ce31);
                    table3.addCell(ce32);
                    table3.addCell(ce33);
                    table3.addCell(ce34);
                    table3.addCell(ce35);
                    table3.addCell(ce36);
                    table3.addCell(ce37);

                    for (int k = 0; k < i3; k++) {

                        table3.addCell(pi3[k]);
                        table3.addCell(pn3[k]);
                        table3.addCell(Integer.toString(cr3[k]));
                        table3.addCell(Integer.toString(in3[k]));
                        table3.addCell(Integer.toString(ex3[k]));
                        table3.addCell(Integer.toString(to3[k]));
                        table3.addCell(co3[k]);
                        table3.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                        table3.setSpacingAfter(20.0f);

                    }


                    //555555
                    PdfPTable table4 = new PdfPTable(colsWidth);

                    PdfPCell ce41 = new PdfPCell(new Paragraph("Paper Id"));
                    PdfPCell ce42 = new PdfPCell(new Paragraph("Paper Name"));
                    PdfPCell ce43 = new PdfPCell(new Paragraph("Credit"));
                    PdfPCell ce44 = new PdfPCell(new Paragraph("Internal"));
                    PdfPCell ce45 = new PdfPCell(new Paragraph("External"));
                    PdfPCell ce46 = new PdfPCell(new Paragraph("Total"));
                    PdfPCell ce47 = new PdfPCell(new Paragraph("Code"));


                    ce41.setColspan(0);
                    ce41.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce41.setPadding(10.0f);
                    ce41.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce42.setColspan(0);
                    ce42.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce42.setPadding(10.0f);
                    ce42.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce43.setColspan(0);
                    ce43.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce43.setPadding(10.0f);
                    ce43.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce44.setColspan(0);
                    ce44.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce44.setPadding(10.0f);
                    ce44.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce45.setColspan(0);
                    ce45.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce45.setPadding(10.0f);
                    ce45.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce46.setColspan(0);
                    ce46.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce46.setPadding(10.0f);
                    ce46.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce47.setColspan(0);
                    ce47.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce47.setPadding(10.0f);
                    ce47.setBackgroundColor(new BaseColor(112, 206, 245));


                    table4.addCell(ce41);
                    table4.addCell(ce42);
                    table4.addCell(ce43);
                    table4.addCell(ce44);
                    table4.addCell(ce45);
                    table4.addCell(ce46);
                    table4.addCell(ce47);

                    for (int k = 0; k < i4; k++) {

                        table4.addCell(pi4[k]);
                        table4.addCell(pn4[k]);
                        table4.addCell(Integer.toString(cr4[k]));
                        table4.addCell(Integer.toString(in4[k]));
                        table4.addCell(Integer.toString(ex4[k]));
                        table4.addCell(Integer.toString(to4[k]));
                        table4.addCell(co4[k]);
                        table4.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                        table4.setSpacingAfter(20.0f);

                    }

//66666666
                    PdfPTable table5 = new PdfPTable(colsWidth);

                    PdfPCell ce51 = new PdfPCell(new Paragraph("Paper Id"));
                    PdfPCell ce52 = new PdfPCell(new Paragraph("Paper Name"));
                    PdfPCell ce53 = new PdfPCell(new Paragraph("Credit"));
                    PdfPCell ce54 = new PdfPCell(new Paragraph("Internal"));
                    PdfPCell ce55 = new PdfPCell(new Paragraph("External"));
                    PdfPCell ce56 = new PdfPCell(new Paragraph("Total"));
                    PdfPCell ce57 = new PdfPCell(new Paragraph("Code"));


                    ce51.setColspan(0);
                    ce51.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce51.setPadding(10.0f);
                    ce51.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce52.setColspan(0);
                    ce52.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce52.setPadding(10.0f);
                    ce52.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce53.setColspan(0);
                    ce53.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce53.setPadding(10.0f);
                    ce53.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce54.setColspan(0);
                    ce54.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce54.setPadding(10.0f);
                    ce54.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce55.setColspan(0);
                    ce55.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce55.setPadding(10.0f);
                    ce55.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce56.setColspan(0);
                    ce56.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce56.setPadding(10.0f);
                    ce56.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce57.setColspan(0);
                    ce57.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce57.setPadding(10.0f);
                    ce57.setBackgroundColor(new BaseColor(112, 206, 245));


                    table5.addCell(ce51);
                    table5.addCell(ce52);
                    table5.addCell(ce53);
                    table5.addCell(ce54);
                    table5.addCell(ce55);
                    table5.addCell(ce56);
                    table5.addCell(ce57);

                    for (int k = 0; k < i5; k++) {

                        table5.addCell(pi5[k]);
                        table5.addCell(pn5[k]);
                        table5.addCell(Integer.toString(cr5[k]));
                        table5.addCell(Integer.toString(in5[k]));
                        table5.addCell(Integer.toString(ex5[k]));
                        table5.addCell(Integer.toString(to5[k]));
                        table5.addCell(co5[k]);
                        table5.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                        table5.setSpacingAfter(20.0f);

                    }

                    // Space After table starts, like margin-Bottom in CSS
                    String dis = "\n                          Name : " + s3 + "         Exam No : " + s1 + "                                          Department : " + s4;
                    Paragraph pa1 = new Paragraph(); // 1
                    pa1.add(dis);



                    Chunk chunk1 = new Chunk(" * a = Arrear , p = Pass ");
                    chunk1.setBackground(new BaseColor(204, 143, 138));


                    document.open();        //PDF document opened........

                    document.addTitle("MARK STTATEMENT");
                    document.addSubject("MARK");
                    document.addAuthor("YOGESH KUMAR");


                    document.add(image);        ///pdf image
                    //   document.add(image1);
                    document.add(Chunk.NEWLINE);   //Something like in HTML
                    document.add(pa1);

                    document.add(table);
                    document.add(table1);
                    document.add(table2);

                    document.add(chunk1);

                    document.newPage();

                    document.add(image);
                    document.add(pa1);

                    document.add(table3);
                    document.add(table4);
                    document.add(table5);

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
                    //Image image = Image.getInstance("C:/tmps/img/cmms.png");
                    String logoimg= getServletContext().getRealPath("")+"\\logo\\img\\cmms.png";
                    logoimg=logoimg.replace('\\','/').trim();
                    
                    Image image = Image.getInstance(logoimg);
                    image.scaleAbsolute(760f, 140f);//image width,height

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
                        table.setSpacingAfter(20.0f);

                    }

//222222222222
                    PdfPTable table1 = new PdfPTable(colsWidth);

                    PdfPCell ce11 = new PdfPCell(new Paragraph("Paper Id"));
                    PdfPCell ce12 = new PdfPCell(new Paragraph("Paper Name"));
                    PdfPCell ce13 = new PdfPCell(new Paragraph("Credit"));
                    PdfPCell ce14 = new PdfPCell(new Paragraph("Internal"));
                    PdfPCell ce15 = new PdfPCell(new Paragraph("External"));
                    PdfPCell ce16 = new PdfPCell(new Paragraph("Total"));
                    PdfPCell ce17 = new PdfPCell(new Paragraph("Code"));


                    ce11.setColspan(0);
                    ce11.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce11.setPadding(10.0f);
                    ce11.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce12.setColspan(0);
                    ce12.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce12.setPadding(10.0f);
                    ce12.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce13.setColspan(0);
                    ce13.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce13.setPadding(10.0f);
                    ce13.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce14.setColspan(0);
                    ce14.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce14.setPadding(10.0f);
                    ce14.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce15.setColspan(0);
                    ce15.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce15.setPadding(10.0f);
                    ce15.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce16.setColspan(0);
                    ce16.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce16.setPadding(10.0f);
                    ce16.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce17.setColspan(0);
                    ce17.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce17.setPadding(10.0f);
                    ce17.setBackgroundColor(new BaseColor(112, 206, 245));


                    table1.addCell(ce11);
                    table1.addCell(ce12);
                    table1.addCell(ce13);
                    table1.addCell(ce14);
                    table1.addCell(ce15);
                    table1.addCell(ce16);
                    table1.addCell(ce17);

                    for (int k = 0; k < i1; k++) {

                        table1.addCell(pi1[k]);
                        table1.addCell(pn1[k]);
                        table1.addCell(Integer.toString(cr1[k]));
                        table1.addCell(Integer.toString(in1[k]));
                        table1.addCell(Integer.toString(ex1[k]));
                        table1.addCell(Integer.toString(to1[k]));
                        table1.addCell(co1[k]);
                        table1.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                        table1.setSpacingAfter(20.0f);

                    }

//3333333333333333

                    PdfPTable table2 = new PdfPTable(colsWidth);

                    PdfPCell ce21 = new PdfPCell(new Paragraph("Paper Id"));
                    PdfPCell ce22 = new PdfPCell(new Paragraph("Paper Name"));
                    PdfPCell ce23 = new PdfPCell(new Paragraph("Credit"));
                    PdfPCell ce24 = new PdfPCell(new Paragraph("Internal"));
                    PdfPCell ce25 = new PdfPCell(new Paragraph("External"));
                    PdfPCell ce26 = new PdfPCell(new Paragraph("Total"));
                    PdfPCell ce27 = new PdfPCell(new Paragraph("Code"));


                    ce21.setColspan(0);
                    ce21.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce21.setPadding(10.0f);
                    ce21.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce22.setColspan(0);
                    ce22.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce22.setPadding(10.0f);
                    ce22.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce23.setColspan(0);
                    ce23.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce23.setPadding(10.0f);
                    ce23.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce24.setColspan(0);
                    ce24.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce24.setPadding(10.0f);
                    ce24.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce25.setColspan(0);
                    ce25.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce25.setPadding(10.0f);
                    ce25.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce26.setColspan(0);
                    ce26.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce26.setPadding(10.0f);
                    ce26.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce27.setColspan(0);
                    ce27.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce27.setPadding(10.0f);
                    ce27.setBackgroundColor(new BaseColor(112, 206, 245));


                    table2.addCell(ce21);
                    table2.addCell(ce22);
                    table2.addCell(ce23);
                    table2.addCell(ce24);
                    table2.addCell(ce25);
                    table2.addCell(ce26);
                    table2.addCell(ce27);

                    for (int k = 0; k < i2; k++) {

                        table2.addCell(pi2[k]);
                        table2.addCell(pn2[k]);
                        table2.addCell(Integer.toString(cr2[k]));
                        table2.addCell(Integer.toString(in2[k]));
                        table2.addCell(Integer.toString(ex2[k]));
                        table2.addCell(Integer.toString(to2[k]));
                        table2.addCell(co2[k]);
                        table2.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                        table2.setSpacingAfter(20.0f);

                    }

                    //444444444
                    PdfPTable table3 = new PdfPTable(colsWidth);

                    PdfPCell ce31 = new PdfPCell(new Paragraph("Paper Id"));
                    PdfPCell ce32 = new PdfPCell(new Paragraph("Paper Name"));
                    PdfPCell ce33 = new PdfPCell(new Paragraph("Credit"));
                    PdfPCell ce34 = new PdfPCell(new Paragraph("Internal"));
                    PdfPCell ce35 = new PdfPCell(new Paragraph("External"));
                    PdfPCell ce36 = new PdfPCell(new Paragraph("Total"));
                    PdfPCell ce37 = new PdfPCell(new Paragraph("Code"));


                    ce31.setColspan(0);
                    ce31.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce31.setPadding(10.0f);
                    ce31.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce32.setColspan(0);
                    ce32.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce32.setPadding(10.0f);
                    ce32.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce33.setColspan(0);
                    ce33.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce33.setPadding(10.0f);
                    ce33.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce34.setColspan(0);
                    ce34.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce34.setPadding(10.0f);
                    ce34.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce35.setColspan(0);
                    ce35.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce35.setPadding(10.0f);
                    ce35.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce36.setColspan(0);
                    ce36.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce36.setPadding(10.0f);
                    ce36.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce37.setColspan(0);
                    ce37.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce37.setPadding(10.0f);
                    ce37.setBackgroundColor(new BaseColor(112, 206, 245));


                    table3.addCell(ce31);
                    table3.addCell(ce32);
                    table3.addCell(ce33);
                    table3.addCell(ce34);
                    table3.addCell(ce35);
                    table3.addCell(ce36);
                    table3.addCell(ce37);

                    for (int k = 0; k < i3; k++) {

                        table3.addCell(pi3[k]);
                        table3.addCell(pn3[k]);
                        table3.addCell(Integer.toString(cr3[k]));
                        table3.addCell(Integer.toString(in3[k]));
                        table3.addCell(Integer.toString(ex3[k]));
                        table3.addCell(Integer.toString(to3[k]));
                        table3.addCell(co3[k]);
                        table3.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                        table3.setSpacingAfter(20.0f);

                    }


                    //555555
                    PdfPTable table4 = new PdfPTable(colsWidth);

                    PdfPCell ce41 = new PdfPCell(new Paragraph("Paper Id"));
                    PdfPCell ce42 = new PdfPCell(new Paragraph("Paper Name"));
                    PdfPCell ce43 = new PdfPCell(new Paragraph("Credit"));
                    PdfPCell ce44 = new PdfPCell(new Paragraph("Internal"));
                    PdfPCell ce45 = new PdfPCell(new Paragraph("External"));
                    PdfPCell ce46 = new PdfPCell(new Paragraph("Total"));
                    PdfPCell ce47 = new PdfPCell(new Paragraph("Code"));


                    ce41.setColspan(0);
                    ce41.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce41.setPadding(10.0f);
                    ce41.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce42.setColspan(0);
                    ce42.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce42.setPadding(10.0f);
                    ce42.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce43.setColspan(0);
                    ce43.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce43.setPadding(10.0f);
                    ce43.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce44.setColspan(0);
                    ce44.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce44.setPadding(10.0f);
                    ce44.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce45.setColspan(0);
                    ce45.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce45.setPadding(10.0f);
                    ce45.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce46.setColspan(0);
                    ce46.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce46.setPadding(10.0f);
                    ce46.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce47.setColspan(0);
                    ce47.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce47.setPadding(10.0f);
                    ce47.setBackgroundColor(new BaseColor(112, 206, 245));


                    table4.addCell(ce41);
                    table4.addCell(ce42);
                    table4.addCell(ce43);
                    table4.addCell(ce44);
                    table4.addCell(ce45);
                    table4.addCell(ce46);
                    table4.addCell(ce47);

                    for (int k = 0; k < i4; k++) {

                        table4.addCell(pi4[k]);
                        table4.addCell(pn4[k]);
                        table4.addCell(Integer.toString(cr4[k]));
                        table4.addCell(Integer.toString(in4[k]));
                        table4.addCell(Integer.toString(ex4[k]));
                        table4.addCell(Integer.toString(to4[k]));
                        table4.addCell(co4[k]);
                        table4.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                        table4.setSpacingAfter(20.0f);

                    }

//66666666
                    PdfPTable table5 = new PdfPTable(colsWidth);

                    PdfPCell ce51 = new PdfPCell(new Paragraph("Paper Id"));
                    PdfPCell ce52 = new PdfPCell(new Paragraph("Paper Name"));
                    PdfPCell ce53 = new PdfPCell(new Paragraph("Credit"));
                    PdfPCell ce54 = new PdfPCell(new Paragraph("Internal"));
                    PdfPCell ce55 = new PdfPCell(new Paragraph("External"));
                    PdfPCell ce56 = new PdfPCell(new Paragraph("Total"));
                    PdfPCell ce57 = new PdfPCell(new Paragraph("Code"));


                    ce51.setColspan(0);
                    ce51.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce51.setPadding(10.0f);
                    ce51.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce52.setColspan(0);
                    ce52.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce52.setPadding(10.0f);
                    ce52.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce53.setColspan(0);
                    ce53.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce53.setPadding(10.0f);
                    ce53.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce54.setColspan(0);
                    ce54.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce54.setPadding(10.0f);
                    ce54.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce55.setColspan(0);
                    ce55.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce55.setPadding(10.0f);
                    ce55.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce56.setColspan(0);
                    ce56.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce56.setPadding(10.0f);
                    ce56.setBackgroundColor(new BaseColor(112, 206, 245));

                    ce57.setColspan(0);
                    ce57.setHorizontalAlignment(Element.ALIGN_CENTER);
                    ce57.setPadding(10.0f);
                    ce57.setBackgroundColor(new BaseColor(112, 206, 245));


                    table5.addCell(ce51);
                    table5.addCell(ce52);
                    table5.addCell(ce53);
                    table5.addCell(ce54);
                    table5.addCell(ce55);
                    table5.addCell(ce56);
                    table5.addCell(ce57);

                    for (int k = 0; k < i5; k++) {

                        table5.addCell(pi5[k]);
                        table5.addCell(pn5[k]);
                        table5.addCell(Integer.toString(cr5[k]));
                        table5.addCell(Integer.toString(in5[k]));
                        table5.addCell(Integer.toString(ex5[k]));
                        table5.addCell(Integer.toString(to5[k]));
                        table5.addCell(co5[k]);
                        table5.setSpacingBefore(10.0f);       // Space Before table starts, like margin-top in CSS
                        table5.setSpacingAfter(20.0f);

                    }

                    // Space After table starts, like margin-Bottom in CSS
                    String dis = "\n                          Name : " + s3 + "         Exam No : " + s1 + "                                          Department : " + s4;
                    Paragraph pa1 = new Paragraph(); // 1
                    pa1.add(dis);



                    Chunk chunk1 = new Chunk(" * a = Arrear , p = Pass ");
                    chunk1.setBackground(new BaseColor(204, 143, 138));


                    document.open();        //PDF document opened........

                    document.addTitle("MARK STTATEMENT");
                    document.addSubject("MARK");
                    document.addAuthor("YOGESH KUMAR");


                    document.add(image);        ///pdf image
                    //   document.add(image1);
                    document.add(Chunk.NEWLINE);   //Something like in HTML
                    document.add(pa1);

                    document.add(table);
                    document.add(table1);
                    document.add(table2);

                    document.add(chunk1);

                    document.newPage();

                    document.add(image);
                    document.add(pa1);

                    document.add(table3);
                    document.add(table4);
                    document.add(table5);

                    document.add(chunk1);


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

            for (int k = 0; k < i1; k++) {
                pi1[k] = null;
                pn1[k] = null;
                in1[k] = 0;
                ex1[k] = 0;
                to1[k] = 0;
                co1[k] = null;
                cr1[k] = 0;
            }
            for (int k = 0; k < i2; k++) {
                pi2[k] = null;
                pn2[k] = null;
                in2[k] = 0;
                ex2[k] = 0;
                to2[k] = 0;
                co2[k] = null;
                cr2[k] = 0;
            }
            for (int k = 0; k < i3; k++) {
                pi3[k] = null;
                pn3[k] = null;
                in3[k] = 0;
                ex3[k] = 0;
                to3[k] = 0;
                co3[k] = null;
                cr3[k] = 0;
            }
            for (int k = 0; k < i4; k++) {
                pi4[k] = null;
                pn4[k] = null;
                in4[k] = 0;
                ex4[k] = 0;
                to4[k] = 0;
                co4[k] = null;
                cr4[k] = 0;
            }
            for (int k = 0; k < i5; k++) {
                pi5[k] = null;
                pn5[k] = null;
                in5[k] = 0;
                ex5[k] = 0;
                to5[k] = 0;
                co5[k] = null;
                cr5[k] = 0;
            }

            i = 0;
            i1 = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
            i5 = 0;


%>



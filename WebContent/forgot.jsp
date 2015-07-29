<%-- 
    Document   : forgot
    Created on : Feb 17, 2013, 9:23:50 PM
    Author     : Yogesh
--%>
<%--
    Document   : main
    Created on : Feb 17, 2013, 5:22:13 PM
    Author     : Yogesh
--%>
<%@page session="true"%>

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


            <br><br>
            <div class="container">

                <!-- Main hero unit for a primary marketing message or call to action -->
                <div class="hero-unit">

                    <div class="nano" style="height: 450px; ">
                        <div class="content">

                            <form name="form1" class="form-horizontal" method="post" action="forgotdo.jsp" onSubmit="return checknull()">
                                <fieldset>
                                    <h3>    <legend>FORGOT PASSWORD</legend> </h3>

                                    <div class="control-group">
                                        <label class="control-label" for="t1">User Name</label>
                                        <div class="controls">

                                            <div class="input-prepend">
                                                <span class="add-on"><i class="icon-user"></i></span>
                                                <input type="text" class="input-large" id="t1" name="t1" placeholder="User Id.."/>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="space30">
                                        <div class="form-actions">
                                            <button type="submit" class="btn btn-primary">Enter</button>
                                            <button class="btn" type="reset">Cancel</button>
                                        </div>
                                    </div>

                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>

            </div> <!-- /container -->



        </div>


        <!-- Le javascript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/bootstrap-collapse.js"></script>
        <script src="assets/js/bootstrap-dropdown.js"></script>
        <script src="assets/js/bootstrap-transition.js"></script>
        <script src="assets/js/bootstrap-tooltip.js"></script>
        <script src="assets/js/bootstrap-modal.js"></script>
        <script>
            $(function(){
                $('.dropdown-toggle').dropdown();
                $('#myModal').modal('toogle');
                // $('#as').tooltip();
            });
        </script>


        <script type="text/javascript">
            function checknull()
            {
                
                if(document.form1.t1.value=="")
                {
                    alert("type id(no)");
                    document.form1.t1.focus();
                    return false;
                }

                
                return true;
            }

        </script>


       



    </body>
</html>

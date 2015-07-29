<%-- 
    Document   : summa
    Created on : Feb 17, 2013, 7:27:24 PM
    Author     : Yogesh
--%>
<%@page session="true"%>
<%

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>


        <%--   <script language="javascript">
            var s="it"; //option
            var s1="it111"; // text
            var s2=s1.indexOf(s);
   if(s2==-1)
   document.writeln("if"+s2);
else
document.writeln("plus"+s2);
   /*var s3=s1.indexOf(s);
   if(s3<1 || s3<0 || s3<1)
   document.writeln(s3);*/

   </script>
        <%--  <%  String s1,s2,s3;
                    s1 = request.getParameter("o1");
                    s2 = request.getParameter("o2");
                    s3 = request.getParameter("o3");
                    out.print(s1); out.print("<br>");
                    out.print(s2); out.print("<br>");
                    out.print(s3);

            %>
        --%>

        <%--  <%
String s="10it10";
       out.println(s.indexOf("it") != -1   );
        out.println(s.indexOf("it")   );
        out.println(s.indexOf("bca")   );
%>
        --%>
        <%--
        <%   int i=2;
                if(1<=i)
                    out.println(" <script> alert('User added successfuly'); </script> ");
%>
        --%>
        <%--
        <%
        String s1=null;
         String s2=null;
        //out.print(s1);


        if(s1==null && s2==null){out.print(s1);out.print(s2);}
%>  --%>


        <%  String s1,s2,s3;
        int i=10;
                    s1 ="t";
                    for(i=1;i<=10;i++){
                    s2=Integer.toString(i);
                    s3=s1+""+s2;
                    out.print("<br>");
                     out.print(s3);
}

            %>
    </body>
</html>

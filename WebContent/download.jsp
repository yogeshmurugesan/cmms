<%-- 
    Document   : download
    Created on : Mar 12, 2013, 9:35:31 PM
    Author     : Yogesh
--%>

<%@ page  import="java.io.FileInputStream" %>
<%@ page  import="java.io.BufferedInputStream"  %>
<%@ page  import="java.io.File"  %>
<%@ page import="java.io.IOException" %>


<%




   String filename=request.getParameter("m");

String ss=getServletContext().getRealPath("")+"\\gen_pdf\\pdf\\bin\\";
String filepath=ss.replace('\\','/').trim();

System.out.println(filepath+filename);
System.out.println("/tmp/pdf/bin/");

BufferedInputStream buf=null;
   ServletOutputStream myOut=null;

try{

myOut = response.getOutputStream( );
    // File myfile = new File(filepath+filename);
 File myfile = new File(filepath+filename);

     //set response headers
     response.setContentType("text/plain");

     response.addHeader(
        "Content-Disposition","attachment; filename="+filename );

     response.setContentLength( (int) myfile.length( ) );

     FileInputStream input = new FileInputStream(myfile);
     buf = new BufferedInputStream(input);
     int readBytes = 0;

     //read from the file; write to the ServletOutputStream
     while((readBytes = buf.read( )) != -1)
       myOut.write(readBytes);

} catch (IOException ioe){

        System.out.println("error in downloading");
	System.out.println(ioe.getMessage());
	throw new ServletException(ioe.getMessage( ));


     }

 finally {

     //close the input/output streams
         if (myOut != null)
             myOut.close( );
          if (buf != null)
          buf.close( );

     }



%>
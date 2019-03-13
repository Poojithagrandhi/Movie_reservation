package org.apache.jsp.JSP;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String a,b; 
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"icon\" href=\"../Images/26 (2).jpg\" type=\"image/gif\" sizes=\"16x16\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>ADMIN</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>\n");
      out.write("            <center>\n");
      out.write("            <div id=\"first\">\n");
      out.write("                    <br><br>\n");
      out.write("                    <form action=\"\" method=\"post\">\n");
      out.write("                        USERNAME:\n");
      out.write("                        <input type=\"text\" name=\"uname\"/><br><br>\n");
      out.write("                    PASSWORD:\n");
      out.write("                    <input type=\"password\" name=\"pwd\"/><br><br>\n");
      out.write("                    <input type=\"submit\" value=\"LOGIN\"/>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </center>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("<style>\n");
      out.write("    body{\n");
      out.write("        background-image: url(\"../Images/3.jpg\");\n");
      out.write("    }\n");
      out.write("    #first{\n");
      out.write("        border: 3px solid black;\n");
      out.write("        margin: auto;\n");
      out.write("        height: 200px;\n");
      out.write("        width: 500px;\n");
      out.write("        background: white;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write('\n');

    if(request.getMethod().equalsIgnoreCase("post"))
    {
    a=request.getParameter("uname");
    b=request.getParameter("pwd");
    if(a.equals("admin"))
    {
        if(b.equals("admin"))
        {
            response.sendRedirect("admin1.jsp");
        }
        
    }
    }

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class parapruebas_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("\n");
      out.write("<head>\n");
      out.write("    <h1>Bono de Sueldo</h1>\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\" />\n");
      out.write("    <script>\n");
      out.write("        var legajo;\n");
      out.write("        var nombreEmpleado;\n");
      out.write("        var codBono;\n");
      out.write("        var mes;\n");
      out.write("        var anio;\n");
      out.write("        var total;\n");
      out.write("\n");
      out.write("        var array = new Array();\n");
      out.write("\n");
      out.write("        function cargarDatos() {\n");
      out.write("\n");
      out.write("            var salir = false;\n");
      out.write("            legajo = document.getElementById(\"legajo\").value;\n");
      out.write("            nombreEmpleado = document.getElementById(\"nombre\");\n");
      out.write("            codBono = document.getElementById(\"codBono\");\n");
      out.write("            mes = document.getElementById(\"mes\");\n");
      out.write("            anio = document.getElementById(\"anio\").value;\n");
      out.write("            total = document.getElementById(\"total\").value;\n");
      out.write("            if (legajo <= 0 || nombreEmpleado == \"\" || codBono == \"\" || mes == \"Mes\" || anio > 2020 || total <= 0) {\n");
      out.write("                alert(\"Complete todos los campos\");\n");
      out.write("            } else {\n");
      out.write("                for (var i = 0; i < array.length; i++) {\n");
      out.write("                    if (array[i] == legajo) {\n");
      out.write("                        alert(\"Ya existe registrado el legajo\");\n");
      out.write("                        salir = true;\n");
      out.write("                        break;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("                if (!salir) {\n");
      out.write("                    var campos = [\"legajo\", \"nombre\", \"codBono\", \"mes\", \"anio\", \"total\"];\n");
      out.write("                    array.push(document.getElementById(campos[0]).value);\n");
      out.write("\n");
      out.write("                    var tabla = document.getElementById(\"Tabla\");\n");
      out.write("                    var tablaFila = tabla.insertRow(tabla.length);\n");
      out.write("\n");
      out.write("                    for (var i = 0; i < 6; i++) {\n");
      out.write("                        var tablaColumna = tablaFila.insertCell(i);\n");
      out.write("                        tablaColumna.innerHTML = document.getElementById(campos[i]).value;\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            //salir = false;\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <form class=\"form-register\">\n");
      out.write("        Legajo<br>\n");
      out.write("        <input type=\"number\" class=\"controls\" id=\"legajo\" name=\"legajo\" /><br>\n");
      out.write("        Nombre del empleado<br>\n");
      out.write("        <input type=\"text\" class=\"controls\" id=\"nombre\" name=\"nombre\" /><br>\n");
      out.write("        Codigo de Bono de Sueldo<br>\n");
      out.write("        <input type=\"text\" class=\"controls\" id=\"codBono\" name=\"codBono\" /><br><br>\n");
      out.write("\n");
      out.write("        <select id=\"mes\" name=\"mes\">\n");
      out.write("            <option value=\"Mes\" selected>Mes</option>\n");
      out.write("            <option value=\"Enero\">Enero</option>\n");
      out.write("            <option value=\"Febrero\">Febrero</option>\n");
      out.write("            <option value=\"Marzo\">Marzo</option>\n");
      out.write("            <option value=\"Abril\">Abril</option>\n");
      out.write("            <option value=\"Mayo\">Mayo</option>\n");
      out.write("            <option value=\"Junio\">Junio</option>\n");
      out.write("            <option value=\"Julio\">Julio</option>\n");
      out.write("            <option value=\"Agosto\">Agosto</option>\n");
      out.write("            <option value=\"Setiembre\">Setiembre</option>\n");
      out.write("            <option value=\"Octubre\">Octubre</option>\n");
      out.write("            <option value=\"Noviembre\">Noviembre</option>\n");
      out.write("            <option value=\"diciembre\">diciembre</option>\n");
      out.write("        </select>\n");
      out.write("        <br>Anio<br>\n");
      out.write("        <input type=\"number\" class=\"controls\" id=\"anio\" name=\"anio\" /><br>\n");
      out.write("        Total<br>\n");
      out.write("        <input type=\"number\" class=\"controls\" id=\"total\" name=\"total\" /><br><br>\n");
      out.write("        <input type=\"button\" class=\"controls\" value=\"enviar\" onclick=\"cargarDatos()\"><br>\n");
      out.write("    </form>\n");
      out.write("    <br><table id=\"Tabla\" border=\"1\" class=\"tabla1\" ><br>\n");
      out.write("        <tr class=\"head\">\n");
      out.write("            <th>Legajo</th>\n");
      out.write("            <th>Empleado</th>\n");
      out.write("            <th>Codigo</th>\n");
      out.write("            <th>Mes</th>\n");
      out.write("            <th>Anio</th>\n");
      out.write("            <th>Total</th>\n");
      out.write("        </tr>\n");
      out.write("    </table>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
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

<%
   int f=0;
   int c=0;
  if(request.getParameter("filas")!=null&&
          request.getParameter("columnas")!=null)  {
      f= Integer.parseInt(request.getParameter("filas"));
      c= Integer.parseInt(request.getParameter("columnas"));
  }
  %>
  <table border="1">
      <% for (int i = 0; i < f; i++) {
      %>  <tr>
          <% for (int j = 0; j < c; j++) {
          %> <td> <% out.print((i+1)+"."+(j+1));
           %> </td>
        <%  }  %>
      </tr>
     <% } %>
  </table>
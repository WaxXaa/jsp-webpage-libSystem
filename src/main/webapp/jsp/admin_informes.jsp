<%@ page import="backend.admin.OperacionesAdministrador" %>
  <%@ page import="backend.modelos.Libros_set_get" %>
    <%@ page import="java.util.LinkedList" %>
<%@ page import="backend.modelos.Usuario_set_get" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <% OperacionesAdministrador operacionesAdministrador=new OperacionesAdministrador(); %>

          <!DOCTYPE html>
          <html lang="en">

          <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Informes | Bienvenido</title>
            <link rel="stylesheet" href="../css/PlantillaGeneral.css">
            <link rel="stylesheet" href="../css/infomes.css">

          </head>

          <body>
            <header>
              <div>
                <img class="logo" src="../img/icon.jfif" alt="logo de la Biblioteca">
              </div>
              <h1>Informes</h1>
            </header>
            <nav>
              <div>
                <div>
                  <a href="index.jsp">
                    <button class="btn az">Inicio</button>
                  </a>
                </div>
                <div><a href="administrador.jsp"><button class="btn az">Administrador</button></a></div>

                <fieldset>
                  <form action="admin_informes.jsp">
                    <div id="f-informes">
                      <div>
                        <input type="radio" name="opcionInformes" value="usuariosConMasPrestamos"
                          id="usuariosConMasPrestamos">
                        <label for="usuariosConMasPrestamos">Usuarios con mas prestamos</label>
                      </div>
                      <div>
                        <input type="radio" name="opcionInformes" value="librosMasPrestados" id="librosMasPrestados"
                          checked>
                        <label for="librosMasPrestados">Libros mas prestados</label>
                      </div>
                      <div>
                        <input type="submit" value="Mostrar">
                      </div>
                    </div>
                  </form>
                </fieldset>
                <div>cantidad de libros prestados: <span id="cantidadLibrosPrestados">
                    <% try {
                      int cantidadLibrosPrestados = operacionesAdministrador.obtenerCantidadPrestamos();
                    } catch (Exception err) { %>
                    <div class="error-page">
                      <div class="error-content">
                        <h1>Error</h1>
                        <p>Error para mostrar la cantidad de libros prestados</p>
                        <p class="error-message">
                          <%=err.getMessage()%>
                        </p>
                        <a href="administrador.jsp">Regresar</a>
                      </div>
                    </div>

                    <%}
                    %>
                  </span></div>
              </div>

            </nav>
            <main>
              <section id="sec-informes">
                <%if(request.getParameter("opcionInformes").equals("librosMasPrestados")) { LinkedList<Libros_set_get>
                  librosMasPrestados;
                  try {
                  librosMasPrestados = operacionesAdministrador.obtenerLibrosMasPrestados();
                  %>
                  <table>
                    <thead>
                      <tr>
                        <th>Identificador</th>
                        <th>Título</th>
                        <th>Autor</th>
                        <th>Género</th>
                        <th>Cantidad Prestamos</th>
                      </tr>
                    </thead>
                    <tbody>
                      <% for (Libros_set_get libro : librosMasPrestados) { %>
                        <tr>
                          <td>
                            <%= libro.getId_libro() %>
                          </td>
                          <td>
                            <%= libro.getTitulo() %>
                          </td>
                          <td>
                            <%= libro.getAutor() %>
                          </td>
                          <td>
                            <%= libro.getGenero() %>
                          </td>
                          <td>
                            <%= libro.getCantidad_prestamos() %>
                          </td>
                        </tr>
                        <% } %>
                    </tbody>
                  </table>
                  <% } catch (Exception err) { %>
                    <div class="error-page">
                      <div class="error-content">
                        <h1>Error</h1>
                        <p>Error para mostrar los libros</p>
                        <p class="error-message">
                          <%=err.getMessage()%>
                        </p>
                        <a href="administrador.jsp">Regresar</a>
                      </div>
                    </div>

                    <%} } else {
                  LinkedList< Usuario_set_get> usuariosConMasPrestamos;
                  try {
                    usuariosConMasPrestamos = operacionesAdministrador.obtenerUsuariosConMasPrestamos();
                    %>
                <table>
                  <thead>
                  <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Correo</th>
                    <th>Cantidad Prestados</th>
                  </tr>
                  </thead>
                  <tbody>
                  <% for (Usuario_set_get usuario : usuariosConMasPrestamos) {
                      %>
                  <tr>
                    <td><%= usuario.getNombre() %>
                    </td>
                    <td><%= usuario.getApellido() %>
                    </td>
                    <td><%= usuario.getCorreo() %>
                    </td>
                    <td><%= usuario.getNum_prestamos() %>
                    </td>
                  </tr>
                  <%
                    }
                  %>
                  </tbody>
                </table>
                <% } catch (Exception err) { %>
                <div class="error-page">
                  <div class="error-content">
                    <h1>Error</h1>
                    <p>Error para mostrar los usuarios con mas prestamos</p>
                    <p class="error-message">
                      <%=err.getMessage()%>
                    </p>
                    <a href="administrador.jsp"><button class="btn az">Regresar</button></a>
                  </div>
                </div>

                <%}
                } %>
              </section>
            </main>
            <footer>
              <div>
                <br>
                <p>
                  | Victor Rodriguez - Diego Navarro - Eladio Gonzalez - Viviam Ortega - Alejandro Mosquera |
                </p>
              </div>
            </footer>
          </body>

          </html>
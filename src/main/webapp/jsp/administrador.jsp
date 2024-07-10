<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca | Bienvenido</title>
    <link rel="stylesheet" href="../css/PlantillaGeneral.css">
    <link rel="stylesheet" href="../css/administrador.css">
  </head>

  <body>
    <header>
      <div>
        <img id="logo" src="../img/icon.jfif" alt="logo de la Biblioteca">
      </div>
      <h1></h1>
    </header>
    <nav id="nav-admin">
      <a href="../index.jsp">
        <button class="btn az">Inicio</button>
      </a>
      <a href="admin_registrar_prestamo.html">
        <button class="btn az">Registrar Prestamo</button>
      </a>
      <a href="admin_registrar_devolucion.html">
        <button class="btn az">Registrar Devolucion</button>
      </a>
      <!-- <a href="admin_informes.html">
        <button class="btn az">Realizar Informes</button>
      </a> -->
      <form action="admin_informes.jsp">
        <input type="hidden" name="opcionInformes" value="librosMasPrestados">
        <input class="btn az" type="submit" value="Realizar Informes">
      </form>
    </nav>
    <main>
      <div>
        <section id="filtro">
          <fieldset>
            <form action="">
              <input type="radio" name="opcionMostrarLibros" id="todosLibros">
              <label for="todosLibros">mostrar todos los libros</label>
              <input type="radio" name="opcionMostrarLibros" id="todosLibros">
              <label for="todosLibros">mostrar prestamos</label>
              <input type="submit" value="Mostrar">
            </form>
          </fieldset>
        </section>
        <section id="sec-libros">
          <div id="libros">
            <!--tabla generada con jsp con los registros de los libros-->
          </div>
        </section>
      </div>
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
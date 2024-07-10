<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca | Bienvenido</title>
    <link rel="stylesheet" href="../css/PlantillaGeneral.css">
    <link rel="stylesheet" href="../css/usuario.css" />
  </head>

  <body>
    <header>
      <div>
        <img class="logo" src="../img/icon.jfif" alt="logo de la Biblioteca">
      </div>
      <h1>Bienvenido</h1>
    </header>
    <nav>
      <div>
        <a href="../index.jsp">
          <button class="btn az">Inicio</button>
        </a>
      </div>
      <div>
        <fieldset>
          <form action="">
            <input type="submit" value="todos los libros">
          </form>
          <form action="">
            <input type="search" name="busqueda" placeholder="buscar" required>
            <label for="opciones_buscar_por">buscar por</label>
            <select id="opciones_buscar_por">
              <option selected value="titulo">Titulo</option>
              <option value="autor">Autor</option>
              <option value="genero">Genero</option>
            </select>
            <input type="submit" value="buscar">
          </form>
        </fieldset>
      </div>
      <div>
        <a href="notoficaciones.html">
          <div id="img-notificaciones"></div>
        </a>
      </div>
    </nav>
    <main>
      <section id="sec-usuario">
        <div class="catalogo-libros">

        </div>
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
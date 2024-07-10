<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Devolucion | Biblioteca</title>
    <link rel="stylesheet" href="../css/PlantillaGeneral.css">

  </head>

  <body>
    <header>
      <div>
        <img class="logo" src="../img/icon.jfif" alt="logo de la Biblioteca">
      </div>
      <h1>Devoluiones</h1>
    </header>
    <nav>
      <div><a href="../index.jsp"><button class="btn az">inicio</button></a></div>
      <div><a href="administrador.html"><button class="btn az">Administrador</button></a></div>
    </nav>
    <main>
      <div>
        <h2>llene los siguientes campos</h2>
        <fieldset>
          <form action="">
            <div class="input-datos">
              <label for="libro_id">identificador Libro</label>
              <input type="text" name="libro_id" id="libro_id">
            </div>
            <div class="input-datos">
              <label for="nombre">Nombre</label>
              <input type="text" name="nombre" id="nombre">
            </div>
            <div class="input-datos">
              <label for="email">E-mail</label>
              <input type="text" name="email" id="email">
            </div>
            <input type="submit" class="btn az" value="Registrar">
          </form>
        </fieldset>
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
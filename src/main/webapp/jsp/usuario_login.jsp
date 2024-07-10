<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca | Bienvenido</title>
    <link rel="stylesheet" href="../css/PlantillaGeneral.css">
    <link rel="stylesheet" href="../css/ingresar.css">
  </head>

  <body>
    <header>
      <div>
        <img class="logo" src="../img/icon.jfif" alt="logo de la Biblioteca">
      </div>
      <h1>Ingresar</h1>
    </header>
    <nav>
      <div><a href="../index.jsp"><button class="btn az">inicio</button></a></div>
    </nav>
    <main>
      <div>
        <fieldset>
          <form action="usuario.html" id="form-ingresar">
            <div class="input-datos">
              <label for="nombre">Nombre</label>
              <input type="text" name="nombre" id="nombre">
            </div>
            <div class="input-datos">
              <label for="email">E-mail</label>
              <input type="text" name="email" id="email">
            </div>
            <input type="submit" class="botones btn az" value="Ingresar">
          </form>
        </fieldset>
      </div>
      <div><a href="usuario_registrar.html"><button class="btn az">registrate</button></a></div>
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
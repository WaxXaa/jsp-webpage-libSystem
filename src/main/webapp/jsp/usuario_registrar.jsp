<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <!DOCTYPE html>
  <html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrate! | Biblioteca</title>
    <link rel="stylesheet" href="../css/PlantillaGeneral.css">
    <link rel="stylesheet" href="../css/registrar.css">
  </head>

  <body>
    <header>
      <div>
        <img class="logo" src="../img/icon.jfif" alt="logo de la Biblioteca">
      </div>
      <h1>Registrate</h1>
    </header>
    <nav class="nav-registrar">
      <div><a href="../index.jsp"><button class="btn az">inicio</button></a></div>
    </nav>
    <main>
      <section>
        <fieldset>
          <form action="" id="form-registrar">
            <div>
              <div class="input-datos">
                <label for="nombre">Nombre</label>
                <input type="text" name="nombre" id="nombre-u">
              </div>
              <div class="input-datos">
                <label for="apellido">Apellido</label>
                <input type="text" name="apellido" id="apellido-u">
              </div>
              <div class="input-datos">
                <label for="telefono">Telefono</label>
                <input type="text" name="telefono" id="telefono-u">
              </div>
              <div class="input-datos">
                <label for="direccion">Direccion</label>
                <input type="text" name="direccion" id="direccion-u">
              </div>
              <div class="input-datos">
                <label for="correo">Correo</label>
                <input type="text" name="correo" id="correo-u">
              </div>
              <input class="btn az" type="submit" value="Registrar">
          </form>
        </fieldset>
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
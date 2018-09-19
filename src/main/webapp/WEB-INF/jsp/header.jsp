<%-- 
    Document   : header
    Created on : 13/09/2018, 01:06:42 AM
    Author     : adrisan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SEC</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="<c:url value="/css/estilos.css"/> ">
        <link rel="shortcut icon" href="">
        <script src="<c:url value="/js/ejemplo.js" />"></script>
    </head>
    <header id="cabecera">
        <button class="boton_header"> Features</button>
        <button class="boton_header"> Enterprise</button>
        <button type="button" class="boton_header"> Support </button>
        <% if (session.getAttribute("usuario") == null) { %>
            <button type="button" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo"class="boton_header" style="border: 1px solid #00D1E0; margin-right: 20px;"> Iniciar </button>
        <% } else {%>
        <!--<form action="/cerrar_sesion" method="GET">-->
            <!--<button class="boton_header" style="border: 1px solid #00D1E0; margin-right: 20px; display: inline-block"> ${sesion}</button>-->
            <button type="button" class="boton_header" style="border: 1px solid #00D1E0; margin-right: 20px; display:" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                ${sesion}
            </button>
            <div class="dropdown-menu" style="margin-top: 15px">
                <a class="dropdown-item" href="#" >Perfil</a>
                <div class="dropdown-divider"></div>                
                <form  id="formid" action="/cerrar_sesion" method="GET">
                    <a class="dropdown-item" href="#" onclick="document.getElementById('formid').submit()">Cerrar sesion</a>
                </form>
              </div>
        <!--</form>-->
        <% } %>
    </header>
    
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form action="/iniciar_sesion" method="GET">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Hola de nuevo</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">

                      <div class="form-group">
                        <label for="recipient-name" class="col-form-label">Correo:</label>
                        <input type="text" class="form-control" name="correo">
                      </div>
                      <div class="form-group">
                        <label for="message-text" class="col-form-label">Contraseña:</label>
                        <input type="password" class="form-control" name="contrasena">
                      </div>

                  </div>
                  <div class="modal-footer">                
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                    <button type="submit " class="btn btn-primary">Aceptar</button>
                  </div>
                </div>
            </form>
        </div>
      </div>

</html>

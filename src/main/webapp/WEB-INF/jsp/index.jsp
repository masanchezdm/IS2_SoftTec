<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enhorabuena</title>
        <link rel="stylesheet" href="<c:url value="/css/estilos.css"/> ">
        <link rel="shortcut icon" href="">
        <script src="<c:url value="/js/ejemplo.js" />"></script>
    </head>
    <body>      
        
        <div id="agrupar">
            <%@include file="./header.jsp" %>
<!--            <header id="cabecera">
                <button class="boton_header"> Apachurrame</button>
                <button class="boton_header"> Apachurrame2</button>
                <button class="boton_header"> Apachurrame3  </button>
                <button class="boton_header" style="border: 1px solid #00D1E0; margin-right: 20px;"> Apachurrame</button>
            </header>-->
            <!--div id="param">
                <h2> ${parametro}</h2>
            </div>
            <br>

            <hr>
            <br>
            <div id="formulario">
                <form action="/Repaso/peticion3" method="GET">
                    <input   id="parametro" type="text" name="param" placeholder="Parametro">
                    <button class="boton"> Apachurrame</button>
                </form>
            </div>
            <br>
            <button class="boton" onclick="cambiaColores()">Colores</button-->
        </div>
        <%@include file="./footer.jsp" %>
    </body>
</html>

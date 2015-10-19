<jsp:useBean id="usuariodb" scope="session" class="eisidb.usuariodb"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        if ((request.getParameter("nombre")!=null &&!request.getParameter("nombre").isEmpty())&&(request.getParameter("correo")!=null &&!request.getParameter("correo").isEmpty())&&(request.getParameter("carnet")!=null &&!request.getParameter("carnet").isEmpty())&&(request.getParameter("contrasena")!=null &&!request.getParameter("contrasena").isEmpty())&&(request.getParameter("contrasena2")!=null &&!request.getParameter("contrasena2").isEmpty())) {
                String nombre = request.getParameter("nombre");
                String correo = request.getParameter("correo");
                String carnet = request.getParameter("carnet");
                String contra = request.getParameter("contrasena");
                String contra2 = request.getParameter("contrasena2");
                if(contra.equals(contra2)){
                    if (usuariodb.guardar(nombre, correo, carnet, contra)) {
                        out.print("<strong>Guardado</strong>");
                        response.sendRedirect("index.jsp");
                    } else {
                        out.print("<strong>Ocurrió un error al guardar</strong>");
                    }
                }else{
                        out.print("<strong>Las contraseñas no coinciden</strong>");
                }

            }
        
%>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/registro.css">
        <link rel="icon" type="image/png" href="imagenes/logo.png" />
        <title>REGISTRO EISI</title>
    </head>
    
    
    <body>
        <h1>ESCUELA DE INGENIERIA DE SISTEMAS INFORMATICOS</h1>
        <navbar>
        <a href="index.jsp">
        <p>Home</p>
        </a>
        <a><p>Mantenimiento</p></a>
        <a><p>FAQ</p></a>
        <a><p>Contactanos</p></a>
        </navbar>
        <form id="usuariofrm">
            <div id="registro">
                <label style="font-family:arial black; color:#0B2F3A; margin-left:20%">REGISTRARSE</label>
                <div id="labels">
                <label>Nombre :</label>
                <input type="text" name="nombre" required autofocus>
               
                <label>Correo:</label>
                <input type="email" name="correo" required>
               
                <label>Carnet:</label>
                <input type="text" pattern="[A-Za-z]{2}[0-9]{5}" name="carnet" title="AA00000" required>
                
                <label>Contraseña:</label>
                <input id="c1" type="password" name="contrasena" pattern=".{6,}" required>
                
                <label>Conf. Contraseña:</label>
                <input id="c2" type="password" name="contrasena2" pattern=".{6,}" required>
            </div>
                <input id="btnRegistrar" type="submit" value="CREAR CUENTA">
            </div>
        </form>
        <img src="imagenes/logo.png" alt="Imagen no disponible">
    </body>
</html>

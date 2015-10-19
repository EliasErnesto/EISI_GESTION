<jsp:useBean id="usuariodb" scope="session" class="eisidb.usuariodb"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        if ((request.getParameter("usuario")!=null &&!request.getParameter("usuario").isEmpty())&&(request.getParameter("pass")!=null &&!request.getParameter("pass").isEmpty())) {
                String usuario = request.getParameter("usuario");
                String contra = request.getParameter("pass");
 
                    if (usuariodb.autenticar(usuario,contra)) {
                        response.sendRedirect("index.jsp");
                    } else {
                        out.print("<strong>Error en las credenciales. </strong>");
                    }

            }
        
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link type="text/css" rel="stylesheet" href="css/login.css">
        <title>LOGIN EISI</title>
        <link rel="icon" type="image/png" href="imagenes/logo.png" />
    </head>
    <body>
        
        <h1>ESCUELA DE INGENIERIA DE SISTEMAS INFORMATICOS</h1>
        </br>
        <navbar>
        <a href="index.jsp">
        <p>Home</p>
        </a>
        <p>Mantenimiento</p>
        <p>FAQ</p>
        <p>Contactanos</p>
            </navbar>
    </br>
        <img src="imagenes/logo.png" alt="Imagen no disponible">
        <div id="login">
            <strong>
            <label style="font-family:serif black; color:#0B2F3A; font-size:30px">ENTRAR</label>
            </strong>
            </br>            </br>             </br>             </br>             </br>             </br>
            <form id="loginfrm">
            <label>Carnet :</label> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            <input type="text" name="usuario" pattern="[A-Za-z]{2}[0-9]{5}" title="AA00000" required>
            <br></br>
            <label>Contraseña :</label>&nbsp&nbsp&nbsp
            <input type="password" name="pass" pattern=".{6,}" title= "minimo 6 caracteres" required>
            </br></br></br></br>
            <input id="entrar" type="submit" value="Iniciar Sesión" onclick="">
            </br></br></br></br>
            <p>¡Si no tienes una cuenta,  puedes registrarte ahora!</p>
            <a href="registro.jsp">Registrarse</a>
            </form>
            </div>
    </body>
</html>


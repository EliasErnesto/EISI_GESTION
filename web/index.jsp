
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <title>EISI</title>
        <link rel="icon" type="image/png" href="imagenes/logo.png" />
    </head>
    <body>
        <h1>ESCUELA DE INGENIERIA DE SISTEMAS INFORMATICOS</h1>
        </br>
        
    <navbar>
        <a href="index.jsp">
        <p>Home</p>
        </a>
        <a><p>Mantenimiento</p></a>
        <a><p>FAQ</p></a>
        <a><p>Contactanos</p></a>
    </navbar>
        <div id="imagenes">
            <marquee    scrolldelay="0.5"  direction="left" onmouseover="stop()"onmouseout="start()" scrollamount="8" background-image="url('imagenes/imagen1.jpg')">
                <img src="imagenes/imagen1.jpg"> <img src="imagenes/imagen2.jpg">
            </marquee>  
        </div>
        <div id="info">
            <h2>MISIÓN</h2>
            <p>Formar profesionales con conocimientos científico-tecnológicos en el campo de la Informática, comprometidos a resolver problemas ingenieriles de Sistemas de Información en empresas públicas y privadas, contribuyendo con
               ello al desarrollo socio-económico de El Salvador. </p>
            <h2>VISIÓN</h2>
            <p>La carrera de Ingeniería de Sistemas Informáticos es la mejor carrera en Informática en toda Centroamérica. En consecuencia, la
               Escuela  de  Ingeniería  de  Sistemas  Informáticos  es  la  institución
               educativa  de  mayor  prestigio  en  esta  área.  Sus  graduados  son
               altamente cotizados en el mercado laboral regional, destacándose
               algunos a nivel mundial</p>
            <br></br>
            <div id="enlaces">
                <a href="login.jsp">Iniciar Sesión</a>
                <br></br>
                <a href="registro.jsp">Registrarse</a>
            </div>
        </div>
    </body>
</html>


<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
    <link rel="icon" href="assets/favicon/cropped-Favicon-Linea-1-1-1-32x32.png" sizes="32x32" />
	<link rel="icon" href="assets/favicon/cropped-Favicon-Linea-1-1-1-192x192.png" sizes="192x192" />
	<link rel="apple-touch-icon-precomposed" href="assets/favicon/cropped-Favicon-Linea-1-1-1-180x180.png" />
	<meta name="msapplication-TileImage" content="assets/favicon/cropped-Favicon-Linea-1-1-1-270x270.png" />

    <title><% 
    if( request.getAttribute("title") == null){
        out.print("Linea 1 - Metro de Lima");
    }else{
    	out.print(request.getAttribute("title"));
    }
    %></title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
     <link href="assets/css/login.css" rel="stylesheet"> 
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">


    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <script src="assets/js/modernizr.js"></script>
  </head>

  <body>

    <!-- Fixed navbar -->
    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="http://localhost:8082/APFP/index.jsp"><img alt="logo" src="assets/img/logo-metro-color-letter-white2.svg"></a>
          
          <div class="navbar-collapse collapse navbar-right">
        <div class="mt-2 pb-1 d-none d-sm-none d-md-none d-lg-block seccionBuscar">
        <form id="buscadorHome" action="" method="get">
			<input type="text" class="buscadorLudik" name="" placeholder="Escribe tu duda aquí" data-buscador="true">	
			<button type="submit">
			<i class="fa fa-search"></i>
			</button>
			</form>
		</div>
		</div>
		</div>
		
		<div class="navbar-collapse collapse navbar-right">
          <ul class="nav navbar-nav">       
            
            <li ><a href="http://localhost:8082/APFP/index.jsp" class="fa fa-home"> INICIO</a></li>           
            <li ><a href="${pageContext.request.contextPath}/EstacionController?page=estaciones" class="fa fa-train"> ESTACIONES</a></li>
            <li ><a href="#" class="fa fa-clock-o"> HORARIOS</a></li>
            <li ><a href="${pageContext.request.contextPath}/TarifaController?page=tarifas"class="fa fa-credit-card"> TARIFAS</a></li>            
            <li ><a href="${pageContext.request.contextPath}/LoginController?page=login" class="fa fa-user"> INICIAR SESION</a></li>                              
            <%                            
            if(session.getAttribute("usuario") != null){		    	
		    %>
		    	<li ><a href="${pageContext.request.contextPath}/MensajesController?page=mensajes"> PREGUNTAS</a></li>
		    	<li ><a href="${pageContext.request.contextPath}/LoginController?page=closesession"> SALIR</a></li>	
		    <%
		    }		
		    %>     		    
		    <li ><a href="#">${sessionScope.usuario}</a> </li> 
            
          </ul>
          
        
        </div><!--/.nav-collapse -->
        </div>
		</div>
        
      </div>
    </div>
    
    
    
    
    
    
    
    
    
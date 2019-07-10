<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>CPANEL</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="cpanel/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="cpanel/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="cpanel/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="cpanel/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="cpanel/dist/css/skins/_all-skins.min.css">
<!-- Morris chart -->
<link rel="stylesheet" href="cpanel/morris.js/morris.css">
<!-- jvectormap -->
<link rel="stylesheet" href="cpanel/jvectormap/jquery-jvectormap.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="cpanel/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="cpanel/bootstrap-daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header">
			<!-- Logo -->
			
			<a href="http://localhost:8082/APFP/cpanel.jsp" class="navbar-brand"><img alt="logo" src="assets/img/logo-metro-color-letter-white2.svg" width="90px"></a> <!-- mini logo for sidebar mini 50x50 pixels -->
				
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="push-menu"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						</li>
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="cpanel/dist/img/user2-160x160.jpg" class="user-image"
								alt="User Image"> <span class="hidden-xs">Alexander
									Pierce</span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img
									src="cpanel/dist/img/user2-160x160.jpg" class="img-circle"
									alt="User Image">

									<p>
										Administardor <small>Member since
											Nov. 2012</small>
									</p></li>

								<li class="user-footer">									
									<div class="pull-right">
										<a href="#" class="btn btn-default btn-flat">Cerrar Sesion</a>
									</div>
								</li>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->

					</ul>
				</div>
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar">
				<!-- Sidebar user panel -->
				<div class="user-panel">
					<div class="pull-left image">
						<img src="cpanel/dist/img/user2-160x160.jpg" class="img-circle"
							alt="User Image">
					</div>
					<div class="pull-left info">
						<p>Administrador</p>						
					</div>
				</div>
				<!-- search form -->
				<form action="#" method="get" class="sidebar-form">
					
				</form>
				
					<li><a href="https://adminlte.io/docs">
					<i class="fa fa-book"></i> 
					<span>Usuarios</span></a></li>
					
					<li><a href="https://adminlte.io/docs">
					<i class="fa fa-book"></i> 
					<span>Mensajes</span></a></li>
					
					<li><a href="${pageContext.request.contextPath}/EstacionController?page=admin">
					<i class="fa fa-book"></i> 
					<span>Estaciones</span></a></li>
					
					<li><a href="https://adminlte.io/docs">
					<i class="fa fa-book"></i> 
					<span>Tarifas</span></a></li>
					
					<li><a href="https://adminlte.io/docs">
					<i class="fa fa-book"></i> 
					<span>Horarios</span></a></li>
					
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
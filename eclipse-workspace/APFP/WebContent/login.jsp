<%@include file="include/header.jsp" %>

<!------ Include the above in your HEAD tag ---------->

<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Iniciar Sesion</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Registrame</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="<%=request.getContextPath() %>/LoginController?page=acceso" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="usuario"  tabindex="1" class="form-control" placeholder="Ingrese Usuario" value="">
									</div>
									<div class="form-group">
										<input type="password" name="clave"  tabindex="2" class="form-control" placeholder="Ingrese Clave">
									</div>
									<div class="form-group text-center">
										<!--<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										  <label for="remember"> Remember Me</label>-->
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-register" value="Ingresar">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<!--<div class="text-center">
													<a href="https://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>-->
											</div>
										</div>
									</div>
								</form>
								<form id="register-form" action="<%=request.getContextPath() %>/LoginController?page=registro" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="usuario"  tabindex="1" class="form-control" placeholder="Ingrese Nombre Usuario" value="">
									</div>
									<div class="form-group">
										<input type="email" name="correo"  tabindex="1" class="form-control" placeholder="Ingrese Correo Electronico" value="">
									</div>
									<div class="form-group">
										<input type="password" name="clave" tabindex="2" class="form-control" placeholder="Ingrese Clave">
									</div>
									<div class="form-group">
										<input type="password" name="confirm-password" tabindex="2" class="form-control" placeholder="Confirme Clave">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Registrarme">
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@include file="include/footer.jsp" %>
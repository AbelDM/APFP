<%@include file="include/headeradmin.jsp"%>
<form action="<%=request.getContextPath() %>/EstacionController?page=agregar" role="form" method="post">
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputText">Nombre</label> <input
				type="text" class="form-control" name="estacion"
				placeholder="Ingresa Nombre de Estacion">
		</div>
		<div class="form-group">
			<label for="exampleInputText">Direccion</label> <input
				type="text" class="form-control" name="direccion"
				placeholder="Ingrese Direccion">
		</div>	
	</div>
	<!-- /.box-body -->

	<div class="box-footer">
		<button type="submit" class="btn btn-primary">INGRESAR</button>
	</div>
</form>
<%@include file="include/footeradmin.jsp"%>


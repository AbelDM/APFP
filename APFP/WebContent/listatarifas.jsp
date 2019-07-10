<%@include file="include/header.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="pe.autonoma.entity.TarifaEntidad" %>
  
<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
		 <h2> Lista de Tarifas</h2>
			  
						<table border="1">
			<thead bgColor="Skyblue">
				<th align="Center">NOMBRE</th>
			<th align="Center"> TARIFA</th>						
			</thead>
			<%
				List<TarifaEntidad> listTarifas= (List)request.getAttribute("listTarifas");
				String tempURL;
				for(int i=0;i<listTarifas.size(); i++){
					out.print("<tr>");
					out.print("<td>"+listTarifas.get(i).getTar_nombre()+"</td>");
					out.print("<td>"+listTarifas.get(i).getTar_precio()+"</td>");
				}
			%> 
			
			</table> 			
		</div>
	</div>
</div>
<%@include file="include/footer.jsp" %>
<%@include file="include/header.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="pe.autonoma.entity.EstacionEntidad" %>

<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<strong>Estaciones</strong>
			<hr/>
			<table class="table">
			<thead class="thead-dark">
			<th scope="col">Estacion </th>
			<th scope="col">Direccion </th>
			<th scope="col"></th>
			</thead>
			<%
			List<EstacionEntidad> listEstacion= (List)request.getAttribute("listEstacion");
			String tempURL;
			for(int i=0;i<listEstacion.size(); i++){
				out.print("<tr>");
				out.print("<td>"+listEstacion.get(i).getEs_nombre()+"</td>");
				out.print("<td>"+listEstacion.get(i).getEs_direccion()+"</td>");								
				tempURL = request.getContextPath()+"/EdwardController?page=eliminar"+
						"&id_mensaje="+listEstacion.get(i).getEs_codigo();
				out.print("<td><button type='button' class='btn btn-primary' data-toggle='modal' data-target='#myModal'" +
						"data-lat='8.616136' data-lng='-70.245110'>" +
					      " Ver Mapa </button></td>");
				out.print("</tr>");		
			}
			
			%>    
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			    <div class="modal-dialog modal-lg" role="document">
			      <div class="modal-content">			      
			        <div class="modal-body">			          
			          <div class="row">
			            <div class="col-md-12 modal_body_map">
			              <div class="location-map" id="location-map">
			                <div style="width: 600px; height: 400px;" id="map_canvas"></div>
			              </div>
			            </div>
			          </div>			 
			        </div>
			      </div>
			    </div>
			  </div>
			</table>
			<!--  <a class="btn btn-primary" href="${pageContext.request.contextPath}/CursoController?page=addcurso" role="button">Nuevo Curso</a>-->
		</div>
	</div>
</div>

 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="//maps.googleapis.com/maps/api/js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="script.js"></script>
<%@include file="include/footer.jsp" %>






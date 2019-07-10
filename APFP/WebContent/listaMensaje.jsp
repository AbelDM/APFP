<%@include file="include/header.jsp"%>
<%@ page import="java.util.List"%>
<%@ page import="pe.autonoma.entity.MensajeEntidad"%>

<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<h2>Lista de mensajes</h2>

			<table border="1">

				<%
					List<MensajeEntidad> listMensaje = (List) request.getAttribute("listMensaje");
					String tempURL;
					for (int i = 0; i < listMensaje.size(); i++) {
						out.print("<tr>");
						out.print("<td>" + listMensaje.get(i).getMen_mensaje() + "</td>");
						out.print("</tr>");
						out.print("<tr>");
						out.print("<td>" + listMensaje.get(i).getMen_respuesta() + "</td>");
						out.print("</tr>");
					}
				%>

			</table>
			<%				
				if (session.getAttribute("usuario") != null) {
			%>
			<a class="btn btn-primary"
				href="${pageContext.request.contextPath}/MensajeController?page=addmensaje"
				role="button">Hacer Pregunta</a>
			<%
				}
			%>
			</li>
		</div>
	</div>
</div>
<%@include file="include/footer.jsp"%>
package pe.autonoma.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import pe.autonoma.entity.EstacionEntidad;
import pe.autonoma.model.Estacion;

@WebServlet("/EstacionController")
public class EstacionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource dataSource;
	
    public EstacionController() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();
		
		switch (page) {
		case "estaciones":			
			listestaciones(request, response);
		case "admin":			
			listestaciones(request, response);	
		default:
		//	errorPage(request, response);
		}
	}
	
	public void listestaciones(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<EstacionEntidad> listEstacion= new ArrayList<>();
		listEstacion = new Estacion().listEstacion(dataSource);
		request.setAttribute("listEstacion", listEstacion);
		request.setAttribute("title", "Estaciones");
		request.getRequestDispatcher("listaEstaciones.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();
		System.out.println("ASDA");
		switch (page) {
		case "agregar":			
			String estacion = request.getParameter("estacion");
			String direccion= request.getParameter("direccion");
			String estado = "S";
			int orden = 3;
			
			EstacionEntidad newEstacion= new EstacionEntidad(estacion, direccion, estado, orden);
			addEstacion(newEstacion);						
			break;
		case "admin":			
			listestaciones(request, response);	
		default:
		//	errorPage(request, response);
		}
	}

	private void addEstacion(EstacionEntidad newEstacion) {
		new Estacion().addEstacion(dataSource, newEstacion);
		return;
		
	}

}

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

import pe.autonoma.entity.TarifaEntidad;
import pe.autonoma.model.Tarifa;

@WebServlet("/TarifaController")
public class TarifaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource dataSource;

	public TarifaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();
		
		switch (page) {
		case "tarifas":			
			listtarifas(request, response);		
			break;
		default:
		//	errorPage(request, response);
		}
	}

	private void listtarifas(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		List<TarifaEntidad> listTarifas= new ArrayList<>();
		listTarifas = new Tarifa().listTarifa(dataSource);
		request.setAttribute("listTarifas", listTarifas);
		request.setAttribute("title", "Tarifas");
		request.getRequestDispatcher("listatarifas.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

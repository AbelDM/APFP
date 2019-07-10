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

import pe.autonoma.entity.MensajeEntidad;
import pe.autonoma.model.Mensaje;

@WebServlet("/MensajesController")
public class MensajesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource dataSource;
	
    public MensajesController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();
		
		switch (page) {
		case "mensajes":			
			listmensajes(request, response);

		default:
		//	errorPage(request, response);
		}
	}

	private void listmensajes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<MensajeEntidad> listMensaje= new ArrayList<>();
		listMensaje= new Mensaje().listMensaje(dataSource);
		request.setAttribute("listMensaje", listMensaje);
		request.setAttribute("title", "Preguntas");
		request.getRequestDispatcher("listaMensaje.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

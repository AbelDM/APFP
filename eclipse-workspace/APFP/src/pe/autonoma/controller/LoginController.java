package pe.autonoma.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import pe.autonoma.entity.LoginEntidad;
import pe.autonoma.model.Login;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource dataSource;
 
    public LoginController() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();

		switch (page) {
		case "closesession":			
			HttpSession session = request.getSession();
			session.invalidate();
			request.getRequestDispatcher("login.jsp").forward(request, response);
			break;
		case "login":			
			request.getRequestDispatcher("login.jsp").forward(request, response);
			break;
		default:
		//	errorPage(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();
		
		String usuario,clave,correo,nivel;

		switch (page) {
		case "acceso":			
			usuario = request.getParameter("usuario");
			clave = request.getParameter("clave");			
		
			boolean acceso = new Login().validarUsuario(dataSource, usuario, clave);	
			
			if (acceso==true) {
				HttpSession session = request.getSession();		
				session.setAttribute("usuario", usuario);
				session.setMaxInactiveInterval(30*60);		
				Cookie Usuario = new Cookie("usuario", usuario);		
				response.addCookie(Usuario);
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}else {
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
			break;
			
		case "registro":			
			usuario = request.getParameter("usuario");
			clave = request.getParameter("clave");
			correo = request.getParameter("correo");
			nivel = "U";
			
			System.out.println("ENTRO");
			LoginEntidad newUsuario = new LoginEntidad(usuario, clave, correo, nivel);
			addUsuario(newUsuario);
			request.getRequestDispatcher("login.jsp").forward(request, response);			
			break;
		default:	
		}			
	}

	private void addUsuario(LoginEntidad newUsuario) {
		new Login().addUsuario(dataSource, newUsuario);
		return;
		
	}
}

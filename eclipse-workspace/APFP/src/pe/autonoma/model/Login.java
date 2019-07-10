package pe.autonoma.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.sql.DataSource;
import pe.autonoma.entity.LoginEntidad;

public class Login {

	public boolean validarUsuario(DataSource dataSource, String usuario, String clave) {

		boolean user = false;
		Connection connect = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			connect = dataSource.getConnection();
			String query = "Select * from usuario where usu_nick = '" + usuario + "' " + " and usu_clave= '" + clave
					+ "' ";

			stmt = connect.createStatement();
			rs = stmt.executeQuery(query);
			user = rs.next();
			connect.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public void addUsuario(DataSource dataSource, LoginEntidad newUsuario) {

		Connection connect = null;
		PreparedStatement statement = null;
		try {
			connect = dataSource.getConnection();

			String usuario = newUsuario.getUsu_nick();
			String clave = newUsuario.getUsu_clave();
			String correo = newUsuario.getUsu_correo();
			String nivel = "U";

			String query = "insert into usuario (usu_nick,usu_clave,usu_correo,usu_nivel) values (?,?,?,?)";
			statement = connect.prepareStatement(query);
			statement.setString(1, usuario);
			statement.setString(2, clave);
			statement.setString(3, correo);
			statement.setString(4, nivel);
			statement.execute();
			connect.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}

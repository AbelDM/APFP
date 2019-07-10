package pe.autonoma.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import pe.autonoma.entity.MensajeEntidad;

public class Mensaje {

	public List<MensajeEntidad> listMensaje(DataSource datasource) {
		List<MensajeEntidad> listMensaje= new ArrayList<>();
		Connection connect = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			connect = datasource.getConnection();
			String query = "Select * from mensajes where men_activo='S' order by men_fecha desc";
			stmt = connect.createStatement();
			rs = stmt.executeQuery(query);

			while (rs.next()) {
				listMensaje.add(new MensajeEntidad(rs.getInt("usu_codigo"), rs.getDate("men_fecha"),
						rs.getString("men_mensaje"), rs.getString("men_respuesta"), rs.getString("men_activo")));
			}
			connect.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listMensaje;
	}

	public void addMensaje(DataSource dataSource, MensajeEntidad newMensaje) {

		Connection connect = null;
		PreparedStatement statement = null;
		try {
			connect = dataSource.getConnection();
			int usuario = newMensaje.getMen_usuario();
			Date fecha = newMensaje.getMen_fecha();
			String mensaje = newMensaje.getMen_mensaje();
			String estado = "N";

			String query = "insert into mensajes (usu_codigo,men_fecha,men_mensaje,men_activo) values (?,?,?,?)";
			statement = connect.prepareStatement(query);
			statement.setInt(1, usuario);
			statement.setDate(2, fecha);
			statement.setString(3, mensaje);
			statement.setString(4, estado);
			statement.execute();
			connect.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}

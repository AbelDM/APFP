package pe.autonoma.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import pe.autonoma.entity.EstacionEntidad;

public class Estacion {

	public List<EstacionEntidad> listEstacion(DataSource datasource) {
		List<EstacionEntidad> listEstacion = new ArrayList<>();
		Connection connect = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			connect = datasource.getConnection();
			String query = "Select * from estacion where es_activo='S' order by es_orden";
			stmt = connect.createStatement();
			rs = stmt.executeQuery(query);

			while (rs.next()) {
				listEstacion.add(new EstacionEntidad(rs.getString("es_nombre"), rs.getString("es_direccion"),
						rs.getString("es_activo"), rs.getInt("es_orden")));
			}
			connect.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listEstacion;
	}

	public void addEstacion(DataSource dataSource, EstacionEntidad newEstacion) {

		Connection connect = null;
		PreparedStatement statement = null;
		try {
			connect = dataSource.getConnection();

			String estacion = newEstacion.getEs_nombre();
			String direccion = newEstacion.getEs_direccion();
			int orden = newEstacion.getEs_orden();
			String estado = newEstacion.getEs_activo();;

			String query = "insert into estacion (es_nombre,es_direccion,es_orden,es_activo) values (?,?,?,?)";
			statement = connect.prepareStatement(query);
			statement.setString(1, estacion);
			statement.setString(2, direccion);
			statement.setInt(3, orden);
			statement.setString(4, estado);
			statement.execute(); 
			connect.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}    
}

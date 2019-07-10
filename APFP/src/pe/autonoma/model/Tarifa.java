package pe.autonoma.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import pe.autonoma.entity.TarifaEntidad;

public class Tarifa {
	
	public List<TarifaEntidad> listTarifa(DataSource datasource) {
		List<TarifaEntidad> listTarifa = new ArrayList<>();
		Connection connect = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			connect = datasource.getConnection();
			String query = "Select * from tarifa where tar_activo='S' ";
			stmt = connect.createStatement();
			rs = stmt.executeQuery(query);

			while (rs.next()) {
				listTarifa.add(new TarifaEntidad(rs.getString("tar_nombre"), rs.getDouble("tar_precio"),
						rs.getString("tar_activo")));
			}
			connect.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listTarifa;
	}

}

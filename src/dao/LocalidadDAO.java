package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Localidad;


public class LocalidadDAO {

	public Boolean guardarLocalidad(Localidad unaLocalidad) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String();
			sql = "INSERT INTO `localidades`(`nombrelocalidad`, `idprovlocalidad`) VALUES ( " + "'"
					+ unaLocalidad.getNombreLocalidad() + "'," + "'" + unaLocalidad.getIdProvLocalidad() + "');";

			statement.executeUpdate(sql);

			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public List<Localidad> listarLocalidades() {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();

			String sql = new String("SELECT * FROM localidades");
			ResultSet resultSet = statement.executeQuery(sql);
			List<Localidad> listLocalidades = new ArrayList<Localidad>();
			while (resultSet.next()) {
				Localidad unaLocalidad = new Localidad(resultSet.getInt("idlocalidad"),
						resultSet.getString("nombrelocalidad"), resultSet.getInt("idprovlocalidad"));

				listLocalidades.add(unaLocalidad);

			}

			return listLocalidades;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}
}

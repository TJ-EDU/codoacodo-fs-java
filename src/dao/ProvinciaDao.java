package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDB;
import model.Provincia;

public class ProvinciaDao {
	public Boolean guardarProvincia(Provincia unaProvincia) {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();
			

			String sql = new String();
			sql = "INSERT INTO `provincias`(`nombre`) VALUES ( "
					+ "'"+ unaProvincia.getNombre() + "');";
			
			statement.executeUpdate(sql);
			
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	

	public List<Provincia>  listarProvincias() {
		try {
			ConexionDB conexionDB = new ConexionDB();
			Connection connection = conexionDB.establecerConexion();
			Statement statement = connection.createStatement();
			
			String sql = new String("SELECT * FROM provincias");
			ResultSet resultSet = statement.executeQuery(sql);
			List<Provincia> listProvincias = new ArrayList<Provincia>();
			while (resultSet.next()) {
				Provincia unaProvincia = new Provincia(
						resultSet.getString("nombre"),
						resultSet.getInt("idprovincia"));
				listProvincias.add(unaProvincia);
						
				
			}
			
			
			 
			return listProvincias;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}
}

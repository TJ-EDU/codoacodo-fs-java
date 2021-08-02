package model;

public class Provincia {
	private String nombre;
	private Integer idProvincia;
	public Provincia() {
		// TODO Auto-generated constructor stub
	}
	
	public Provincia(String nombre) {
		super();
		this.nombre = nombre;
	}
	
	public Provincia(String nombre, Integer idProvincia) {
		super();
		this.nombre = nombre;
		this.idProvincia = idProvincia;
	}

	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public Integer getIdProvincia() {
		return idProvincia;
	}

	public void setIdProvincia(Integer idProvincia) {
		this.idProvincia = idProvincia;
	}

	@Override
	public String toString() {
		return "Provincia [nombre=" + nombre + "]";
	}
	
}

package model;

public class Localidad {
	private Integer idlocalidad;
	private String nombreLocalidad;
	private Integer idProvLocalidad;
	
	public Localidad() {
		
	}
	
	public Localidad(String nombreLocalidad, Integer idProvLocalidad) {
		super();
		this.nombreLocalidad = nombreLocalidad;
		this.idProvLocalidad = idProvLocalidad;
	}
	
	
	public Localidad(Integer idlocalidad, String nombreLocalidad, Integer idProvLocalidad) {
		super();
		this.idlocalidad = idlocalidad;
		this.nombreLocalidad = nombreLocalidad;
		this.idProvLocalidad = idProvLocalidad;
	}

	public Integer getIdlocalidad() {
		return idlocalidad;
	}

	public void setIdlocalidad(Integer idlocalidad) {
		this.idlocalidad = idlocalidad;
	}

	public String getNombreLocalidad() {
		return nombreLocalidad;
	}
	public void setNombreLocalidad(String nombreLocalidad) {
		this.nombreLocalidad = nombreLocalidad;
	}
	public Integer getIdProvLocalidad() {
		return idProvLocalidad;
	}
	public void setIdProvLocalidad(Integer idProvLocalidad) {
		this.idProvLocalidad = idProvLocalidad;
	}

	@Override
	public String toString() {
		return "Localidad [nombreLocalidad=" + nombreLocalidad + ", idProvLocalidad=" + idProvLocalidad + "]";
	}
	
}

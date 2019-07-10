package pe.autonoma.entity;

public class EstacionEntidad {

	private int es_codigo;
	private String es_nombre;
	private String es_direccion;
	private String es_activo;
	private int es_orden;
	public int getEs_codigo() {
		return es_codigo;
	}
	public void setEs_codigo(int es_codigo) {
		this.es_codigo = es_codigo;
	}
	public String getEs_nombre() {
		return es_nombre;
	}
	public void setEs_nombre(String es_nombre) {
		this.es_nombre = es_nombre;
	}
	public String getEs_direccion() {
		return es_direccion;
	}
	public void setEs_direccion(String es_direccion) {
		this.es_direccion = es_direccion;
	}
	public String getEs_activo() {
		return es_activo;
	}
	public void setEs_activo(String es_activo) {
		this.es_activo = es_activo;
	}
	public int getEs_orden() {
		return es_orden;
	}
	public void setEs_orden(int es_orden) {
		this.es_orden = es_orden;
	}
	
	public EstacionEntidad(String es_nombre, String es_direccion, String es_activo, int es_orden) {
		super();
		this.es_nombre = es_nombre;
		this.es_direccion = es_direccion;
		this.es_activo = es_activo;
		this.es_orden = es_orden;
	}
	
	
}

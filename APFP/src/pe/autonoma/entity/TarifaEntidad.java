package pe.autonoma.entity;

public class TarifaEntidad {
	
	private int tar_codigo;
	private String tar_nombre;
	private double tar_precio;
	private String tar_activo;
	public int getTar_codigo() {
		return tar_codigo;
	}
	public void setTar_codigo(int tar_codigo) {
		this.tar_codigo = tar_codigo;
	}
	public String getTar_nombre() {
		return tar_nombre;
	}
	public void setTar_nombre(String tar_nombre) {
		this.tar_nombre = tar_nombre;
	}
	public double getTar_precio() {
		return tar_precio;
	}
	public void setTar_precio(double tar_precio) {
		this.tar_precio = tar_precio;
	}
	public String getTar_activo() {
		return tar_activo;
	}
	public void setTar_activo(String tar_activo) {
		this.tar_activo = tar_activo;
	}
	
	public TarifaEntidad(String tar_nombre, double tar_precio, String tar_activo) {
		super();
		this.tar_nombre = tar_nombre;
		this.tar_precio = tar_precio;
		this.tar_activo = tar_activo;
	}
	
	

}

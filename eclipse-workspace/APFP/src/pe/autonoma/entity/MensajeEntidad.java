package pe.autonoma.entity;

import java.sql.Date;

public class MensajeEntidad {
	private int men_codigo;
	private int men_usuario;
	private Date men_fecha;
	private String men_mensaje;
	private String men_respuesta;
	private String men_acivo;
	
	
	
	public String getMen_respuesta() {
		return men_respuesta;
	}
	public void setMen_respuesta(String men_respuesta) {
		this.men_respuesta = men_respuesta;
	}
	public int getMen_codigo() {
		return men_codigo;
	}
	public void setMen_codigo(int men_codigo) {
		this.men_codigo = men_codigo;
	}
	public int getMen_usuario() {
		return men_usuario;
	}
	public void setMen_usuario(int men_usuario) {
		this.men_usuario = men_usuario;
	}
	public Date getMen_fecha() {
		return men_fecha;
	}
	public void setMen_fecha(Date men_fecha) {
		this.men_fecha = men_fecha;
	}
	public String getMen_mensaje() {
		return men_mensaje;
	}
	public void setMen_mensaje(String men_mensaje) {
		this.men_mensaje = men_mensaje;
	}
	public String getMen_acivo() {
		return men_acivo;
	}
	public void setMen_acivo(String men_acivo) {
		this.men_acivo = men_acivo;
	}
	
	public MensajeEntidad(int men_codigo, int men_usuario, Date men_fecha, String men_mensaje, String men_acivo) {
		super();
		this.men_codigo = men_codigo;
		this.men_usuario = men_usuario;
		this.men_fecha = men_fecha;
		this.men_mensaje = men_mensaje;
		this.men_acivo = men_acivo;
	}
	public MensajeEntidad(int men_usuario, Date men_fecha, String men_mensaje, String men_respuesta, String men_acivo) {
		super();
		this.men_usuario = men_usuario;
		this.men_fecha = men_fecha;
		this.men_mensaje = men_mensaje;
		this.men_respuesta = men_respuesta;
		this.men_acivo = men_acivo;
	}
	

	
	
}

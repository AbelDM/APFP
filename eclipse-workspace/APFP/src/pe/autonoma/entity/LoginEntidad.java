package pe.autonoma.entity;

public class LoginEntidad {
	private int usu_codigo ;
	private String usu_nick;
	private String usu_clave;
	private String usu_correo;
	private String usu_nivel;
	
	public int getUsu_codigo() {
		return usu_codigo;
	}
	public void setUsu_codigo(int usu_codigo) {
		this.usu_codigo = usu_codigo;
	}
	public String getUsu_nick() {
		return usu_nick;
	}
	public void setUsu_nick(String usu_nick) {
		this.usu_nick = usu_nick;
	}
	public String getUsu_clave() {
		return usu_clave;
	}
	public String getUsu_correo() {
		return usu_correo;
	}
	public void setUsu_correo(String usu_correo) {
		this.usu_correo = usu_correo;
	}
	public void setUsu_clave(String usu_clave) {
		this.usu_clave = usu_clave;
	}
	public String getUsu_nivel() {
		return usu_nivel;
	}
	public void setNivel(String usu_nivel) {
		this.usu_nivel = usu_nivel;
	}
	
	public LoginEntidad(String usu_nick, String usu_clave) {
		super();
		this.usu_nick = usu_nick;
		this.usu_clave = usu_clave;
	}	

	public LoginEntidad(String usu_nivel) {
		super();
		this.usu_nivel = usu_nivel;
	}
	public LoginEntidad(String usu_nick, String usu_clave, String usu_correo, String usu_nivel) {
		super();
		this.usu_nick = usu_nick;
		this.usu_clave = usu_clave;
		this.usu_correo = usu_correo;
		this.usu_nivel = usu_nivel;
	}
	
	
	
}

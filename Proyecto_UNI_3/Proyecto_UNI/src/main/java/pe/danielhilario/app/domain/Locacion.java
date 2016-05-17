package pe.danielhilario.app.domain;

public class Locacion {

	private String nombreCalle;
	private String codigoPostal;
	private String ciudad;
	private String provincia;
	
	public Locacion() {
		// TODO Auto-generated constructor stub
	}

	public Locacion(String nombreCalle, String codigoPostal, String ciudad, String provincia) {
		super();
		this.nombreCalle = nombreCalle;
		this.codigoPostal = codigoPostal;
		this.ciudad = ciudad;
		this.provincia = provincia;
	}

	public String getNombreCalle() {
		return nombreCalle;
	}

	public void setNombreCalle(String nombreCalle) {
		this.nombreCalle = nombreCalle;
	}

	public String getCodigoPostal() {
		return codigoPostal;
	}

	public void setCodigoPostal(String codigoPostal) {
		this.codigoPostal = codigoPostal;
	}

	public String getCiudad() {
		return ciudad;
	}

	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	
	
}

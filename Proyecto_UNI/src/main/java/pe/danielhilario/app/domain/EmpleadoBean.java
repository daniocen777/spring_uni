package pe.danielhilario.app.domain;

public class EmpleadoBean {

	private String nombreRegion;
	private String nombrePais;
	private String nombreCalle;
	private String codigoPostal;
	private String ciudad;
	private String provincia;
	private String nombreDepartamento;
	private String nombre;
	private String apPaterno;
	private String apMaterno;
	private String email;
	private String telefono;
	private String fechaNac;
	private float salario;
	
	public EmpleadoBean() {
		// TODO Auto-generated constructor stub
	}

	public EmpleadoBean(String nombreRegion, String nombrePais, String nombreCalle, String codigoPostal, String ciudad,
			String provincia, String nombreDepartamento, String nombre, String apPaterno, String apMaterno,
			String email, String telefono, String fechaNac, float salario) {
		super();
		this.nombreRegion = nombreRegion;
		this.nombrePais = nombrePais;
		this.nombreCalle = nombreCalle;
		this.codigoPostal = codigoPostal;
		this.ciudad = ciudad;
		this.provincia = provincia;
		this.nombreDepartamento = nombreDepartamento;
		this.nombre = nombre;
		this.apPaterno = apPaterno;
		this.apMaterno = apMaterno;
		this.email = email;
		this.telefono = telefono;
		this.fechaNac = fechaNac;
		this.salario = salario;
	}

	public String getNombreRegion() {
		return nombreRegion;
	}

	public void setNombreRegion(String nombreRegion) {
		this.nombreRegion = nombreRegion;
	}

	public String getNombrePais() {
		return nombrePais;
	}

	public void setNombrePais(String nombrePais) {
		this.nombrePais = nombrePais;
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

	public String getNombreDepartamento() {
		return nombreDepartamento;
	}

	public void setNombreDepartamento(String nombreDepartamento) {
		this.nombreDepartamento = nombreDepartamento;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApPaterno() {
		return apPaterno;
	}

	public void setApPaterno(String apPaterno) {
		this.apPaterno = apPaterno;
	}

	public String getApMaterno() {
		return apMaterno;
	}

	public void setApMaterno(String apMaterno) {
		this.apMaterno = apMaterno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getFechaNac() {
		return fechaNac;
	}

	public void setFechaNac(String fechaNac) {
		this.fechaNac = fechaNac;
	}

	public float getSalario() {
		return salario;
	}

	public void setSalario(float salario) {
		this.salario = salario;
	}
	
	
}

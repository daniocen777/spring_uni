package pe.danielhilario.app.domain;

public class Empleado {
	private String idEmpleado;
	private String nombre;
	private String apPaterno;
	private String apMaterno;
	private String email;
	private String telefono;



	private String fechaNac;
	private float salario;
	
	public Empleado() {
		// TODO Auto-generated constructor stub
	}

	public Empleado(String idEmpleado,String nombre, String apPaterno, String apMaterno, String email, String telefono, String fechaNac,
			float salario) {
		super();
		this.idEmpleado=idEmpleado;
		this.nombre = nombre;
		this.apPaterno = apPaterno;
		this.apMaterno = apMaterno;
		this.email = email;
		this.telefono = telefono;
		this.fechaNac = fechaNac;
		this.salario = salario;
	}

	public String getIdEmpleado() {
		return idEmpleado;
	}

	public void setIdEmpleado(String idEmpleado) {
		this.idEmpleado = idEmpleado;
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

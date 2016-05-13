package pe.danielhilario.app.dao.espec;

import java.util.List;



import pe.danielhilario.app.domain.Empleado;
import pe.danielhilario.app.domain.EmpleadoBean;

public interface EmpleadoDaoEspec {

	public void procInsertarEmpleado(String region, String pais, String calle, String codigoPostal, String ciudad,
			String provincia, String departamento, String nombre, String apPaterno, String apMaterno, String email,
			String telefono, String fechaNac, float salario);

	List<EmpleadoBean> getEmpleados();
	List<Empleado> getEmpleados2();
	void eliminar(int codigo);
	public Empleado obtenerEmpleado(int codigo);
	public Empleado get(int contactId);
	
	
}

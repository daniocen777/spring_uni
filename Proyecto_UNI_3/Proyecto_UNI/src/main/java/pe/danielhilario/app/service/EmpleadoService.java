package pe.danielhilario.app.service;

import org.springframework.beans.factory.annotation.Autowired;

import pe.danielhilario.app.domain.Empleado;
import pe.danielhilario.app.domain.EmpleadoBean;
import org.springframework.stereotype.Service;
import pe.danielhilario.app.dao.espec.EmpleadoDaoEspec;
import java.util.List;
import java.util.ArrayList;

@Service
public class EmpleadoService {

	@Autowired
	private EmpleadoDaoEspec empleadoDaoEspec;

	public void procInsertar(String region, String pais, String calle, String codigoPostal, String ciudad,
			String provincia, String departamento, String nombre, String apPaterno, String apMaterno, String email,
			String telefono, String fechaNac, float salario) {
		empleadoDaoEspec.procInsertarEmpleado(region, pais, calle, codigoPostal, ciudad, provincia, departamento,
				nombre, apPaterno, apMaterno, email, telefono, fechaNac, salario);
	}

	public List<EmpleadoBean> getEmpleados() {
		@SuppressWarnings("unchecked")
		List<EmpleadoBean> listContact = (ArrayList<EmpleadoBean>) empleadoDaoEspec.getEmpleados();
		return listContact;
	}

	public List<Empleado> getEmpleados2() {
		@SuppressWarnings("unchecked")
		List<Empleado> listContact = (ArrayList<Empleado>) empleadoDaoEspec.getEmpleados2();
		return listContact;
	}

	public void eliminarEmpleado(int id) {
		empleadoDaoEspec.eliminar(id);
	}

	public Empleado obtenerEmpleado(int id) {
		empleadoDaoEspec.obtenerEmpleado(id);
		Empleado empleado = empleadoDaoEspec.get(id);
		return empleado;
	}

	public EmpleadoBean getEmpleadoPorId(int idEmpleado) {
		return empleadoDaoEspec.getEmpleadoPorId(idEmpleado);
	}

	public void modificarEmpleado(int codigo, String region, String pais, String calle, String codigoPostal,
			String ciudad, String provincia, String departamento, String nombre, String apPaterno, String apMaterno,
			String email, String telefono, String fechaNac, float salario) {
		empleadoDaoEspec.modificarEmpleado(codigo, region, pais, calle, codigoPostal, ciudad, provincia, departamento,
				nombre, apPaterno, apMaterno, email, telefono, fechaNac, salario);
	}

}

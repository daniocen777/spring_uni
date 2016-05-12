package pe.danielhilario.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import pe.danielhilario.app.domain.EmpleadoBean;
import org.springframework.stereotype.Service;
import pe.danielhilario.app.dao.espec.EmpleadoDaoEspec;
import java.util.List;

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
		return empleadoDaoEspec.getEmpleados();
	}
}

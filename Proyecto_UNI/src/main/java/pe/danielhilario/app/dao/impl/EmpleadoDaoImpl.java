package pe.danielhilario.app.dao.impl;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pe.danielhilario.app.dao.espec.EmpleadoDaoEspec;
import pe.danielhilario.app.domain.EmpleadoBean;

@Repository
public class EmpleadoDaoImpl extends AbstractDao implements EmpleadoDaoEspec {

	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRES_NEW)
	@Override
	public void procInsertarEmpleado(String region, String pais, String calle, String codigoPostal, String ciudad,
			String provincia, String departamento, String nombre, String apPaterno, String apMaterno, String email,
			String telefono, String fechaNac, float salario) {
		// TODO Auto-generated method stub
		String sql = "{call insertar_empleado(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}";
		jdbcTemplate.update(sql, region, pais, calle, codigoPostal, ciudad, provincia, departamento, nombre, apPaterno,
				apMaterno, email, telefono, fechaNac, salario);
	}

	@Override
	public List<EmpleadoBean> getEmpleados() {
		List<EmpleadoBean> lista;
		String sql = "select nombreRegion nombreRegion, nombrePais nombrePais, nombreCalle nombreCalle, codigoPostal codigoPostal, ciudad ciudad, provincia provincia, nombreDepartamento nombreDepartamento, nombre nombre, apPaterno apPaterno, apMaterno apMaterno, email email, telefono telefono, fechaNac fechaNac, salario salario from v_empleados";
		lista = jdbcTemplate.query(sql, new BeanPropertyRowMapper(EmpleadoBean.class));
		return lista;
	}

	// NO ME SALE EL LISTAR TODOS LOS EMPLEADOS, ACÁ TRATÉ DE HACER OTRO
	@Override
	public List<EmpleadoBean> getEmpleados2(EmpleadoBean bean) {
		List<EmpleadoBean> lista;

		return null;
	}

}

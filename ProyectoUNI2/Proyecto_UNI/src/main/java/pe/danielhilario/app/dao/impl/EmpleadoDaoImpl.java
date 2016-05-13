package pe.danielhilario.app.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;



import pe.danielhilario.app.dao.espec.EmpleadoDaoEspec;
import pe.danielhilario.app.domain.Empleado;
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
		String sql = "select idEmpleado idEmpleado, nombreRegion nombreRegion, nombrePais nombrePais, nombreCalle nombreCalle, codigoPostal codigoPostal, ciudad ciudad, provincia provincia, nombreDepartamento nombreDepartamento, nombre nombre, apPaterno apPaterno, apMaterno apMaterno, email email, telefono telefono, fechaNac fechaNac, salario salario from v_empleados2";
		try {
			lista = jdbcTemplate.query(sql, new BeanPropertyRowMapper<EmpleadoBean>(EmpleadoBean.class));
		} catch (Exception e) {
			lista = null;
		}

		return lista;
	}

	// NO ME SALE EL LISTAR TODOS LOS EMPLEADOS, ACÁ TRATÉ DE HACER OTRO
	@Override
	public List<Empleado> getEmpleados2() {
		List<Empleado> lista;
		String sql = "select idEmpleado idEmpleado, nombre nombre, apPaterno apPaterno, apMaterno apMaterno, email email, telefono telefono, fechaNac fechaNac, salario salario from empleado";
		try {
			lista = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Empleado>(Empleado.class));
		} catch (Exception e) {
			lista = null;
		}
		return lista;
	}

	@Override
	public void eliminar(int codigo) {
		String sql= "delete from empleado where idEmpleado="+codigo;
		jdbcTemplate.execute(sql);
		
	}

	@Override
	public Empleado obtenerEmpleado(int codigo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Empleado get(int empId) {
		String sql = "SELECT * FROM Empleado WHERE idEmpleado=" + empId;
		
		return jdbcTemplate.query(sql, new ResultSetExtractor<Empleado>() {
			@Override
			public Empleado extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					Empleado emp = new Empleado();
					emp.setIdEmpleado(rs.getString("idEmpleado"));
					emp.setNombre(rs.getString("nombre"));
					emp.setApPaterno(rs.getString("apPaterno"));
					emp.setApMaterno(rs.getString("apMaterno"));
					emp.setEmail(rs.getString("email"));
					emp.setTelefono(rs.getString("telefono"));
					emp.setSalario(rs.getFloat("salario"));
					return emp;
				}
				return null;
			}
		});
	}
	
	
//	public Contact get(int contactId) {
//		String sql = "SELECT * FROM Contacto WHERE contacto_id=" + contactId;
//		return jdbcTemplate.query(sql, new ResultSetExtractor<Contact>() {
//			@Override
//			public Contact extractData(ResultSet rs) throws SQLException, DataAccessException {
//				if (rs.next()) {
//					Contact contact = new Contact();
//					contact.setId(rs.getString("contacto_id"));
//					contact.setName(rs.getString("nombre"));
//					contact.setApellidoPaterno(rs.getString("ape_pate"));
//					contact.setApellidoMaterno(rs.getString("ape_mate"));
//					contact.setEmail(rs.getString("email"));
//					contact.setAddress(rs.getString("direccion"));
//					contact.setTelephone(rs.getString("telefono"));
//					return contact;
//				}
//				return null;
//			}
//		});
//	}

	
	
	


}

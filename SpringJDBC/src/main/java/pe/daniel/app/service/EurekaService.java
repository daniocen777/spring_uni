package pe.daniel.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.daniel.app.dao.espec.EurekaDaoEspecificacion;
import pe.daniel.app.domain.Cliente;

@Service
public class EurekaService {

	@Autowired
	private EurekaDaoEspecificacion eurekadao;
	
	public double getSaldoCuenta(String cuenta) {
		return eurekadao.getSaldoCuenta(cuenta);
	}
	
	public Cliente getCliente(String codigo) {
		return eurekadao.getCliente2(codigo);
	}
}

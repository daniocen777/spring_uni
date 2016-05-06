package pe.daniel.app.dao.espec;

import pe.daniel.app.domain.Cliente;

public interface EurekaDaoEspecificacion {

	double getSaldoCuenta(String cuenta);

	Cliente getCliente(String codigo);

	Cliente getCliente2(String codigo);
}

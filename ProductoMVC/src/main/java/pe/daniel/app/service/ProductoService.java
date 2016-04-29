package pe.daniel.app.service;

import org.springframework.stereotype.Service;

import pe.daniel.app.model.ProductoBean;

@Service
public class ProductoService {

	public void importeProducto(ProductoBean productoBean) {
		double importe = productoBean.getPrecio() * productoBean.getCantidad();
		double desc = (importe > 1000) ? (0.05 * importe) : 0;
		double totalPago = importe - desc;
		productoBean.setDescuento(desc);
		productoBean.setTotalPago(totalPago);
	}
}

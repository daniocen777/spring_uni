package pe.daniel.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.PropertyOverrideConfigurer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.daniel.app.model.ProductoBean;
import pe.daniel.app.service.ProductoService;

@Controller
public class ProductoController {

	@Autowired
	private ProductoService productoService;
	
	@RequestMapping(value="producto.htm", method=RequestMethod.GET)
	public String calcularImporte(){
		return "productoInput";
	}
	
	@RequestMapping(value = "producto.htm", method = RequestMethod.POST)
	public String calcularImporte(@ModelAttribute ProductoBean productoBean, HttpSession session) {
		List<ProductoBean> lista;
		if (session.getAttribute("lista") == null) {
			lista = new ArrayList<ProductoBean>();
			session.setAttribute("lista", lista);
		}
		productoService.importeProducto(productoBean);
		lista = (List<ProductoBean>) session.getAttribute("lista");
		lista.add(productoBean);
		return "listadoProducto";
	}
}

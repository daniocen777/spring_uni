package pe.danielhilario.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import pe.danielhilario.app.domain.EmpleadoBean;
import pe.danielhilario.app.service.EmpleadoService;

@Controller
public class EmpleadoControleer {

	@Autowired
	private EmpleadoService empleadoService;

	@RequestMapping(value = "insertar.htm", method = RequestMethod.GET)
	public String insCliente() {
		return "insertar";
	}

	@RequestMapping(value = "insertar.htm", method = RequestMethod.POST)
	public String insCliente(@RequestParam("nombreRegion") String region, @RequestParam("nombrePais") String pais,
			@RequestParam("nombreCalle") String calle, @RequestParam("codigoPostal") String codigoPostal,
			@RequestParam("ciudad") String ciudad, @RequestParam("provincia") String provincia,
			@RequestParam("nombreDepartamento") String departamento, @RequestParam("nombre") String nombre,
			@RequestParam("apPaterno") String apPaterno, @RequestParam("apMaterno") String apMaterno,
			@RequestParam("email") String email, @RequestParam("telefono") String telefono,
			@RequestParam("fechaNac") String fechaNac, @RequestParam("salario") float salario, Model model) {
		try {
			empleadoService.procInsertar(region, pais, calle, codigoPostal, ciudad, provincia, departamento, nombre,
					apPaterno, apMaterno, email, telefono, fechaNac, salario);
			model.addAttribute("mensaje", "Todo ok. ");
		} catch (Exception e) {
			model.addAttribute("mensaje", e.getMessage());
		}
		return "salida";
	}
	
	@RequestMapping(value = "listar.htm", method = RequestMethod.GET)
	public String listarCliente() {
		return "listar";
	}
	
	@RequestMapping(value = "listar.htm", method = RequestMethod.POST)
	public String listarCliente(Model model) {
		List<EmpleadoBean> lista;
		lista = empleadoService.getEmpleados();
		model.addAttribute("lista", lista);
		return "listar";
	}
}

package pe.danielhilario.app.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pe.danielhilario.app.domain.Empleado;
import pe.danielhilario.app.domain.EmpleadoBean;
import pe.danielhilario.app.service.EmpleadoService;

@Controller
public class EmpleadoControleer {

	@Autowired
	private EmpleadoService empleadoService;

	
	//@RequestParam("idEmpleado") String idEmpleado,
	@RequestMapping(value = "insertar.htm", method = RequestMethod.GET)
	public String insCliente() {
		return "insertar";
	}

	@RequestMapping(value = "insertar.htm", method = RequestMethod.POST)
	public String insCliente( @RequestParam("nombreRegion") String region, @RequestParam("nombrePais") String pais,
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
		System.out.println("insCliente");
		return "salida";
	}
	
	
	//@RequestParam("idEmpleado") String idEmpleado,
	@RequestMapping(value = "insertars.htm", method = RequestMethod.GET)
	public String insClientePrueba(@RequestParam("idEmpleado") String idEmpleado) {
		return "insertars";
	}
	
	
	
	@RequestMapping(value = "listar.htm", method = RequestMethod.GET)
	public ModelAndView listarCliente(ModelAndView model) throws IOException{
		List<EmpleadoBean> lista;
		lista = empleadoService.getEmpleados();
		 model.addObject("lista", lista);
		 model.setViewName("listar");
		return model;
	}
	
	
	@RequestMapping(value = "/eliminarEmpleado", method = RequestMethod.GET)
	public ModelAndView deleteContact(HttpServletRequest request) {
		int empId = Integer.parseInt(request.getParameter("id"));
		empleadoService.eliminarEmpleado(empId);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value = "/editContact", method = RequestMethod.GET)
	public ModelAndView editarEmpleado(HttpServletRequest request) {
		int empId = Integer.parseInt(request.getParameter("id"));
		Empleado empleado = empleadoService.obtenerEmpleado(empId);
		ModelAndView model = new ModelAndView("contacto/contacto");
		model.addObject("empleado", empleado);
		return model;
	}

	
	
	
}

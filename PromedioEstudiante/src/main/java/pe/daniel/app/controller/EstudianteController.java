package pe.daniel.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pe.daniel.app.modelo.EstudianteBean;
import pe.daniel.app.services.EstudianteService;

@Controller
public class EstudianteController {

	@Autowired
	private EstudianteService estudianteService;

	@RequestMapping(value = "promedio.htm", method = RequestMethod.GET)
	public String calcularPromedio() {
		return "estudianteInput";
	}

	@RequestMapping(value = "promedio.htm", method = RequestMethod.POST)
	public ModelAndView calcularPromedio(EstudianteBean estudianteBean) {
		// VISTA
		ModelAndView view = new ModelAndView("estudianteOutput");
		// PROCESO
		int n1 = estudianteBean.getNota1();
		int n2 = estudianteBean.getNota2();
		int n3 = estudianteBean.getNota3();
		int n4 = estudianteBean.getNota4();
		String nom = estudianteBean.getNombre();
		if ((n1 < 0 || n1 > 20) || (n2 < 0 || n2 > 20) || (n3 < 0 || n3 > 20) || (n4 < 0 || n4 > 20)) {
			throw new RuntimeException("Error Mensaje");
		}
		if (nom.length() > 5) {
			throw new Error("Error nombre");
		}
		estudianteService.calcularPromedio(estudianteBean);
		// SALIDA
		view.addObject("estudianteBean", estudianteBean);

		return view;
	}

	// ERROR DE NOTAS
	@ExceptionHandler(RuntimeException.class)
	public String errorNotas() {
		return "errorNota";
	}

	// ERROR DE LÍMITE DE CARACTERES DE NOMBRE
	@ExceptionHandler(Error.class)
	public String errorNombre() {
		return "errorNombre";
	}

	// PARA UN LISTADO
	@RequestMapping(value = "promediO2.htm", method = RequestMethod.GET)
	public String calcularPromedio2() {
		return "listadoEstudiante";
	}

	@RequestMapping(value = "promedio2.htm", method = RequestMethod.POST)
	public String calcularPromedio2(@ModelAttribute EstudianteBean estudianteBean, HttpSession session) {
		List<EstudianteBean> lista;
		if (session.getAttribute("lista") == null) {
			lista = new ArrayList<EstudianteBean>();
			session.setAttribute("lista", lista);
		}
		estudianteService.calcularPromedio(estudianteBean);
		lista = (List<EstudianteBean>) session.getAttribute("lista");
		lista.add(estudianteBean);
		return "listadoEstudiante";
	}

}

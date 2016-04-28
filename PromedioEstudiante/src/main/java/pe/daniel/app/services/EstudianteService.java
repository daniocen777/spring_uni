package pe.daniel.app.services;

import org.springframework.stereotype.Service;

import pe.daniel.app.modelo.EstudianteBean;

@Service
public class EstudianteService {

	public void calcularPromedio(EstudianteBean estudianteBean) {
		int promedio = (estudianteBean.getNota1() + estudianteBean.getNota2() + estudianteBean.getNota3()
				+ estudianteBean.getNota4()) / 4;
		String cond = (promedio >= 14) ? "Aprobado" : "Desaprobado";
		estudianteBean.setPromedio(promedio);
		estudianteBean.setCondicion(cond);
	}

}

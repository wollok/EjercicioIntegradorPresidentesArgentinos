object pais {
	const presidentes = []
	
	method mejorImagenPositiva() = self.presidenteMejorImagen().imagenPositiva()
	
	method presidenteMejorImagen() = presidentes.max(
		{ presidente => presidente.imagenPositiva() }
	)
	
	method presidenteMasdeCuatroActos() = presidentes.any(
		{ presidente => presidente.cantidadActos() >= 4 }
	)
	
	method agregarPresidente(presidente) {
		presidentes.add(presidente)
	}
}

class Presidente {
	const tiempoDeMuerte
	const actos = []
	
	method agregarActo(acto) {
		actos.add(acto)
	}
	
	method imagenPositiva() = actos.sum(
		{ acto => acto.impacto() }
	) * self.porcentajeMuerte()
	
	method porcentajeMuerte() = 1 + (tiempoDeMuerte / 100)
	
	method cumplirPromesas() {
		actos.forEach({ acto => acto.cumplir() })
	}
	
	method cantidadActos() = actos.size()
	
	method todasPromesasCumplidas() = actos.all({ acto => acto.cumplida() })
}

class Acto {
	const personas
	const importancia
	
	method impacto() = personas * importancia //	method impacto()
	
	method cumplir() {
		
	}
	
	method cumplida() = true //	method coeficienteImpacto()
}

class Obra inherits Acto {
	const porcentual
	
	override method impacto() = super() * ((porcentual / 100) + 1)
}

class Discurso inherits Acto {
	const intensidad
	
	override method impacto() = super() * intensidad
	//	override method coeficienteImpacto() = intensidad 
}

class Promesa inherits Discurso {
	var cumplida
	
	override method impacto() = super() * if (cumplida) 2
	                                      else -2
	                                      	//	override method coeficienteImpacto() = if (cumplida) 2 else -2
	
	override method cumplir() {
		cumplida = true
	}
	
	override method cumplida() = cumplida
}

class Denuncia inherits Acto {
	var property denunciante
	
	override method impacto() = super() * denunciante.importancia(personas)
	//	override method coeficienteImpacto() = denunciante.importancia(personas)
}

class Politico {
	const seguidores
	
	method importancia(audiencia) = seguidores.min(audiencia)
}

class Periodista {
	method importancia(personas) = personas / 2
}
object pais{
	var presidentes= []
	
	method mejorImagenPositiva() 
		= self.presidenteMejorImagen().imagenPositiva()

	method presidenteMejorImagen()
		= presidentes.max{presi => presi.imagenPositiva()}
	
	method presidenteMasdeCuatroActos()
		= presidentes.any{p=> (p.cantidadActos() >=4)}

	method agregarPresidente(presidente){
		presidentes.add(presidente)
	}
}
class Presidente {
	var tiempoDeMuerte
	var actos= []
	
	constructor (tiempo,acto){
		tiempoDeMuerte = tiempo
		actos = acto
	}
	method agregarActo(acto){
		actos.add(acto)
	}
	
	method imagenPositiva() 
		= actos.sum{a=> a.impacto()} * self.porcentajeMuerte()
	
	method porcentajeMuerte()
		= 1 + (tiempoDeMuerte /100)
	
	method cumplirPromesas(){
		 actos.forEach({a=> a.cumplir() })
	}
	
	method cantidadActos() = actos.size()
	method todasPromesasCumplidas()
		= actos.all{a => a.cumplida()}
	
		
}
class Acto {
	var personas
	var importancia
	constructor(_personas,_importancia){
		personas = _personas
		importancia = _importancia
	}
	method impacto()
		= personas*importancia

//	method impacto()
//		= personas*importancia*self.coeficienteImpacto()
	
	method cumplir(){}
	
	method cumplida() = true
	
//	method coeficienteImpacto()
}

class Obra inherits Acto{
	var porcentual
	
	constructor(personasAfectadas,importancia,_porcentual) 
		= super(personasAfectadas,importancia){
			porcentual  = _porcentual
	}
	override method impacto() 
		= super() * (porcentual/100 + 1)
//	override method coeficienteImpacto() = (porcentual/100 + 1) 
}

class Discurso inherits Acto {
	var intesidad
	
	constructor(personasAfectadas,importancia,_intesidad) 
		= super(personasAfectadas,importancia){
			intesidad = _intesidad
	}
	override method impacto() 
		= super() * intesidad
//	override method coeficienteImpacto() = intensidad 
}
class Promesa inherits Discurso {
	var cumplida
	constructor(personasAfectadas,importancia,intesidad,_cumplida)
		= super(personasAfectadas,importancia,intesidad){
			cumplida = _cumplida
	}
	override method impacto()
		= super() * if (cumplida) 2 else -2

//	override method coeficienteImpacto() = if (cumplida) 2 else -2

	override method cumplir() {	cumplida = true	}
	override method cumplida() = cumplida
	
}
class Denuncia inherits Acto{
	var denunciante
	constructor(personas,importancia,_denunciante) 
		= super(personas,importancia){
		denunciante = _denunciante
	}
	method denunciante(_denunciante) {denunciante = _denunciante}
	
	override method impacto()
		= super() * denunciante.importancia(personas)

//	override method coeficienteImpacto() = denunciante.importancia(personas)
}

class Politico {
	var seguidores
	constructor (_seguidores){
		seguidores = _seguidores
	}
	method importancia(audiencia)
		= seguidores.min(audiencia)
}

class Periodista {
	method importancia(personas)
		 = personas/2
}



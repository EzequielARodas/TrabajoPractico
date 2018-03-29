/** First Wollok example */
object rolando {
	
	var artefactos=#{}
	var luchaBase=3
	var hechiceriaBase=1
	
	var luchaTotal=luchaBase
	var hechiceriaTotal=hechiceriaBase
	
	method valorHechiceria(){
		return hechiceriaTotal
	}
	
	method valorLucha(){
		return luchaTotal
	}
	
	method luchaBase(){ return luchaBase}//para uso de artefactos que lo requieran
	
	method hechiceriaBase(){ return hechiceriaBase} //para uso de artefactos que lo requieran
	
	method incrementarLucha() { luchaTotal+=1}
	
	method incrementarHechiceria(){hechiceriaTotal += 1 }
	
	method obtener(_artefacto){
		artefactos.add(_artefacto) //Agrega un artefacto al set de artefactosEquipados
		_artefacto.sumarPuntosA(self)
	}
	
	method artefactosEquipados(){
		//Muestra los artefactos que posee equipados
		return artefactos
	}
	
	method incrementarLucha(_puntosDeLucha){
		luchaTotal+=_puntosDeLucha
	}
	
	method incrementarHechiceria(_puntosDeHechiceria){
		hechiceriaTotal += _puntosDeHechiceria
	}
}


object espadaDelDestino{
	
	method sumarPuntosA(_capo){
		_capo.incrementarLucha(3)
		
		/*si no debira de mandar 
		 * _capo.incrementarLucha()
		 * _capo.incrementarLucha()
		 * _capo.incrementarLucha()
		 */
	}
}


object libroDeHechizos{
	/*en la guia del tp dice 
	 * 			"Libro de hechizos otorga los mismos puntos de hechiceria que su hechiceria base" entiendo
	 * 			suma uno solo. Pero en el ejemplo dice 2 + (1 + 2)=5
	 * 			Para mi que libroDeHechizos o bien:
	 * 												suma siempre 1 (hechiceria Base)
	 * 												o bien suma lo mismo que tiene hasta el momento de encontrar el 
	 * 													libro de hechizos
	 */
		method sumarPuntosA(_capo){
		_capo.incrementarHechiceria(_capo.hechiceriaBase())
	}
	
}


object collarDivino{
	
	method sumarPuntosA(_capo){
		_capo.incrementarLucha()
		_capo.incrementarHechiceria()
	}
}
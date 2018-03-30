
object rolando {
	
var lucha = 3
var hechiceria = 1
var artefactos = []


	/*Incrementa el valor de lucha de rolando en 1 */
	method incrementarValorBaseDeLucha() = lucha++
	
	
	/*Incrementa el valor de hechiceria  de rolando en 1 */
	method incrementarValorBaseDeHechiceria() = hechiceria++
	
	
	/*Agrega un artefacto a la bolsa de rolando */
	method obtenerUnArtefacto(_artefacto) = artefactos.add(_artefacto)
	
	/*Retorna todos los artefactos reunidos por rolando*/
	method artefactosReunidos() = return artefactos
	
	/*Retorna el valor base de lucha de rolando */
	method vaLorBaseLucha()= return lucha
	
	
	/*Retorna el valor base de hechiceria de rolando */
	method valorBaseHechiceria() = return hechiceria
	
	
	/*Retorna la sumatoria de valor de lucha que otorga los artefactos */
	method valorLuchaArtefactos()=artefactos.sum({artefacto =>  artefacto.puntosDeLucha()})

	
	/*Retorna la sumatoria de valor de hechiceria que otorga los artefactos */
	method valorHechiceriaArtefactos()=artefactos.sum({artefacto =>  artefacto.puntosDeHechiceria(self)})
	
	
	/*Retorna el valor total de lucha  de rolando  el cual esta compuesto por el 
	 * valor base y el valor que le da los artefactos equipados*/
	method valorLucha() = return lucha + self.valorLuchaArtefactos()
	
	
	/*Retorna el valor total de hechiceria  de rolando  el cual esta compuesto por el 
	 * valor base y el valor que le da los artefactos equipados*/
	method valorHechiceria() = return hechiceria + self.valorHechiceriaArtefactos()
	
	
}
//-----------------------------------------------------------------------------------------------------------
object espadaDelDestino{
	
	/*Retorna los puntos de lucha que da este artefacto*/
	method puntosDeLucha()= return 3
	/*Retorna los puntos de hechiceria que da este artefacto */
	method puntosDeHechiceria(capo) = return 0
}
//----------------------------------------------------------------------------------------------------------
object libroDeHechizos{
	
	/*Retorna los puntos de lucha que da este artefacto*/
	method puntosDeHechiceria(capo) = return capo.valorBaseHechiceria()
	/*Retorna los puntos de hechiceria que da este artefacto*/
	method puntosDeLucha()= return 0 
}

//-----------------------------------------------------------------------------------------------------------
 object collarDivino{
 	
 	/*Retorna los puntos de lucha que da este artefacto*/
 	method puntosDeLucha()= return 1
 	/*Retorna los puntos de hechiceria que da este artefacto*/
 	method puntosDeHechiceria(capo) = return 1
 }
object burns {
//	var tipo = atomica
	var  property cantidadDeVarillas =10
	
	method produccionEnergetica(ciudad){
		return 0.1 * cantidadDeVarillas // 0.1 millones
	}
	
   method contaminacion(){
		return cantidadDeVarillas > 20 
	}
}

object ex_bosque{ // carbon
	var capasidad = 10 // ton 
	
	method produccionEnergetica(ciudad){
		 return 0.5 + capasidad * ciudad.riquesaDelSuelo()
	}
	method contaminacion(){
	 return true	
	}
		
}

object suspiro{//eolica
 var turbinas= #{turbinaUno}
     method produccionEnergetica(ciudad){	
	 return turbinas.sum({turbina => turbina.produccion(ciudad)})
	}	
	
	method contaminacion(){
		return false
	}
}

object turbinaUno{
	method produccion(ciudad){
		return 0.2 * ciudad.velocidadViento()
	}
	
}
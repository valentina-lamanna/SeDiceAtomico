object burns {
//	var tipo = atomica
	var  property cantidadDeVarillas 
	
	method produccionEnergetica(){
		return 0.1 * cantidadDeVarillas // 0.1 millones
	}
	
   method contaminacion(){
		return cantidadDeVarillas > 20 
	}
}

object ex_bosque{ // carbon
	var capasidad // ton 
	
	method contaminacion(){
	 return true	
	}
		
}

object suspiro{//eolica

 //var turbinas= #{uno}

	
	
	method contaminacion(){
		return false
	}
	
	
}
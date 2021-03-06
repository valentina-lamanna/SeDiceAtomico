import Centrales.*
object springfield{
	const  property riquesaDelSuelo=0.9
	const  velocidadViento = 10 // m/s
	const necesidadDeSuministro = 55
	const centrales =#{ burns,ex_bosque, suspiro}
     
    method cubrioNecesidades(){
    	return (necesidadDeSuministro < self.energiaCubierta())
    }
    
    method energiaCubierta(){
     return centrales.sum({central => central.produccionEnergetica(self)}) 	
    }
    
    method velocidadViento(){
    	return velocidadViento
    }
     method estaAlHorno(){
    return centrales.all({central => central.contaminacion()}) || 
    centrales.filter({central => central.contaminacion()}).any({central => central.produccionEnergetica(self) > necesidadDeSuministro * 0.5})
   } 

}

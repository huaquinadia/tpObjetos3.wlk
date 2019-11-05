import claseLocalidad.*
import claseTransporte.*

class Viajes{
	var localidadDeOrigen
	var localidadDeDestino
	var transporte 
	
	method distanciaDeViaje(){
	return ((localidadDeOrigen.kilometroDeParada()- localidadDeDestino.kilometroDeParada()).abs())
	}
	
    method precioTransporte(){
    	return self.distanciaDeViaje() * transporte.precioPorKilometro()
    }
    
    method precioTotal(){
  return  localidadDeDestino.precio() + self.precioTransporte()
	}
	 method localidadDeDestino(){
	 	return localidadDeDestino
	 }
	
	}
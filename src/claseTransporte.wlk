import instancias.*
import claseUsuario.*
import barrileteCosmico.*

class Avion{
	var cuantoTarda
	var cantidadDeTurbinas
	var niveleDeImpulso
	var importeDeTransporte
	
	method precioPorKilometro(){
		return cantidadDeTurbinas*niveleDeImpulso
	}
	method cuantoTarda(){
		return cuantoTarda
	}
	method precioTransporte(kilometros){
		return return importeDeTransporte.costeoDeTransporte(self,kilometros)
	}
	
	}

class Micro{
var precioPorKilometro = 5000
var cuantoTarda
var importeDeTransporte

method cuantoTarda(){
		 	return cuantoTarda
		  } 
method precioPorKilometro(){
	return precioPorKilometro
		  }
 
method precioTransporte(kilometros){
	return importeDeTransporte.costeoDeTransporte(self,kilometros)
	      }
	}
	
class Barco{
var probalicidadDeChoque
var cuantoTarda
var importeDeTransporte

method importeDeTransporte(){
	return importeDeTransporte
}
method precioPorKilometro(){
			return  probalicidadDeChoque*1000
		   }
		   
method cuantoTarda(){
			return cuantoTarda
		   }

method  precioTransporte(kilometros){
	return importeDeTransporte.costeoDeTransporte(self,kilometros)
		   }

	}

class Tren{
var precioPorMilla
var cuantoTarda
var importeDeTransporte
method precioPorKilometro(){
			return  precioPorMilla/1.6
		  }
method cuantoTarda(){
			return cuantoTarda
		}
method precioTransporte(kilometros){
     return importeDeTransporte.costeoDeTransporte(self,kilometros)
		   }
method importeDeTransporte(){
	return importeDeTransporte
}     
}
	
class PrecioTransporte{
	
method costeoDeTransporte(transporte,kilometros){
	return  transporte.precioPorKilometro()* kilometros
		}
}


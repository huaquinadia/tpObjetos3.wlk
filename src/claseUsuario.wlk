import barrileteCosmico.*
import instancias.*
import claseTransporte.*

class Usuario{
const nombre =""
const  usuario =""
const viajes = #{}
var dinero
const listaDeUsuariosQueSigue =#{}
var localidadDeOrigen
var perfil 
	
method  lugaresVisitados(){
	 return  viajes
     }
     
 method dinero (){
 	return dinero
 }
  method ususario (){
  	return usuario
  }
 	
 method nombre (){
 	return nombre
 }

 method viajar(unViaje){
      if(dinero < unViaje.precioTotal()) {
      throw new NoPuedeViajarException(message = "No le alcanza el dinero")}
	   viajes.add(unViaje.localidadDeDestino())
	  dinero = dinero -  unViaje.precioTotal()
	  localidadDeOrigen = unViaje.localidadDeDestino()
	       
    }
	
method sumaDeLosViajesQueRealizo(){
	   return viajes.sum({ viaje=> viaje.precioTotal()})
	}

 method millas(localidadActual){
 return viajes.sum({destino => destino.distanciaHacia(localidadActual)})
  }
  
  
  
  method seguirUsuario(alguien){
	listaDeUsuariosQueSigue.add(alguien)
	}
 
  method listaDeUsuariosQueSigue(){
	return listaDeUsuariosQueSigue
	}
	
method localidadDeOrigen(){
	return localidadDeOrigen
	}
	method perfil(){return perfil}
	
method transporteCorrespondiente(unaAgencia){
	return perfil.elegirTransporte(unaAgencia)
}

}



class UsuarioEmpresarial{
method elegirTransporte(unaAgencia){
	return unaAgencia.transportes().min({transporte=>transporte.cuantoTarda()}) 
	 }
}

class UsuarioEstudiantil{
	var presupuestoParaTransporte
	var kilometros 
method esBarato(trasnporte){
	return	trasnporte.precioTransporte(kilometros) <= (presupuestoParaTransporte)
	}
	
method transportesBaratos(unaAgencia){
	return unaAgencia.transportes().filter({transporte =>self.esBarato(transporte)})
	}

method elegirTransporte(unaAgencia){
	return (self.transportesBaratos(unaAgencia)).min({transporte=>transporte.cuantoTarda()})
      }
} 

class UsuarioGrupoFamiliar{
	method elegirTransporte(unaAgencia){
		return unaAgencia.transportes().anyOne()
	}
}


class NoPuedeViajarException inherits Exception {}

import claseTransporte.*
import claseViaje.*
import claseLocalidad.*
import claseUsuario.*
import instancias.*

	
object barrileteCosmico{
var destinos  = #{ garlicsSea , goodAirs, lasToninas, silversSea}
var transportes = #{tren,bus1,avionRios,avionAirs, BarcoPinta1}
var inicioDeViaje
var lugarDeLlegada

method agregarviaje(unDestino){
	destinos.add(unDestino)
    }

method destinosMasImportantes(){
	return destinos.filter({localidad => localidad.destinoDestacado()})
	}
method transportes(){
	return transportes
}
method aplicarDescuentoAlViaje(descuento){
    destinos.forEach({localidad => localidad.aplicarDescuento(descuento)})
    }

method esUnaEmpresaExtrema(){
    return self.destinosMasImportantes().any({localidad => localidad.esPeligroso()})
  }
  
 method transportealAzar(){
 	return transportes.anyOne()
 }
 

method destinos(){
   return destinos
     }
 method armarViaje(localidad1,localidad2,transporte){
 return  new Viajes(
 localidadDeOrigen = localidad1 ,
 localidadDeDestino = localidad2,
 transporte = transporte)
 }
 
 }
 





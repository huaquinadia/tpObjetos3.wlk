import instancias.*
class Localidad{
	const nombre =""
	const equipajeimprescindible = #{}
	var precio
	var kilometroDeParada = 0


method kilometroDeParada(){
	return kilometroDeParada
}

method distanciaHacia(localidad){
 return (kilometroDeParada - localidad.kilometroDeParada()).abs()
}

method nombre (){
	return nombre
      }
      
method precio (){ 
	return precio
    }
     
method equipajeimprescindible (){
	return equipajeimprescindible
    }

method destinoDestacado(){
	return precio > 2000}

method aplicarDescuento(descuento){
	 precio = precio - ((precio * descuento)/100)
	equipajeimprescindible.add('Certificado de descuento')}

method esPeligroso(){
    	return equipajeimprescindible.any({equipaje => equipaje.contains('vacuna ')})
       }
 }
       
       
       
 class Montanias inherits Localidad{
 var alturamontanias
 	
 method alturaMontanias(){
 		return alturamontanias
 	}
 override method destinoDestacado(){
 		return true
 	}
 override method esPeligroso(){
 return equipajeimprescindible.any({equipaje => equipaje.contains('vacuna ')})
          || alturamontanias > 5000
 	    }
 }
 

 class Playa inherits Localidad{
 	override method esPeligroso(){
 		return false
 	}
 }
 
 
 class CiudadesHistoricas inherits Localidad{
 	var cantDeMuseos
 	override method destinoDestacado(){
 		return precio > 2000 && cantDeMuseos >=3
 	}
 	override method esPeligroso(){
 	return equipajeimprescindible.contains('Seguro de asistencia al viajero ')
 	}
 }
import claseTransporte.*
import claseViaje.*
import claseLocalidad.*
import claseUsuario.*






const lasToninas = new Montanias(
nombre ='las toninas',
equipajeimprescindible = #{'vacuna gripal','vacuna B','necronomicon'},
precio = 3500,
kilometroDeParada = 100,
alturamontanias = 4300)

const goodAirs = new CiudadesHistoricas(
nombre = 'Good Airs',
equipajeimprescindible = #{'cerveza','protector solar'},
 precio = 1500,
 kilometroDeParada= 20,
 cantDeMuseos= 4)
   


const garlicsSea = new Playa(
nombre  = 'Garlic´s Sea',
equipajeimprescindible = #{'caniaDePescar','piloto','Seguro de asistencia al viajero '},
precio = 2500,
kilometroDeParada= 80
)

const silversSea = new Montanias(
nombre = 'Silver´s Sea',
equipajeimprescindible = #{'protector solar','equipo de buceo'},
precio = 1350,
kilometroDeParada = 40,
alturamontanias = 5400
)

const empresarial= new UsuarioEmpresarial()

const grupoFamiliar=new UsuarioGrupoFamiliar()

const estudiantil =  new UsuarioEstudiantil(
	presupuestoParaTransporte = 10000,
	kilometros = 10
)


const pabloHari = new Usuario(
nombre = 'pablo Hari',
usuario = "PHari",
viajes = #{},
dinero = 100000,
listaDeUsuariosQueSigue = #{},
localidadDeOrigen = goodAirs,
perfil= grupoFamiliar
)

const lucia = new Usuario(
	nombre = "Lucia Gomez",
	usuario = "Ugomez",
	viajes = #{goodAirs},
	dinero= 80000,
	listaDeUsuariosQueSigue = #{},
localidadDeOrigen = lasToninas,
	perfil = estudiantil
)

const gaston = new Usuario(
	nombre = "Gaston Mendez ",
	usuario = "Gmendez",
	viajes = #{ silversSea},
	dinero= 9000,
	listaDeUsuariosQueSigue = #{},
localidadDeOrigen = goodAirs,
	perfil = empresarial
)

const precioDeTranporte= new PrecioTransporte()

const tren = new Tren(
	cuantoTarda = 35,
	precioPorMilla = 1200,
	importeDeTransporte = precioDeTranporte
)
const  bus1 = new Micro(
	cuantoTarda = 50,
	importeDeTransporte = precioDeTranporte
)

const avionAirs = new Avion(
	cuantoTarda = 25,
	cantidadDeTurbinas = 4,
	 niveleDeImpulso = 30,
	 importeDeTransporte = precioDeTranporte
)

const avionRios= new Avion(
	cuantoTarda = 36,
	cantidadDeTurbinas = 2,
	 niveleDeImpulso = 50,
	 importeDeTransporte = precioDeTranporte

)

const BarcoPinta1= new Barco(
 probalicidadDeChoque = 20,
 cuantoTarda = 50,
importeDeTransporte = precioDeTranporte
)

const viajeAlasMontanias= new Viajes(
	localidadDeOrigen = lasToninas,
	localidadDeDestino = silversSea,
	transporte = tren)

const viajeAunaCiudadHistorica = new Viajes(
	localidadDeOrigen = lasToninas,
	localidadDeDestino = goodAirs,
	transporte = avionAirs)

const viajeAlaPlaya = new Viajes(
	localidadDeOrigen = silversSea,
	localidadDeDestino = garlicsSea ,
	transporte = avionRios
)
const precioTransporte = new PrecioTransporte()
 
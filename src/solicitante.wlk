import profesionales.*
import empresa.*
class Solicitante{
	method puedeSerAtendido(profesionales)
}

class Persona inherits Solicitante{
	var property provinciaEnLaQueVive
	
	override method puedeSerAtendido(profesionales){return profesionales.provinciasDondePuedeTrabajar().contains(provinciaEnLaQueVive)}
}

class Institucion inherits Solicitante{
	var property universidades=[]
	
	override method puedeSerAtendido(profesionales){return universidades.asSet().contains(profesionales.universidad())}
}

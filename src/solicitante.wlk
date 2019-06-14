import profesionales.*
import empresa.*

class Personas{
	var property provinciaEnLaQueVive
	
	method puedeSerAtendido(profesionales){profesionales.provinciasDondePuedeTrabajar().intersection(self.provinciaEnLaQueVive())}
}

class Instituciones{
	var property universidades=[]
	
	method puedeSerAtendido(){}
}

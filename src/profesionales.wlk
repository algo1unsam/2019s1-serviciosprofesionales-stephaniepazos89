// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var universidad
	var property asociacion=asociadoDeProfesionalesDelLitoral
	var property acumDinero
	
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
	
	method cobrar(importe){
		asociacion.totalRecaudado(importe)
		acumDinero=acumDinero+importe
		
	}
	
}

object asociadoDeProfesionalesDelLitoral{
	var property total
	
	method totalRecaudado(importe){
		total=+importe
	}
	
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	var property acumDinero
	
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar(){return universidad.provincias()}
	method honorariosPorHora(){return universidad.honorariosRecomendados()}
	
	method cobrar(importe){
		universidad.donaciones(importe/2)
		acumDinero=acumDinero+importe
}
	
	
}

// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	var property provinciasDondePuedeTrabajar
	var property honorariosPorHora
	var property acumtotalrecaudado

	
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method cobrar(importe){
		acumtotalrecaudado=acumtotalrecaudado+importe
	}
	method pasarUnaCantidad(profesional,importe){
		profesional.cobrar(importe)
		acumtotalrecaudado=acumtotalrecaudado-importe
		
	}
	
}

class Universidad{
	var property provincias=#{}
	var property honorariosRecomendados
	var property importe
	
//recordar, estudiar
	method donaciones(capital){
		importe= importe + capital
	}
	
	
	
	
	
	
	
}
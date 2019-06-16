import profesionales.*
import solicitante.*

class Empresa {
	var property profesionales=[]	
	var property honorarioDeRef
	var property clientes=[]
	var property registro=[]
	
	
	method contratarProfesional(profesional){profesionales.add(profesional)}
	
	method cantidad(universidad){return (profesionales.filter{prof=>prof.universidad()==universidad}).size() }
	method profesionalesCaros(){return profesionales.filter{c=>c.honorariosPorHora()>self.honorarioDeRef()}}
	method universidadesFormadoras(){return profesionales.map{uni=>uni.universidad()}.asSet()}
	method profesionalMasBarato(){return profesionales.min{c=>c.honorariosPorHora()}}
	method genteAcotada(){return profesionales.all{provincia=>provincia.provinciasDondePuedeTrabajar().size()<=3}}
	
	//method puedeSatisfacerUnSolicitante(solicitante){return solicitante.any{profesional=>solicitante.puedeSerAtendido(profesional)}
		
	//}	
	
	method darServicio(solicitante,profesional){
		if(solicitante.puedeSerAtendido(profesional)){
			registro.add(solicitante)
			profesional.honorariosPorHora()
			clientes.add(solicitante)
			
		}else{
			self.error("No puede ser atendido")
		}
	}
	method cuantosClientesTiene(){
		return clientes.size()
	}
	
	method EsCliente(solicitante){
		return clientes.contains(solicitante)
	}
	
	
}

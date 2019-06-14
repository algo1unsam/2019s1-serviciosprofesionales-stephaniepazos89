import profesionales.*
import solicitante.*

class Empresa {
	var property profesionales=[]	
	var property honorarioDeRef
	
	method contratarProfesional(profesional){profesionales.add(profesional)}
	
	method cantidad(universidad){return (profesionales.filter{prof=>prof.universidad()==universidad}).size() }
	method profesionalesCaros(){return profesionales.filter{c=>c.honorariosPorHora()>self.honorarioDeRef()}}
	method universidadesFormadoras(){return profesionales.map{uni=>uni.universidad()}.asSet()}
	method profesionalMasBarato(){return profesionales.min{c=>c.honorariosPorHora()}}
	method genteAcotada(){return profesionales.all{provincia=>provincia.provinciasDondePuedeTrabajar().size()<=3}}
	
	method puedeSatisfacerUnSolicitante(){}	
	
	
}

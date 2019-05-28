class Plaga {
	var property poblacion	
	method transmiteEnfermedades() { return poblacion >= 10 }
	method atacar(elemento) {
		poblacion=poblacion +poblacion *0.1
		elemento.esAtacado()
	}
}

class Cucarachas inherits Plaga {
	var property pesoPromedio
	method nivelDanio() { return poblacion / 2 }
	override method transmiteEnfermedades() { return super() && pesoPromedio >= 10 }
	override method atacar(elemento){
		pesoPromedio+=2
		super(elemento)
	}
}

class Pulgas inherits Plaga{
	method nivelDanio(){return poblacion*2}
	override method atacar(elemento){
		
		
	}
}

class Garrapatas inherits Pulgas{
	override method atacar(elemento){
	poblacion=poblacion +poblacion *0.2
	elemento.esAtacado()
	}
}

class Mosquitos inherits Plaga{
	method nivelDanio(){return poblacion}
	override method transmiteEnfermedades(){return poblacion % 3 == 0}
}
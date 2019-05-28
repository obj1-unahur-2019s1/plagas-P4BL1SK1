import Plagas.*
class Hogar{
	var property nivelMugre
	var property confort
	
	method esBueno(){
		return (nivelMugre/2)<=confort
	}
		method esAtacado(plaga){ nivelMugre+=plaga.nivelDAnio()}
}


class Huerta{
	var property capacidadProd=0
	
	method esBueno(){return capacidadProd>configuracionHuerta.nivelActual()}	
	method esAtacado(plaga){capacidadProd-=plaga.nivelDanio()*0.1
		if(plaga.transmiteEnfermedades()){capacidadProd-=10}
	}
}
object configuracionHuerta {
	var property nivelActual = 300;
}

class Mascota{
	var property nivelSalud
	method esBueno(){return nivelSalud>250}
	method esAtacado(plaga){
		if(plaga.transmiteEnfermedades()){
			nivelSalud-=plaga.nivelDanio()
		}
		else{}
	}
}

class Barrio{
	var elementos=[]
	method elementosBuenos(){return elementos.filter{elemento=>elemento.esBueno()}}
	method elementosNoBuenos(){return elementos.filter{elemento=>not elemento.esBueno()}}
	method esCopado(){return self.elementosBuenos().size()>self.elementosNoBuenos().size()}
	
}

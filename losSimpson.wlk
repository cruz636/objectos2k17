object plantaNuclear{
	var barrasDeUranio
	var empleado = homero
	var jefe = mrBurns
	
	method empleado()=empleado
	method empleado(_empleado){empleado = _empleado}
	method cargamento(_barras){barrasDeUranio = _barras}
	
	
	method estaEnPeligro(){
		if ((barrasDeUranio > 10000) && empleado.estaDistraido() or jefe.estaPobre()){
			return "En peligro"
		}else{return "No esta en peligro"}
	}

}

object mrBurns{
	var millonario = "si"
	
	method millonario()=millonario
	
	method estaPobre()= self.millonario() == "no"
	
	method perderFortuna(){millonario = "no"}
}

object homero{
	var donas = 0
	
	method donas()=donas
	method estaDistraido()= self.donas() < 2
	
	method comer(){ donas -= 1}
	
	method comprar(){donas += 12}
	
}

object pato{
	method estaDistraido()=false
}

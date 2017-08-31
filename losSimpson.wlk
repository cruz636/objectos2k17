object plantaNuclear{
	var barrasDeUranio
	var empleado = homero
	var jefe = mrBurns
	
	method empleado()=empleado
	method empleado(_empleado){empleado = _empleado}
	method cargamento(_barras){barrasDeUranio = _barras}
	
	
	method estaEnPeligro()= barrasDeUranio > 10000 && empleado.estaDistraido() or jefe.estaPobre()
	

}

object mrBurns{
	var millonario = True
	
	method millonario()=millonario
	
	method estaPobre()= self.millonario() 
	
	method perderFortuna(){millonario = False}
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

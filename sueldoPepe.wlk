object pepe{
	var sueldo
	var cargo
	var bonoDeFaltas
	var bono
	var faltas
	
	method cargo(_cargo){cargo = _cargo}
	method bonoDeFaltas(_bonoFaltas){bonoDeFaltas = _bonoFaltas}
	method bono(_bono){bono = _bono	}
	method faltas(_faltas){faltas = _faltas}	
	
	
	method calcularSueldo(){
		sueldo = cargo.neto() + bonoDeFaltas.neto(faltas) + bono.resultado(cargo.neto())
		return sueldo
	}
}

object cadete{
	var neto=1500
	method neto()= neto
}

object gerente{
	var neto = 1000
	method neto()=neto

}

object bonoFaltas{
	method neto(faltas)= 100 -  faltas * 10
}

object bonoPresentismo{
	method neto(faltas)= 100
	
}

object bonoUno{
	method resultado(neto)= neto * 0.1
}

object bonoDos{
	method resultado(neto) = 80
}

object bonoTres{
	method resultado()=0
}

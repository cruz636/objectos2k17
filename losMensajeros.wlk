
object paqueteMisterioso {
	var estado = "pago"
	method estaPago(_valor){estado=_valor}
	method estaPago()= estado=="pago"
}

object puenteBrooklyn{
	method dejaPasar(mensajero,paquete) = mensajero.peso() < 1000 && paquete.estaPago()
}

object laMatrix{
	method dejaPasar(mensajero,paquete)=mensajero.puedeLlamar() && paquete.estaPago()
}

object roberto{
	var vehiculo
	var peso = 90
	
	method vehiculo()=vehiculo
	method vehiculo(_vehiculo){vehiculo =_vehiculo}
	
	method peso()= peso + vehiculo.peso()
	
	method puedeLlamar()=false
	
	method puedeLlevar(paquete,destino)=destino.dejaPasar(self,paquete)
	
}

object jenny{
	method peso()=0
}

object mack{
	var acoplados
	
	method acoplados(_cantidad){acoplados = _cantidad}	
	method peso()=acoplados * 500
}

object chuckNorris{
	const peso = 900
	method peso() = peso
	method puedeLlamar()=true
	method puedeLlevar(paquete,destino)=destino.dejaPasar(self,paquete)
	
}

object neo{
	const peso = 0
	var credito 
	
	method credito(_credito){credito = _credito}
	method peso() = peso
	method puedeLlamar()= credito > 0
	
	method puedeLlevar(paquete,destino)=destino.dejaPasar(self,paquete)
}

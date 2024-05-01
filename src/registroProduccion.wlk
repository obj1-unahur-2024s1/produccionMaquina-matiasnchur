object registroProduccion {
	
	const registro = [43,18,49,62,33,39]
	
	method agregar(cantidadDePiezas){
		registro.add(cantidadDePiezas)
	}
	
	method quitar(cantidadDePiezas){
		registro.remove(cantidadDePiezas)
	}
	
	method algunDiaSeProdujo(cantidad){
		return registro.contains(cantidad)
	}
	
	method maximoValorDeProduccion(){
		return registro.max()
	}
	
	method valoresDeProduccionPares(){
		return registro.filter({n => n.even()})
		//return registro.filter({n => n%2==0})
	}
	
	method produccionEsAcotada(n1, n2){
		return registro.all({n => n.between(n1,n2)})
	}
	
	method produccionesSuperioresA(cuanto){
		return registro.filter({n => n > cuanto})
	}
	
	method produccionesSumando(n){
		return registro.map({numero => numero + n})
	}
	
	method totalProducido(){
		return registro.sum()
	}
	
	method ultimoValorDeProduccion(){
		return registro.last()
	}
	
	method cantidadProduccionesMayorALaPrimera(){
		return registro.count({n => n > registro.first()})
	}
	
}

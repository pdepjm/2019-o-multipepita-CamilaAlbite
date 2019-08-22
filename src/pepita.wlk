object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	method estaFeliz(){
		return energia.between(500, 1000)
	}
	method cuantoQuiereVolar(){
		var distancia = energia/5 
		if (energia.between(300, 400)){
			distancia = distancia + 10
		}
		
		if(energia % 20 == 0){
			distancia= distancia + 15
		}
	return distancia
	}
	
	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras(){
		if(self.estaCansada()){
			self.come(alpiste)
		}
		if(self.estaFeliz()){
			self.vola(8)
		}
	}
	
	method entrenar(){
		self.vola(10)
		self.come(alpiste)
		self.vola(5)
		self.haceLoQueQuieras()
	}
}


object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}


object mijo{
	var mojado = true
	method mojarse(){
		mojado = true
	}
	method secarse(){
		mojado = false
	}
	method energiaQueOtorga(){
		if(mojado)
			return 15
		else
			return 20
	}
	
}

object canelones{
	var salsa = false
	var queso = false
	method energiaQueOtorga(){
		var energiaOtorgada = 20
		if(salsa){
			energiaOtorgada += 5
		}
		if(queso){
			energiaOtorgada += 7
		}
		return energiaOtorgada
	}
	method sacarSalsa(){
		salsa = false
	}
	method sacarQueso(){
		queso = false	
	}
	method ponerSalsa(){
		salsa = true
	}
	method ponerQueso(){
		queso = true
	}
}

object roque{
	method entrenar(){
		pepita.entrenar()
	}
}
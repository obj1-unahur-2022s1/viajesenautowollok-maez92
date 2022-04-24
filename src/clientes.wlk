object ludmila {  //Cliente
	const precioPactado = 18
	method precioPorKm() {
		return precioPactado
	}
}

object anaMaria {
	var estaEstableEconomicamente = true
	method precioPorKm() {
		if (estaEstableEconomicamente) {
			return 30
		}
		else {
			return 25
		}
	}
}

object teresa {
	var precioActual = 22
	method precioPorKm() {
		return precioActual
	}
	method cambiarPrecioA(nuevoPrecio) {
		precioActual = nuevoPrecio
	}
}

object melina { // Cadeta que trabaja para clientas de la remiseria
	var clientaActual
	method trabajarPara(clientaDeRemiseria) {
		clientaActual = clientaDeRemiseria
	}
	method precioPorKm() {
		return clientaActual.precioPorKm() - 3
	}
}
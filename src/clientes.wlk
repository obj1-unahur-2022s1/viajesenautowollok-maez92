object ludmila {  //Cliente
	const precioPactado = 18
	method precioPorKm() {
		return precioPactado
	}
}

object anaMaria {
	const precioPactado = 30
	method precioPorKm() {
		return precioPactado
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
import remiseras.*

// Cooperativa de remiseros Doctor Olaechea

object cooperativaDrOlaechea {
	method precioPactadoCon(cliente) {
		return cliente.precioPorKm()
	}
}

object oficina {
	var primeraOpcion
	var segundaOpcion
	method asignarRemiseras(remisera1,remisera2) {
		primeraOpcion = remisera1
		segundaOpcion = remisera2
	}
	method cambiarPrimerRemiseraPor(remisera) {
		primeraOpcion = remisera
	}
	method cambiarSegundaRemiseraPor(remisera) {
		segundaOpcion = remisera
	}
	method intercambiarRemiseras() {
		const remisera = primeraOpcion
		primeraOpcion = segundaOpcion
		segundaOpcion = remisera
	}
	method remiseraElegidaParaViaje(cliente,kms) {
		const precioPrimeraOpcion = primeraOpcion.precioViaje(cliente,kms)
		const precioSegundaOpcion = segundaOpcion.precioViaje(cliente,kms)
		if (precioSegundaOpcion < precioPrimeraOpcion and (precioSegundaOpcion - precioPrimeraOpcion).abs() > 30) {
			return segundaOpcion
		}
		else {
			return primeraOpcion
		}
	}
}
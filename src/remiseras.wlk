import clientes.*
import cooperativa.*

// Remiseras

object roxana {
	method precioViaje(cliente,kilometrosDeViaje) {
		return cooperativaDrOlaechea.precioPactadoCon(cliente) * kilometrosDeViaje
	}
}

object gabriela {
	method precioViaje(cliente,kilometrosDeViaje) {
		const precioPactadoPorKm = cooperativaDrOlaechea.precioPactadoCon(cliente) 
		return (precioPactadoPorKm + precioPactadoPorKm / 5) * kilometrosDeViaje
	}
}

object mariela {
	method precioViaje(cliente,kilometrosDeViaje) {
		const precioPactadoPorKm = cooperativaDrOlaechea.precioPactadoCon(cliente)
		if (precioPactadoPorKm * kilometrosDeViaje > 50) {
			return precioPactadoPorKm * kilometrosDeViaje
		}
		else {
			return 50
		}
	}
}

object juana {
	method precioViaje(cliente,kilometrosDeViaje) {
		if (kilometrosDeViaje > 8) {
			return 200
		}
		else {
			return 100
		}
	}
}

object lucia {
	var remiseraReemplazada
	method estaReemplazandoA(remisera) {
		remiseraReemplazada = remisera
	}
	method precioViaje(cliente,kilometrosDeViaje) {
		return remiseraReemplazada.precioViaje(cliente,kilometrosDeViaje)
	}
}
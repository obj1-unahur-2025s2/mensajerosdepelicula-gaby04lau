object roberto {
  var property peso = 75
  var property transporte = camion
  
  method pesoTotal() = self.peso() + transporte.peso()
  
  method puedeLlamar() = false
}

object chuckNorris {
  method peso() = 80
  
  method puedeLlamar() = true
}

object neo {
  var property tieneCredito = true
  
  method peso() = 0
  
  method puedeLlamar() = tieneCredito
}

object bicicleta {
  method peso() = 5
}

object camion {
  var acoplado = 1
  
  method acoplado() = acoplado
  
  method agregarAcoplado() = acoplado + 1
  
  method quitarAcoplado() = acoplado - 1
  
  method peso() = 500 * acoplado
}
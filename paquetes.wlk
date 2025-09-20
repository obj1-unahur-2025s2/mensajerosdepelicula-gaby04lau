object paquetito {
  var resto = 0
  
  method precio(listaDeDestinos) = 0
  
  method resto(listaDeDestinos) {
    resto = self.precio(listaDeDestinos)
  }
  
  method resto() = resto
  
  method restante(abonado) {
    resto -= abonado
  }
  
  method estaPago() = resto == 0
  
  method puedeSerEntregado(unMensajero) = self.estaPago()
}

object paquetonViajero {
  var resto = 0 /*300 */
  
  method precio(listaDeDestinos) = 100 * listaDeDestinos.size()
  
  method resto(listaDeDestinos) {
    resto = self.precio(listaDeDestinos)
  }
  
  method resto() = resto
  
  method restante(abonado) {
    resto -= abonado
  }
  
  method estaPago() = resto == 0
  
  method puedeSerEntregado(
    unMensajero
  ) = self.estaPago() && unMensajero.listaDeDestinos.all(
    { mensajero => mensajero.puedeIrADestino(unDestino) }
  )
}
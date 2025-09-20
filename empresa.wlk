object empresa{
const property empleados = #{}

method contratar(mensajero) {empleados.add(mensajero)} 
method despedir(mensajero) {empleados.remove(mensajero)}
method despedirATodos() {empleados.clear()}
method esMensajeriaGrande() = empleados.size() > 2
method entregadoPorPrimerEmpleado(paquete) = paquete.puedeSerEntregado(empleados.asList().first())
method pesoDelUltimoEmpleado() = empleados.asList().last().peso()
}
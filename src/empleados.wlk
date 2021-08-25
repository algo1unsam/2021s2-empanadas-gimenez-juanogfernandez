object galvan {
    var sueldo = 15000
    var totalDeuda = 0
    var totalDinero = 0
    
    method sueldo() { return sueldo }
    
    method sueldo(nuevoValor) { sueldo = nuevoValor }
    
    method cobrarSueldo() { 
        if (sueldo > totalDeuda){
            totalDinero += (sueldo - totalDeuda)
            totalDeuda = 0
        } else {
            totalDeuda -= sueldo
            totalDinero = 0
        }
    }
        
    method gastar(cuanto) {
        if (cuanto > totalDinero) {
            totalDeuda += cuanto - totalDinero
            totalDinero = 0
        } else {
        totalDinero -= cuanto
        }
    }
    
    method totalDeuda() {
        return totalDeuda
    }
    
    method totalDinero() {
        return totalDinero
    }
}
object baigorria {
    var cantidadEmpanadasVendidas = 0
    const montoPorEmpanada = 15
    var totalCobrado = 0
    
    method venderEmpanadas(cuantas) {
        cantidadEmpanadasVendidas += cuantas
    }
    
    method empanadasVendidas() = return cantidadEmpanadasVendidas
    
    method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
    
    method cobrarSueldo() {
        totalCobrado += self.sueldo()
        cantidadEmpanadasVendidas = 0
    }
    
    method totalCobrado() = return totalCobrado
}
object gimenez {
    var dinero = 300000
    
    method dinero() { return dinero }
    
    method pagarA(empleado) {
        dinero -= empleado.sueldo()
        empleado.cobrarSueldo()
    }
}
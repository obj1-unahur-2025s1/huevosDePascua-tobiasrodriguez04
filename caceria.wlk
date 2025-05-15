import huevosDePascua.*

object caceria {
    const huevos = []
    method huevosRestantes() = huevos.size()
    method huevosDeChocolateBlancoRestantes() = huevos.count({a => a.material() == chocolateBlanco})
    method noFueEnctontrado(unHuevo) = huevos.contains(unHuevo)
    method chicoEncuentraHuevo(unChico,unHuevo){
        unChico.comer(unHuevo)
        huevos.eliminar(unHuevo)
    }
    method encontrarTodosLosHuevos(unChico){
        self.huevosRestantes().forEach({unChico => unChico.comer()})
    }
    method restantesChocolateBlanco(){
        const restantes = []
        self.huevosRestantes().forEach({a => a.find(a.material() == chocolateBlanco)})
    }
    method masCalorico() = self.huevosRestantes().max({a => a.calorias()})
}

object ana{
    const huevosComidos = []
    method comer(unHuevo){
        huevosComidos.add(unHuevo)
    }
    method estaEnfermo() = huevosComidos.sum({a => a.calorias()}) > 500 || huevosComidos.any({a=> a.material() == chocolateBlanco})
}

object jose{
    var huevoComido = huevoRepostero
    method comer(unHuevo){
        huevoComido = unHuevo
    }
    method estaEnfermo() = huevoComido.material() == chocolateAmargo
}

object tito{
    method comer(unHuevo){
    } 
    method estaEnfermo() = false
}
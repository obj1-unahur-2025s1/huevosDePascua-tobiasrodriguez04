import caceria.*
object huevoRepostero {
    method calorias() = 700
    method material() = [chocolateBlanco]
}

object huevoMixto {
    method calorias() = 900
    method material() = [chocolateBlanco, chocolateConLeche]
}

object conejo {
    var property peso = 100
    method calorias() = peso * 10
    method material() = [chocolateAmargo]
}

object blisterHuevitos {
    var property cantidad = 0
    method calorias() = (cantidad * 100) + (cantidad.div(5) * 150)
    method material() {
        if (cantidad >= 5){
            return [chocolateConLeche, chocolateBlanco]
        }
        else return chocolateConLeche
    }
}

object matrioshka {
    var property huevoInterior = huevoRepostero
    var property decoracion = flor
    method calorias() = 3000 + huevoInterior.calorias() + decoracion.caloriasDecoracion()
    method material(){
        if(decoracion == sinDecoracion){
            return chocolateAmargo
        }
        else return [chocolateAmargo, chocolateConLeche]
    }

}

object flor{
    var property tamaño = 2
    method caloriasDecoracion() = tamaño * 2
}

object arbol{
    method caloriasDecoracion() = 150
}

object sinDecoracion{
    method caloriasDecoracion() = 0
}

object chocolateBlanco{

}

object chocolateConLeche{

}

object chocolateAmargo{

}
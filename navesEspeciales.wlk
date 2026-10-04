class NaveMadre{
    var velocidad 
    var direccion 

    method acelerar(cuanto) {
      velocidad = (velocidad + cuanto).min(100)
    }

    method desacelerar(cuanto) {
      velocidad = (velocidad + cuanto).max(0)
    }

    method escaparDelSol() {
      direccion = - 10
    }

    method irHaciaElSol() {
      direccion = 10
    }

    method ponerseParaleloAlSol() {
      direccion = 0
    }

    method acercarseUnPocoAlSol() {
      direccion = direccion - 1
    }

    method alerjarseUnPocoDelSol() {
      direccion = direccion + 1
    }
}

class NaveBaliza inherits NaveMadre {
  var baliza = "rojo"
  method cambiarColorDeBaliza(colorNuevo) {
    baliza = colorNuevo
  }
}

class NavePasajeros inherits NaveMadre {
  const cantidadPasajeros
  var comida
  var bebida 
  
  //metodo para cargar comida o bebida
  method cargarComida(racionesComida) {
    comida += racionesComida
  }

  method cargarBebida(racionesBebida) {
    bebida += racionesBebida
  }

  method descargarComida(racionesComidaADescargar) {
    comida -= racionesComidaADescargar
  }
  
  method descargarBebida(racionesBebidaADescargar) {
    bebida -= racionesBebidaADescargar
  }
}

class NaveCombate inherits NaveMadre{
    var visibilidad = false
    var misilesDesplegados = false
    const mensajes 

    method ponerseVisible(){

    }
    method ponerseInvisible() {
      
    }
    method estaInvisible() = not visibilidad  //true

    method desplegarMisiles() {
      
    }

    //colecciones-> se definen con const 
    method emitirMensaje(mensaje) {
      mensajes.add(mensaje)
    }
    //mensajes es la coleccion
    //las colecciones siemore estan en plural
    //111 -> 5 a 6 
    //si no sabes si el objeto esta no utilizar el find, usar el filter
    method mensajesEmitidos() {
      mensajes.size()
    }
    method primerMensajesEmitido() {
      mensajes.first()
    }
    method ultimoMensajeEmitido() {
      mensajes.last()
    }
}



//la clase es un molde que va a guardar los atributos y metodos}
//const NewNaveEspecial (velocidad = 60 kms/seg, direccion = 9) -> instanciar, lo que esta vacio en la class debe ser definido en cada instacia
//max -> piso, min -> techo
//inherits -> hereda
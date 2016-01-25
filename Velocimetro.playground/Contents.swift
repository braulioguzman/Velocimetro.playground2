//: Playground - Entrega 3 Braulio Guzman
import Cocoa

enum Velocidades:Int{
    case Apagado=0, VelocidadBaja=20, VelocidadMedia=50, VelocidadAlta=120;
    
    init(velocidadInicial:Velocidades){
     self.init(velocidadInicial: velocidadInicial )
    }
}

class Auto{
    
    var velocidad:Velocidades;
    init(){
        velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad()->(actual:Int, velocidadEncadena:String){
        switch velocidad.rawValue{
        case 0:
            velocidad = Velocidades.VelocidadBaja
            return (Velocidades.VelocidadBaja.rawValue, "Velocidad actual \(Velocidades.VelocidadBaja.rawValue)")
        case 20:
            velocidad = Velocidades.VelocidadMedia
            return (Velocidades.VelocidadMedia.rawValue, "Velocidad actual \(Velocidades.VelocidadMedia.rawValue)")
            
        case 50:
             velocidad = Velocidades.VelocidadAlta
             return (Velocidades.VelocidadAlta.rawValue, "Velocidad actual \(Velocidades.VelocidadAlta.rawValue)")
        case 120:
            velocidad = Velocidades.VelocidadMedia
            return (Velocidades.VelocidadMedia.rawValue, "Velocidad actual \(Velocidades.VelocidadMedia.rawValue)")
  
        default:
            return (0, "Velocidad invalida")
        }
    }
    
}

var _Auto = Auto()

for i in 1...20{
    var _iteracion = _Auto.cambioDeVelocidad()
    print(" \(_iteracion.actual)  \(_iteracion.velocidadEncadena) ")
}




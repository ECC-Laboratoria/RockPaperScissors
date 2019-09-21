import UIKit
import GameplayKit

//type inference
var unDouble = 10


//String interpolation
let nombre = "Néstor"
var unaDescripcion = "Hola, me llamo \(nombre) y este es un double: \(unDouble)"

//arreglo
let unArreglo = ["manzana", "plátano", "sandía"]
type(of: unArreglo)

let unDiccionario = [
    1:"manzana",
    2:"plátano"
]

var arregloVacio = [String]()
arregloVacio.append("manzana")
arregloVacio.append("plátano")
arregloVacio.append("sandía")

for fruta in arregloVacio {
    //print(fruta)
}

//Opcionales
var optionalString: String? = "Hello"
//nulo -> nil
if optionalString != nil {
    //Force unwrapping
    //print(optionalString!)
}else {
//    print("No hay valor")
}


if let constante = optionalString {
//    print(constante)
} else {
    print("No hay valor")
}

//switch
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("...")
case "cucumber", "watercress":
    print("tea sandwich")
case let x where x.hasSuffix("pepper"):
    print("")
default:
    print("Everything tastes good in a soup")
}

enum Planetas: Int {
    case marte
    case jupiter
    case saturno
    case tierra
    
    
}

Planetas.tierra.rawValue

func greeting(firstName: String, age: Int) -> String {
    let description = "Hello, my name is \(firstName). I'm \(age) years old"
    return description
}
var l = greeting(firstName: "Néstor", age: 21)
print(l)


//External and internal argument labels
func sayHelloTo(firstName: String) {
    print("Hello \(firstName)")
}
sayHelloTo(firstName: "< Laboratoria >")

func average(of a: Int, and b: Int) -> (a: Int, b: Int, avg : Int) {
    let avg = (a + b) / 2
    return (a,b,avg)
}

let avg = average(of: 10, and: 20)
print(type(of: avg))
print(avg.a)
print(avg.b)
print(avg.avg)


enum Oceanos {
    case atlantico, pacifico, indico, antartico, artico
    var descripcion: String {
        switch self {
        case .artico:
            return "Oceáno Ártico"
        case .antartico:
            return "Oceáno Antártico"
        case .pacifico:
            return "Oceáno Pacífico"
        case .indico:
            return "Oceáno Índico"
        default:
            return "Oceáno Atlántico"
        }
    }
    
    func giveMeSomeValue() -> Int {
        switch self {
        case .artico:
            return 0
        case .antartico:
            return 1
        case .pacifico:
            return 2
        case .indico:
            return 3
        default:
            return 4
        }
    }
}

var pacifico = Oceanos.pacifico
print(pacifico.giveMeSomeValue())
print(pacifico.descripcion)


//Estructuras
class Carro {
    var numPuertas: Int
    var color: String
    
    init(numPuertas: Int, color: String) {
        self.numPuertas = numPuertas
        self.color = color
    }
    
    func encenderMotores () {
        print("Encendiendo motores...")
    }
}

let carro = Carro(numPuertas: 4, color: "rojo")
carro.encenderMotores()


struct Perro {
    var nombre: String
    func correr() {
        print("\(nombre) está corriendo")
    }
}

var perro = Perro(nombre: "Cuco")
perro.correr()














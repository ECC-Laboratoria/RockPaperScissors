import UIKit

//Funciones

/*
    Bloque de código que podemos usar repetidamente en nuestro programa
 */

func saludar() {
    print("Hola a todas")
}

saludar()

// Parámetros

func square(number: Int) {
    print("\(number * number)")
}

square(number: 5)

//Funciones que regresan valores
func average(n1: Int, n2: Double) -> Double {
    let d1 = Double(n1)
    let avg = (d1 + n2) / 2.0
    return avg
}
print(average(n1: 10, n2: 12))

//Etiquetas de parámetros

func sayHello(to person: String) {
    print("Hola, \(person)")
}
sayHello(to: "Jocelyn")

//Omitir etiquetas de parámetros

func greet(name firstName: String,age: Int, lastName: String) {
    print("Hello, \(firstName + lastName) !")
}
greet(name: "Jocelyn", age: 24, lastName: " García")








//Parámetros por defecto
func greet2(_ person: String, nicely: Bool = true) {
    if nicely {
        print("Hello, \(person)!")
    } else {
        print("Oops, there's an error")
    }
}
greet2("Jocelyn")
greet2("Jocelyn", nicely: false)






//Funciones variádicas - variadic functions
func average2(numbers: Double...) -> Double {
    print(type(of: numbers))
    let count = Double(numbers.count)
    var sum = 0.0
    for number in numbers {
        sum += number
    }
    return sum / count
}
print(average2(numbers: 10.0,9.0,11.5,13.8))
func avg3(numbers: [Double]) -> Double{
    let count = Double(numbers.count)
    var sum = 0.0
    for number in numbers {
        sum += number
    }
    return sum / count
}
print(avg3(numbers: [10.0,9.0,11.5,13.8]))
print("Hello","world","!")

//In out parameters

var n = 10
print(n)
func someIntegerModified(n: inout Int){
    n *= 2
}
someIntegerModified(n: &n)
print(n)
someIntegerModified(n: &n)
print(n)








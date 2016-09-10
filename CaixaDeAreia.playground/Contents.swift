//: Playground - noun: a place where people can play

import UIKit

let x = 10

var xstr : String?

var y = Int(xstr ?? "123")

xstr = String(x)

print(x)
print(y)
print(xstr)

switch y! {
case 0..<5: print("um pouco")
case 5..<10: print("um bocado")
case 10..<100: print("dezena")
case 100..<200: print("bla")
default: print("Nao")
    
}

switch y!{
    
case 1,2,3:
    print("é pequeno")
default: print("vários e vários")
}


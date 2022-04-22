import Foundation

//var text: String?
//nil
var text: String? = "some text"
//some text

//1. Принудительно (forced) - не безопасно
var unwrapped1: String = text!

//2. Неявно (implicitly) - не безопасно
var unwrapped2: String! = text

//3. Опциональное привязывание (binding) - безопасно
if let text = text {
    print("optional succesfully unwrapped: \(text)")
} else {
    print("nil here")
}

//in Swift 5.7
//If let text {
//    print("optional succesfully unwrapped: \(unwrapped3)")
//} else {
//    print("nil here")
//}


//4. Опциональная цепочка (chaining) - безопасно
let unwrapped4 = text?.uppercased()
print(unwrapped4 as Any)
//Optional("SOME TEXT")
//nil -- if nil in text


//5. Значение по умолчанию (nil coalescing) - безопасно
let unwrapped5 = text ?? "no text"
print(unwrapped5)
//some text
//no text -- if nil in text

//6. С помощью guart let в функциях
func someFunc() {
    guard let text = text else { print("nil here"); return }
    print("optional succesfully unwrapped: \(text)")
}

someFunc()


//7. Optional pattern
if case let unwrapped7? = text {
    print(unwrapped7)
} else {
    print("nil here")
}

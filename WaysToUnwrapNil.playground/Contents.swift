import Foundation

//var text: String?
//nil
var text: String? = "some text"
//some text

//1. Принудительно (forced) - не безопасно
//var unwrapped1: String = text!

//2. Неявно (implicitly) - не безопасно
//var unwrapped2 = text!

//3. Опциональное привязывание (binding) - безопасно
if let unwrapped3 = text {
    print("optional succesfully unwrapped: \(unwrapped3)")
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
//nil -- if nil inn text


//5.

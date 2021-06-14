//: [Day06-02.在闭包中接受参数-Accepting parameters in a closure](@previous)
// 视频教程-从闭包返回值 https://www.hackingwithswift.com/sixty/6/3/returning-values-from-a-closure
// 如何从不带参数的闭包中返回值？ https://www.hackingwithswift.com/quick-start/understanding-swift/how-do-you-return-a-value-from-a-closure-that-takes-no-parameters

// 测试: 从闭包返回值 https://www.hackingwithswift.com/review/returning-values-from-a-closure


let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)


/*:
 ## 如何从不带参数的闭包中返回值？
 
 Swift 中的闭包有一种独特的语法，将它们与简单的函数真正区分开来，一个可能引起混淆的地方是我们如何接受和返回参数。

 首先，这是一个接受一个参数但不返回任何内容的闭包：

 let payment = { (user: String) in
     print("Paying \(user)…")
 }
 现在这是一个接受一个参数并返回一个布尔值的闭包：

 let payment = { (user: String) -> Bool in
     print("Paying \(user)…")
     return true
 }
 如果你想在不接受任何参数的情况下返回一个值，你不能只写-> Bool in——Swift 不会理解你的意思。相反，您应该为参数列表使用空括号，如下所示：

 let payment = { () -> Bool in
     print("Paying an anonymous person…")
     return true
 }
 如果您考虑一下，它的工作方式与标准函数 where'd write 的工作原理相同func payment() -> Bool。
 
 
 ---
 
 
 ## 从闭包返回值
 
 闭包也可以返回值，它们的编写方式类似于参数：您将它们写在闭包中，直接在in关键字之前。

 为了证明这一点，我们将采用我们的driving()闭包并使其返回其值而不是直接打印它。这是原文：

 let driving = { (place: String) in
     print("I'm going to \(place) in my car")
 }
 我们想要一个返回字符串而不是直接打印消息的闭包，所以我们需要使用-> Stringbefore in，然后return像普通函数一样使用：

 let drivingWithReturn = { (place: String) -> String in
     return "I'm going to \(place) in my car"
 }
 我们现在可以运行该闭包并打印其返回值：

 let message = drivingWithReturn("London")
 print(message)

 */

//: [Day06-04.闭包作为参数-Closures as parameters](@next)

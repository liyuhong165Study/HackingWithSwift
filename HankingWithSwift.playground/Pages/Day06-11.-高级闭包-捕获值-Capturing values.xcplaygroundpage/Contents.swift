//: [Day06-10.-高级闭包-从函数返回闭包-Returning closures from functions](@previous)
// 视频教程-捕获值 https://www.hackingwithswift.com/sixty/6/11/capturing-values
// 为什么 Swift 的闭包会捕获值？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-do-swifts-closures-capture-values

// 测试: 捕获值 https://www.hackingwithswift.com/review/capturing-values

//func travel() -> (String) -> Void {
//    return {
//        print("I'm going to \($0)")
//    }
//}
//let result = travel()
//result("London")


func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result = travel()
result("London")
result("London")
result("London")


/*:
 ## 为什么 Swift 的闭包会捕获值？
 
 Swift 闭包最重要的特性之一是它们捕获它们使用的值。同时，Swift最令人困惑的特性之一是它们捕获它们使用的值。简而言之，值捕获发生以便您的闭包始终可以访问它需要工作的数据，这意味着 Swift 可以安全地运行闭包。

 例如，让我们尝试编写一个生成随机数的函数，但有一点不同：它不会连续两次返回相同的数字。

 这样做的逻辑非常简单：

 我们将从初始值 0 开始，存储在previousValue.
 然后我们将创建一个新变量newNumber来存储一个新的随机数。
 我们将使用一个repeat循环Int.random(in: 1...3)。
 该循环的条件是newNumber == previousNumber——只要新的随机数与之前的随机数相同，就保持循环选择新的数字。
 一旦循环完成，就意味着我们的号码肯定与前一个不同，所以我们更新previousValue为newValue，然后将其发回。请记住，这应该作为闭包发回，以便我们可以从任何我们想要的地方生成随机数。

 以下是我们如何编写所有内容：

 func makeRandomNumberGenerator() -> () -> Int {
     return {
         var previousNumber = 0
         var newNumber: Int

         repeat {
             newNumber = Int.random(in: 1...3)
         } while newNumber == previousNumber

         previousNumber = newNumber
         return newNumber
     }
 }
 我们现在可以使用该代码进行测试，如下所示：

 let generator = makeRandomNumberGenerator()

 for _ in 1...10 {
     print(generator())
 }
 试一试！很有可能你会发现事情并没有完全按计划进行——我得到了多次重复的数字，例如 1, 2, 1, 1, 3, 1, 3, 3, 3, 2。

 那不是我们想要的；我们想不重复的数字，所以发生了什么事？

 问题在这里：

 return {
     var previousNumber = 0
     var newNumber: Int
 这将返回我们正在调用的闭包，这意味着每次我们调用generator()它时都会创建一个previousNumber设置为 0的新变量——它根本不存储以前的值。

 现在我要你动那var previousNumber = 0这样说到线之前的return，就像这样：

 var previousNumber = 0

 return {
     var newNumber: Int
 如果你现在运行代码，你会看到它像我们希望的那样工作——我们每次都会得到一个新的随机值，但不会得到任何重复。

 您在这里看到的是闭包捕获的强大功能：该previousNumber变量不在闭包内，但是因为闭包需要它存在才能运行它会被捕获。也就是说，Swift 将确保它在makeRandomNumberGenerator()运行结束后仍然存在，并且它通常会被销毁。

 这很重要，原因有两个：

 如果变量已被销毁，那么我们的闭包将无法再工作。它尝试 read 和 write previousNumber，所以 Swift 让它保持活动状态确保闭包功能按预期运行。
 尽管该变量由闭包使用，但它是在闭包之外创建的。这意味着它只设置为 0 一次，而不是每次运行闭包时，这就是它现在正确存储先前值的原因。
 所以，这是一个为什么闭包捕获很重要的真实例子：拥有一个外部值确保我们可以在闭包内部使用它时跟踪它外部的一些状态。

 闭包捕获是一个复杂的话题，但如果你想阅读更多关于它的内容，请查看 Olivier Halligon 的帖子：https ://alisoftware.github.io/swift/closures/2016/07/25/closure-capture- 1/



 ---
 
 
 ## 捕获值
 
 如果您在闭包中使用任何外部值，Swift 会捕获它们——将它们与闭包一起存储，因此即使它们不再存在，也可以进行修改。

 现在我们有一个travel()返回闭包的函数，返回的闭包接受一个字符串作为它的唯一参数并且不返回任何内容：

 func travel() -> (String) -> Void {
     return {
         print("I'm going to \($0)")
     }
 }
 我们可以调用travel()取回闭包，然后自由调用该闭包：

 let result = travel()
 result("London")
 如果我们travel()在闭包内部创建值，就会发生闭包捕获。例如，我们可能想要跟踪返回的闭包被调用的频率：

 func travel() -> (String) -> Void {
     var counter = 1

     return {
         print("\(counter). I'm going to \($0)")
         counter += 1
     }
 }
 即使该counter变量是在 内部创建的travel()，它也会被闭包捕获，因此它仍然会为该闭包保持活动状态。

 所以，如果我们result("London")多次调用，计数器会不断上升：

 result("London")
 result("London")
 result("London")

 */


//: [Day06-12.-高级闭包-闭幕总结-Closures summary](@next)

//: [Day05-05. 省略参数标签-Omitting parameter labels](@previous)
// 视频教程-默认参数 https://www.hackingwithswift.com/sixty/5/6/default-parameters
// 何时为函数使用默认参数 https://www.hackingwithswift.com/quick-start/understanding-swift/when-to-use-default-parameters-for-functions

// 测试: 默认参数 https://www.hackingwithswift.com/review/default-parameters

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet("Taylor")
greet("Taylor", nicely: false)


/*:
 ## 何时为函数使用默认参数
 
 正在为 Xcode 13.0 更新

 通过让我们为参数提供通用默认值，默认参数让我们更容易调用函数。因此，当我们想使用这些默认值调用该函数时，我们可以完全忽略参数——就好像它们不存在一样——我们的函数只会做正确的事情。当然，当我们想要一些定制的东西时，我们可以改变。

 Swift 开发人员非常普遍地使用默认参数，因为它们让我们专注于需要定期更改的重要部分。这确实有助于简化复杂的功能，并使您的代码更易于编写。

 例如，想象一些路由查找代码，如下所示：

 func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
     // code here
 }
 这假设大多数时候人们希望通过最快的路线在两个地点之间开车，而不是避开高速公路——合理的默认设置可能在大多数时间都有效，同时让我们有机会在需要时提供自定义值。

 因此，我们可以通过以下三种方式中的任何一种来调用同一个函数：

 findDirections(from: "London", to: "Glasgow")
 findDirections(from: "London", to: "Glasgow", route: "scenic")
 findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)
 大多数时候更短、更简单的代码，但在我们需要时灵活——完美。
 
 ---
 
 
 ## 默认参数
 
 该print()函数会在屏幕上打印一些内容，但总是在打印内容的末尾添加一个新行，这样对 don 的多个调用print()不会都出现在同一行上。

 您可以根据需要更改该行为，因此您可以使用空格而不是换行符。但是，大多数时候，人们想要换行，因此print()有一个terminator使用换行作为默认值的参数。

 你可以给你自己的参数一个默认值，只需=在它的类型后面写一个你想要给它的默认值。因此，我们可以编写一个greet()可以选择打印问候语的函数：

 func greet(_ person: String, nicely: Bool = true) {
     if nicely == true {
         print("Hello, \(person)!")
     } else {
         print("Oh no, it's \(person) again...")
     }
 }
 这可以通过两种方式调用：

 greet("Taylor")
 greet("Taylor", nicely: false)
 
 */

//: [Day05-07. 可变函数-Variadic functions](@next)

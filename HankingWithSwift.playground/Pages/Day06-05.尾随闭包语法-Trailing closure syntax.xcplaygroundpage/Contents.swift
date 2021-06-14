//: [Day06-04.闭包作为参数-Closures as parameters](@previous)
// 视频教程-闭包作为参数 https://www.hackingwithswift.com/sixty/6/5/trailing-closure-syntax
// 为什么 Swift 有尾随闭包语法？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-trailing-closure-syntax

// 测试: 闭包作为参数 https://www.hackingwithswift.com/review/closures-as-parameters

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

//travel() {
//    print("I'm driving in my car")
//}

travel {
    print("I'm driving in my car")
}

/*:
 ## 为什么 Swift 有尾随闭包语法？
 
 尾随闭包语法旨在使 Swift 代码更易于阅读，尽管有些人更愿意避免使用它。

 让我们先从一个简单的例子开始。这是一个接受Doublethen 一个充满变化的闭包的函数：

 func animate(duration: Double, animations: () -> Void) {
     print("Starting a \(duration) second animation…")
     animations()
 }
 （如果您想知道，那是真实且非常常见的 UIKit 函数的简化版本！）

 我们可以在没有尾随闭包的情况下调用该函数，如下所示：

 animate(duration: 3, animations: {
     print("Fade out the image")
 })
 这是很常见的。许多人不使用尾随闭包，这没关系。但是更多的 Swift 开发人员看到})最后的部分后退缩了一点——这并不令人愉快。

 尾随闭包允许我们清理它，同时还删除animations参数标签。同样的函数调用变成了这样：

 animate(duration: 3) {
     print("Fade out the image")
 }
 当尾随闭包的含义直接附加到函数名时效果最好——你可以看到闭包在做什么，因为函数被调用了animate()。

 如果您不确定是否使用尾随闭包，我的建议是开始在任何地方使用它们。一旦你给了它们一两个月的时间，你就会有足够的使用量来回顾并更清楚地做出决定，但希望你能习惯它们，因为它们在 Swift 中真的很常见！
 
 
 ---
 
 
 ## 尾随闭包语法
 
 如果函数的最后一个参数是闭包，Swift 允许您使用称为尾随闭包语法的特殊语法。不是将闭包作为参数传递，而是直接在大括号内的函数之后传递它。

 为了证明这一点，这里又是我们的travel()函数。它接受一个action闭包，以便它可以在两次print()调用之间运行：

 func travel(action: () -> Void) {
     print("I'm getting ready to go.")
     action()
     print("I arrived!")
 }
 因为它的最后一个参数是一个闭包，我们可以travel()像这样使用尾随闭包语法调用：

 travel() {
     print("I'm driving in my car")
 }
 事实上，因为没有任何其他参数，我们可以完全去掉括号：

 travel {
     print("I'm driving in my car")
 }
 尾随闭包语法在 Swift 中极为常见，因此值得习惯。

 */

//: [Day06-06.-高级闭包-接受参数时使用闭包作为参数-Using closures as parameters when they accept parameters](@next)

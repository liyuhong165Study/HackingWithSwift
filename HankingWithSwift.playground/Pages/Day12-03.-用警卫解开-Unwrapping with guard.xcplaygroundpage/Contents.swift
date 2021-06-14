//: [Day12-02.-展开选项-Unwrapping optionals](@previous)
// 视频教程-用警卫解开 https://www.hackingwithswift.com/sixty/10/3/unwrapping-with-guard
// 何时使用 guard let 而不是 if let https://www.hackingwithswift.com/quick-start/understanding-swift/when-to-use-guard-let-rather-than-if-let

// 测试: 用警卫解开 https://www.hackingwithswift.com/review/unwrapping-with-guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

greet(nil)
greet("lyh")




/*:
 ## 为什么 Swift 需要协议？
 
 Swift 为我们提供了一种替代方法if let called guard let，如果它们包含一个值，它也会解包可选值，但工作方式略有不同：guardlet 旨在在检查失败时退出当前函数、循环或条件，因此您使用它解包的任何值都将保留检查后周围。

 为了演示差异，这里有一个函数将生命的意义作为可选整数返回：

 func getMeaningOfLife() -> Int? {
     42
 }
 这是在另一个函数中使用的函数，称为printMeaningOfLife()：

 func printMeaningOfLife() {
     if let name = getMeaningOfLife() {
         print(name)
     }
 }
 这使用if let，因此getMeaningOfLife()只有在返回整数而不是 nil 时才会打印结果。

 如果我们使用guardlet编写它，它看起来像这样：

 func printMeaningOfLife() {
     guard let name = getMeaningOfLife() else {
         return
     }

     print(name)
 }
 是的，这有点长，但有两件重要的事情发生了变化：

 它让我们专注于“幸福之路”——当一切都按计划进行时，我们的功能的行为，即打印生命的意义。
 guard要求我们在使用时退出当前作用域，在这种情况下，这意味着如果函数失败，我们必须从函数中返回。这不是可选的：Swift 不会在没有return.
 guard在方法开始时使用一次或多次是很常见的，因为它用于预先验证条件是否正确。这使得我们的代码比我们尝试检查一个条件然后运行一些代码，然后检查另一个条件并运行一些不同的代码更容易阅读。

 因此，if let如果您只想解开一些选项，guard let请使用，但如果您在继续之前专门检查条件是否正确，则更喜欢使用。
 
 ---
 
 
 ## 用警卫解开
 
 的替代方法if let是guard let，它也解开可选项。guard let将为您解开一个可选项，但如果它在nil里面找到，它希望您退出您使用它的函数、循环或条件。

 但是，if let和之间的主要区别在于guard let，您的解包可选在guard代码之后仍然可用。

 让我们用一个greet()函数来试一试。这将接受一个可选字符串作为其唯一参数并尝试解开它，但如果里面没有任何内容，它将打印一条消息并退出。因为guard let在guard完成之后使用stay around 来解开可选项，我们可以在函数的末尾打印解开的字符串：

 func greet(_ name: String?) {
     guard let unwrapped = name else {
         print("You didn't provide a name!")
         return
     }

     print("Hello, \(unwrapped)!")
 }
 Usingguard let可以让您在函数开始时处理问题，然后立即退出。这意味着您的函数的其余部分是愉快的路径——如果一切正确，您的代码将采用的路径。
 */


//: [Day12-04.-强制展开-Force unwrapping](@next)

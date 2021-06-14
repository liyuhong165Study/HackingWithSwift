//: [Day12-07.-可选链-Optional chaining](@previous)
// 视频教程-可选尝试 https://www.hackingwithswift.com/sixty/10/8/optional-try
// 什么时候应该使用可选的 try？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-optional-try

// 测试: 可选尝试 https://www.hackingwithswift.com/review/optional-try


enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}



if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}



/*:
 ## 什么时候应该使用可选的 try？
 
 我们可以在 Swift 中使用do,try和运行抛出函数catch，但另一种方法是使用try?将抛出函数调用转换为可选函数。如果函数成功，它的返回值将是一个可选的，包含你通常会收到的任何内容，如果失败，返回值将是一个可选的设置为 nil。

 使用可选的 try 有利有弊，但主要集中在错误对您的重要性上。如果你想运行一个函数并且只关心它是成功还是失败——你不需要区分它可能失败的各种原因——那么使用可选的 try 是非常合适的，因为你可以把整个事情归结为“成功了吗？”

 所以，而不是写这个：

 do {
     let result = try runRiskyFunction()
     print(result)
 } catch {
     // it failed!
 }
 你可以这样写：

 if let result = try? runRiskyFunction() {
     print(result)
 }
 如果这就是你想要做的，那么你可以让runRiskyFunction()return 成为一个可选的而不是抛出一个错误，但是抛出和使用可选的 try 确实给了我们以后改变主意的灵活性。也就是说，如果我们编写一个抛出错误的函数，那么在调用站点，我们可以根据当时的需要使用try/catch或使用可选的 try 。

 就其价值而言，我在自己的代码中大量使用了可选的 try，因为它让我专注于手头的问题确实很神奇。
 ---
 
 
 ## 可选尝试
 
 回到我们谈论抛出函数时，我们查看了这段代码：

 enum PasswordError: Error {
     case obvious
 }

 func checkPassword(_ password: String) throws -> Bool {
     if password == "password" {
         throw PasswordError.obvious
     }

     return true
 }

 do {
     try checkPassword("password")
     print("That password is good!")
 } catch {
     print("You can't use that password.")
 }
 运行投掷功能，使用do，try以及catch优雅地处理错误。

 有两种替代方法try，现在您了解了可选项并强制展开，这两种替代方法都更有意义。

 第一个是try?, 并将抛出函数更改为返回可选项的函数。如果函数抛出错误，您将nil作为结果发送，否则您将获得包装为可选的返回值。

 使用try?我们可以checkPassword()像这样运行：

 if let result = try? checkPassword("password") {
     print("Result was \(result)")
 } else {
     print("D'oh.")
 }
 另一种选择是try!，当您确定该功能不会失败时可以使用它。如果函数确实抛出错误，您的代码将崩溃。

 使用try!我们可以将代码重写为：

 try! checkPassword("sekrit")
 print("OK!")
 */


//: [Day12-09.-可失败的初始化程序-Failable initializers](@next)

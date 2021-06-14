//: [Day05-08. 编写投掷函数-Writing throwing functions](@previous)
// 视频教程-运行投掷功能 https://www.hackingwithswift.com/sixty/5/9/running-throwing-functions
// 为什么 Swift 让我们在每次抛出函数之前都使用 try？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-make-us-use-try-before-every-throwing-function

// 测试: 运行投掷函数 https://www.hackingwithswift.com/review/running-throwing-functions

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


/*:
 ## 什么时候应该编写抛出函数？
 
 使用雨燕的投掷功能依赖于三个独特的关键字：do，try，和catch。我们需要这三个函数才能调用抛出函数，这很不寻常——大多数其他语言只使用两个，因为它们不需要try在每个抛出函数之前编写。

 Swift 与众不同的原因很简单：通过强制我们try在每个抛出函数之前使用，我们明确地承认我们的代码的哪些部分会导致错误。如果您在单个do块中有多个抛出函数，这将特别有用，如下所示：

 do {
     try throwingFunction1()
     nonThrowingFunction1()
     try throwingFunction2()
     nonThrowingFunction2()
     try throwingFunction3()
 } catch {
     // handle errors
 }
 如您所见， usingtry清楚地表明第一个、第三个和第五个函数调用可以抛出错误，但第二个和第四个不能。
 
 ---
 
 
 ## 运行投掷功能
 
 Swift 不喜欢在你的程序运行时发生错误，这意味着它不会让你意外运行抛出错误的函数。

 相反，您需要使用三个新关键字来调用这些函数：do开始一段可能导致问题的代码，try在每个可能抛出错误的函数之前使用，并catch让您优雅地处理错误。

 如果在do块内抛出任何错误，则执行会立即跳转到该catch块。让我们尝试checkPassword()使用抛出错误的参数进行调用：

 do {
     try checkPassword("password")
     print("That password is good!")
 } catch {
     print("You can't use that password.")
 }
 当该代码运行时，会打印“您不能使用该密码”，但不会打印“该密码是好的”——该代码将永远不会到达，因为会抛出错误。
 
 */

//: [Day05-10. 输入参数-inout parameters](@next)

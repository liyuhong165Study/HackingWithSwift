//: [Day05-07. 可变函数-Variadic functions](@previous)
// 视频教程-编写投掷函数 https://www.hackingwithswift.com/sixty/5/8/writing-throwing-functions
// 什么时候应该编写抛出函数？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-write-throwing-functions

// 测试: 编写投掷函数 https://www.hackingwithswift.com/review/writing-throwing-functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}



/*:
 ## 什么时候应该编写抛出函数？
 
 Swift 中的抛出函数是那些能够遇到他们无法或不愿意处理的错误的函数。这并不意味着他们会抛出错误，只是他们有可能会抛出错误。其结果是，斯威夫特将确保我们很小心，当我们使用它们，使任何错误做发生的照顾。

 但是当您编写代码时，您可能会想“这个函数应该抛出它遇到的任何错误，还是应该自己处理它们？” 这真的很常见，老实说没有单一的答案——你可以处理函数内部的错误（从而使它不是一个抛出函数），你可以将它们全部发送回调用函数的任何地方（称为“错误传播”或者有时“冒泡错误”），你甚至可以处理函数中的一些错误并将一些错误发送回来。所有这些都是有效的解决方案，您将在某个时候使用所有这些解决方案。

 当您刚刚开始时，我建议您在大多数情况下避免抛出函数。他们一开始可能会觉得有点笨拙，因为你需要确保在使用函数的任何地方处理所有错误，所以感觉几乎有点“传染性”——突然你的代码中有几个地方需要处理错误，如果这些错误进一步冒泡，那么“感染”就会蔓延。

 所以，当你学习的时候从小处开始：保持抛出函数的数量很少，然后从那里向外工作。随着时间的推移，您将更好地控制错误以保持程序流程顺畅，并且您会对添加抛出函数更有信心。

 有关投掷函数的不同观点，请参阅 Donny Wals 的这篇博文：https : //www.donnywals.com/working-with-throwing-functions-in-swift/
 
 ---
 
 
 ## 编写投掷函数
 
 有时函数会因为输入错误或内部出现问题而失败。Swift 允许我们通过在函数throws返回类型之前标记它们，然后throw在出现问题时使用关键字来从函数中抛出错误。

 首先我们需要定义一个enum描述我们可以抛出的错误。这些必须始终基于 Swift 的现有Error类型。我们将编写一个函数来检查密码是否正确，因此如果用户尝试使用明显的密码，我们将抛出错误：

 enum PasswordError: Error {
     case obvious
 }
 现在我们将编写一个checkPassword()函数，如果出现问题，它将抛出该错误。这意味着throws在函数返回值之前使用关键字，然后throw PasswordError.obvious在密码为“password”时使用。

 这是 Swift 中的：

 func checkPassword(_ password: String) throws -> Bool {
     if password == "password" {
         throw PasswordError.obvious
     }

     return true
 }
 
 */

//: [Day05-09. 运行投掷功能-Running throwing functions](@next)

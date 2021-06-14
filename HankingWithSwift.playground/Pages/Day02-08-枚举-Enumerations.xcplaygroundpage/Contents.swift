//: [Day02-07-创建空集合-Creating empty collections](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/2/8/enumerations
// 为什么需要使用  https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-enums
// 测试 https://www.hackingwithswift.com/review/enumerations

let result = "failure"
let result2 = "failed"
let result3 = "fail"
enum Result {
    case success
    case failure
}
let result4 = Result.failure



/*:
 ## 为什么 Swift 需要枚举？

 枚举是 Swift 一个非常强大的特性，你会看到它们被用在很多地方。许多语言没有枚举并且可以正常使用，所以您可能想知道为什么 Swift 需要枚举！

 嗯，最简单的枚举只是一个值的好名字。我们可以创建一个Direction带有 case for north, south, east, and的枚举west，并在我们的代码中引用它们。当然，我们可以使用整数来代替，在这种情况下我们会引用 1、2、3 和 4，但是您真的记得 3 的含义吗？如果您错误地输入了 5 怎么办？

 所以，枚举是我们所说的一种方式，Direction.north表示某种特定和安全的东西。如果我们已经编写Direction.thatWay并且不存在这样的情况，Swift 会拒绝构建我们的代码——它不理解枚举情况。在幕后，Swift 可以非常简单地存储它的枚举值，因此它们比字符串之类的东西的创建和存储速度要快得多。

 随着您的进步，您将了解 Swift 如何让我们为枚举添加更多功能——它们在 Swift 中比我见过的任何其他语言都更强大。
 ---
 
 
 ## 枚举

 
 枚举——通常简称为枚举——是一种以更易于使用的方式定义相关值组的方法。

 例如，如果您想编写一些代码来表示您正在做的某些工作的成功或失败，您可以将其表示为字符串：

 let result = "failure"
 但是如果有人不小心使用了不同的命名，会发生什么？

 let result2 = "failed"
 let result3 = "fail"
 这三个都是不同的字符串，所以它们意味着不同的东西。

 使用枚举，我们可以定义一个Result可以是success或的类型failure，如下所示：

 enum Result {
     case success
     case failure
 }
 现在当我们使用它时，我们必须选择这两个值之一：

 let result4 = Result.failure
 这可以防止您每次意外使用不同的字符串。


 */

//: [Day02-09-枚举关联值-Enum associated values](@next)

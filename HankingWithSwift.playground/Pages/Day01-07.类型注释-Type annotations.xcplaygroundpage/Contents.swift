//: [Day01-06.常数-Constants](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/1/7/type-annotations

let str = "Hello, playground"

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true


/*:
 ## 为什么 Swift 有类型注解？
 人们在学习 Swift 时问的一个常见问题是“为什么 Swift 有类型注释？”，后面通常是“我什么时候应该在 Swift 中使用类型注释？”

 第一个问题的答案主要是以下三个原因之一：

 Swift 无法弄清楚应该使用什么类型。
 您希望 Swift 使用与其默认类型不同的类型。
 您还不想分配值。
 第一个通常只发生在更高级的代码中。例如，如果您从 Internet 加载一些您知道恰好是您当地政客的姓名的数据，Swift 无法提前知道，因此您需要告诉它。

 当你在 Swift 中学习更多时，第二种情况很常见，但现在一个简单的例子是尝试创建一个双变量，而不必在任何地方不断地写“.0”：
```
 var percentage: Double = 99
 ```
 这将生成percentage一个值为 99.0 的双精度值。是的，我们给它分配了一个整数，但是我们的类型注释清楚地表明我们想要的实际数据类型是 double。

 当你想告诉 Swift 一个变量将存在，但你还不想设置它的值时，就会出现第三个选项。这发生在 Swift 的很多地方，看起来像这样：
```
 var name: String
 ```
 然后你可以为以后分配一个字符串name，但你不能分配一个不同的类型，因为 Swift 知道它是无效的。

 当然，这里的第二个问题是“我什么时候应该在 Swift 中使用类型注解？” 这更加主观，因为答案通常取决于您的个人风格。

 在我自己的代码中，我更喜欢尽可能使用类型推断。这意味着我省略了类型注释，让 Swift 根据我存储在其中的数据来确定事物的类型。我这样做的原因是：

 它使我的代码更短且更易于阅读。
 它允许我通过改变它的初始值来改变它的类型。
 其他一些人更喜欢总是使用显式类型注释，这也很好用——这确实是一个风格问题。
---
 
 
 ## 类型注释
 
 Swift 会根据每个变量和常量在创建时给定的值为其分配一个类型。所以，当你写这样的代码时，Swift 可以看到它包含一个字符串：
```
 let str = "Hello, playground"
 ```
 这将生成str一个字符串，因此您以后不能尝试为其分配整数或布尔值。这称为类型推断：Swift 能够根据您创建它的方式推断其类型。

 如果你愿意，你可以明确你的数据类型，而不是依赖 Swift 的类型推断，就像这样：
```
 let album: String = "Reputation"
 let year: Int = 1989
 let height: Double = 1.78
 let taylorRocks: Bool = true
 ```
 请注意，布尔值具有短类型名称Bool，就像整数具有短类型名称一样Int。
 */
//: [Day01-06.常数-Constants](@next)

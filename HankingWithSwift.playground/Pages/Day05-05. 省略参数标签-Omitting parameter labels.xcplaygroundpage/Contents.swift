//: [Day05-04.参数标签-Returning values](@previous)
// 视频教程-省略参数标签 https://www.hackingwithswift.com/sixty/5/5/omitting-parameter-labels
// 什么时候应该省略参数标签？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-omit-a-parameter-label

// 测试: 省略参数标签 https://www.hackingwithswift.com/review/omitting-parameter-labels

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")


/*:
 ## 什么时候应该省略参数标签？
 
 正在为 Xcode 13.0 更新

 如果我们对函数参数的外部标签使用下划线，Swift 不允许我们为该参数使用任何名称。这在 Swiftly 开发的某些部分是非常常见的做法，特别是在构建不使用 SwiftUI 的应用程序时，但在很多其他时候你也想使用它。

 跳过参数名称的主要原因是当您的函数名称是动词并且第一个参数是动词所作用的名词时。例如：

 问候一个人会greet(taylor)比greet(person: taylor)
 购买产品buy(toothbrush)而不是buy(item: toothbrush)
 寻找客户find(customer)而不是find(user: customer)
 当参数标签可能与您传入的任何名称相同时，这一点尤其重要：

 唱一首歌sing(song)而不是sing(song: song)
 启用警报将enable(alarm)而不是enable(alarm: alarm)
 读一本书read(book)而不是read(book: book)
 在 SwiftUI 出现之前，应用程序是使用 Apple 的 UIKit、AppKit 和 WatchKit 框架构建的，这些框架是使用一种名为 Objective-C 的旧语言设计的。在这种语言中，函数的第一个参数总是未命名的，因此当您在 Swift 中使用这些框架时，您会看到许多函数的第一个参数标签带有下划线，以保持与 Objective-C 的互操作性。
 
 ---
 
 
 ## 省略参数标签
 
 您可能已经注意到，我们在调用时实际上并没有发送任何参数名称print()——我们说的是print("Hello")而不是print(message: "Hello")。

 您可以在自己的函数中使用下划线_, 作为外部参数名称，从而获得相同的行为，如下所示：

 func greet(_ person: String) {
     print("Hello, \(person)!")
 }
 您现在可以调用greet()而无需使用person参数名称：

 greet("Taylor")
 这可以使一些代码更自然地阅读，但通常最好为您的参数提供外部名称以避免混淆。例如，如果我说setAlarm(5)很难说出这意味着什么——它是设置了五点钟的闹钟，还是设置了五小时后的闹钟，还是激活了预配置的 5 号闹钟？
 
 
 */

//: [Day05-06. 默认参数-Default parameters](@next)

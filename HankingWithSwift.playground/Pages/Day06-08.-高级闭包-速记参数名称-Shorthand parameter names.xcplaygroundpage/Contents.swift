//: [Day06-07.-高级闭包-返回值时使用闭包作为参数-Using closures as parameters when they return values](@previous)
// 视频教程-速记参数名称 https://www.hackingwithswift.com/sixty/6/8/shorthand-parameter-names
// 什么时候应该使用速记参数名称？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-shorthand-parameter-names

// 测试: 速记参数名称 https://www.hackingwithswift.com/review/shorthand-parameter-names

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

// 调用几种方式

//travel { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}
//
//travel { place -> String in
//    return "I'm going to \(place) in my car"
//}
//
//travel { place in
//    return "I'm going to \(place) in my car"
//}
//
//travel { place in
//    "I'm going to \(place) in my car"
//}

travel {
    "I'm going to \($0) in my car"
}




/*:
 ## 什么时候应该使用速记参数名称？
 
 在使用闭包时，Swift 为我们提供了一种特殊的速记参数语法，这使得编写闭包变得非常简洁。这种语法自动将参数名称编号为$0、$1、$2等等——我们不能在我们自己的代码中使用这样的名称，所以当你看到它们时，马上就会明白这些是闭包的速记语法。

 至于何时应该使用它们，这确实是一个很大的“视情况而定”：

 参数多吗？如果是这样，简写语法不再是有用的，实际上开始被适得其反-是它$3还是$4你需要比较反对$0给他们实际的名字和它们的含义变得更加清晰。
 函数是否常用？随着您的 Swift 技能的进步，您将开始意识到有少数（可能是 10 个左右）使用闭包的极其常见的函数，因此其他阅读您代码的人将很容易理解其$0含义。
 您的方法中是否多次使用了速记名称？如果您需要提及$0超过两三次，您可能应该给它一个真实的名字。
 重要的是您的代码易于阅读和理解。有时这意味着让它简短​​而简单，但并非总是如此——根据具体情况选择速记语法。


 
 
 ---
 
 
 ## 速记参数名称
 
 我们只是做了一个travel()函数。它接受一个参数，这是一个闭包，它本身接受一个参数并返回一个字符串。然后在两次调用之间运行该闭包print()。

 这是代码中的内容：

 func travel(action: (String) -> String) {
     print("I'm getting ready to go.")
     let description = action("London")
     print(description)
     print("I arrived!")
 }
 我们可以travel()使用这样的方法调用：

 travel { (place: String) -> String in
     return "I'm going to \(place) in my car"
 }
 但是，Swift知道该闭包的参数必须是字符串，因此我们可以将其删除：

 travel { place -> String in
     return "I'm going to \(place) in my car"
 }
 它还知道闭包必须返回一个字符串，因此我们可以删除它：

 travel { place in
     return "I'm going to \(place) in my car"
 }
 由于闭包只有一行代码必须是返回值的代码，因此 Swift 也让我们删除了return关键字：

 travel { place in
     "I'm going to \(place) in my car"
 }
 Swift 有一种速记语法，可以让你写得更短。place in我们可以让 Swift 为闭包的参数提供自动名称，而不是编写。它们以美元符号命名，然后是从 0 开始计数的数字。

 travel {
     "I'm going to \($0) in my car"
 }


 */


//: [Day05-02.接受参数-Accepting parameters](@next)

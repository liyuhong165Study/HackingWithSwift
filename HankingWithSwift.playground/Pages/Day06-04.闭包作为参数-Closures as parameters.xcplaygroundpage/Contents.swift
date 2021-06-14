//: [Day06-03.从闭包返回值-Returning values from a closure](@previous)
// 视频教程-闭包作为参数 https://www.hackingwithswift.com/sixty/6/4/closures-as-parameters
// 为什么要使用闭包作为参数？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-would-you-want-to-use-closures-as-parameters

// 测试: 闭包作为参数 https://www.hackingwithswift.com/review/closures-as-parameters


let driving = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)


/*:
 ## 为什么要使用闭包作为参数？
 
 Swift 的闭包可以像任何其他类型的数据一样使用，这意味着您可以将它们传递给函数，获取它们的副本，等等。但是当你刚刚学习时，这种感觉非常“仅仅因为你可以，并不意味着你应该”——很难看出好处。

 我能给出的最好的例子之一是 Siri 与应用程序集成的方式。Siri 是一项系统服务，可在您的 iOS 设备上的任何位置运行，但它能够与应用程序进行通信——您可以使用 Lyft 预订行程，您可以使用 Carrot Weather 查询天气等等。在幕后，Siri 在后台启动应用程序的一小部分来传递我们的语音请求，然后将应用程序的响应显示为 Siri 用户界面的一部分。

 现在想一想：如果我的应用程序表现不佳，并且需要 10 秒钟才能响应 Siri，该怎么办？请记住，用户实际上并没有看到我的应用程序，只是看到了 Siri，所以从他们的角度来看，Siri 似乎完全被冻结了。

 这将是一个糟糕的用户体验，因此 Apple 使用闭包代替：它在后台启动我们的应用程序并传入一个我们可以在完成后调用的闭包。然后，我们的应用程序可以花费很长时间来确定需要完成哪些工作，当我们完成时，我们调用闭包将数据发送回 Siri。使用闭包发回数据而不是从函数返回值意味着 Siri 不需要等待函数完成，因此它可以保持其用户界面的交互性——它不会冻结。

 另一个常见的例子是发出网络请求。你的普通 iPhone 每秒可以做几十亿件事，但连接到日本的服务器需要半秒或更长时间——与你设备上发生的事情的速度相比，这几乎是冰山一角。因此，当我们从 Internet 请求数据时，我们会使用闭包：“请获取此数据，完成后运行此闭包。” 同样，这意味着当一些缓慢的工作发生时，我们不会强迫我们的用户界面冻结。
 
 
 ---
 
 
 ## 闭包作为参数
 
 因为闭包可以像字符串和整数一样使用，所以您可以将它们传递给函数。这个语法一开始可能会伤害你的大脑，所以我们会慢慢来。

 首先，这是我们的基本driving()闭包

 let driving = {
     print("I'm driving in my car")
 }
 如果我们想将该闭包传递给一个函数以便它可以在该函数内运行，我们会将参数类型指定为() -> Void。这意味着“不接受任何参数，并返回Void”——Swift 表达“无”的方式。

 因此，我们可以编写一个travel()函数来接受不同类型的旅行动作，并在前后打印一条消息：

 func travel(action: () -> Void) {
     print("I'm getting ready to go.")
     action()
     print("I arrived!")
 }
 我们现在可以使用我们的driving闭包调用它，如下所示：

 travel(action: driving)

 */

//: [Day06-05.尾随闭包语法-Trailing closure syntax](@next)

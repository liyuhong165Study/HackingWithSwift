//: [Day08-02.-计算属性-Computed properties](@previous)
// 视频教程-属性观察者 https://www.hackingwithswift.com/sixty/7/3/property-observers
// 什么时候应该使用属性观察器？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-property-observers
// 什么时候应该使用 willSet 而不是 didSet？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-willset-rather-than-didset

// 测试: 属性观察者 https://www.hackingwithswift.com/review/computed-properties

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}


var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

/*:
 ## 什么时候应该使用属性观察器？
 
 Swift 的属性观察器让我们分别使用willSet和附加要在属性更改之前或之后运行的功能didSet。大多数情况下不需要属性观察者，只是很好 - 我们可以正常更新属性然后自己在代码中调用一个函数。那么何必呢？你什么时候会真正使用属性观察器？

 最重要的原因是方便：使用属性观察器意味着您的功能将在属性更改时执行。当然，你可以使用一个函数来做到这一点，但你记得吗？总是？在每个地方你改变财产？

 这就是函数方法变坏的地方：你要记住在属性改变时调用该函数，如果你忘记了，那么你的代码中就会出现神秘的错误。另一方面，如果您使用 将您的功能直接附加到属性didSet，它总是会发生，并且您正在将确保该功能的工作转移到 Swift，以便您的大脑可以专注于更有趣的问题。

 有一个地方使用属性观察器是一个坏主意，那就是如果你在那里放慢工作。如果您有一个User带age整数的结构体，您会期望更改age几乎立即发生——毕竟它只是一个数字。如果您附加一个didSet执行各种缓慢工作的属性观察器，那么突然更改单个整数可能需要比您预期的更长的时间，并且可能会给您带来各种问题。

 ---
 
 
 ## 属性观察者
 
 属性观察器允许您在任何属性更改之前或之后运行代码。为了演示这一点，我们将编写一个Progress跟踪任务和完成百分比的结构：

 struct Progress {
     var task: String
     var amount: Int
 }
 我们现在可以创建该结构的实例并随着时间的推移调整其进度：

 var progress = Progress(task: "Loading data", amount: 0)
 progress.amount = 30
 progress.amount = 80
 progress.amount = 100
 我们希望Swift 在每次amount更改时打印一条消息，我们可以didSet为此使用属性观察器。这将在每次amount更改时运行一些代码：

 struct Progress {
     var task: String
     var amount: Int {
         didSet {
             print("\(task) is now \(amount)% complete")
         }
     }
 }
 您还可以使用在属性更改之前willSet采取行动，但很少使用。
 
 */


//: [Day08-04.-方法-Methods](@next)

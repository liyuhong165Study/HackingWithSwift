//: [Day11-01.-协议-Protocols](@previous)
// 视频教程-协议继承 https://www.hackingwithswift.com/sixty/9/2/protocol-inheritance
// 我们什么时候应该使用协议继承？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-we-use-protocol-inheritance

// 测试: 协议继承 https://www.hackingwithswift.com/review/protocol-inheritance


protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

/*:
 ## 我们什么时候应该使用协议继承？
 
 Swift 允许我们基于现有协议构建新协议，就像它让我们基于现有类构建新类的方式一样。

 使用协议继承的一个常见原因是将功能组合起来用于共同的工作。例如：

 所有产品都有价格和重量
 所有计算机都有一个 CPU，加上它们有多少内存和多少存储空间
 所有笔记本电脑都有一个屏幕尺寸
 你绝对可以定义这样的Computer协议：

 protocol Computer {
     var price: Double { get set }
     var weight: Int { get set }
     var cpu: String { get set }
     var memory: Int { get set }
     var storage: Int { get set }
 }
 然后定义一个Laptop这样的协议：

 protocol Laptop {
     var price: Double { get set }
     var weight: Int { get set }
     var cpu: String { get set }
     var memory: Int { get set }
     var storage: Int { get set }
     var screenSize: Int { get set }
 }
 但是你看到我们已经有多少重复了吗？现在想象一下使用手机和平板电脑——更多的协议和更多的重复。

 如果我们将协议分解成更小的部分，然后像乐高积木一样重新组装它们，会更简单、更灵活。

 因此，我们可以从定义产品的外观开始：

 protocol Product {
     var price: Double { get set }
     var weight: Int { get set }
 }
 然后我们可以定义计算机的外观，通过基于它Product然后添加一些附加功能：

 protocol Computer: Product {
     var cpu: String { get set }
     var memory: Int { get set }
     var storage: Int { get set }
 }
 现在我们可以定义 a 的Laptop样子，通过将它基于 a Computer（因此也是 a Product），并添加另一个属性：

 protocol Laptop: Computer {
     var screenSize: Int { get set }
 }
 如您所见，以这种方式使用协议继承可以让我们共享定义并减少重复，这是一种逐块构建功能的好方法。

 使用协议继承的第二个常见原因是在有意义的时候添加额外的限制。例如，Swift 有一个名为 的协议Equatable，这意味着“可以检查这个东西与相同类型的其他实例的相等性”，这就是5 == 6return false 的原因。Swift 还有一个叫做 的协议Comparable，这意味着“可以检查这个类型是小于还是大于相同类型的另一个实例”，这就是"Hello" < "World"return true 的原因。

 想一想：如果我们可以知道一个对象是小于还是大于其他某个对象，那么我们也必须能够知道它何时与另一个对象相同。也就是说，如果数 X 不小于数 Y，也不大于数 Y，则 X 和 Y 必须相等。

 Swift没有复制Equatableinto 的所有功能Comparable，而是使用协议继承，以便Comparable从Equatable.
 
 ---
 
 
 ## 协议继承
 
 一个协议可以在称为协议继承的过程中从另一个协议继承。与类不同，您可以在添加自己的自定义之前同时从多个协议继承。

 我们将定义三个协议：Payable需要符合类型来实现calculateWages()方法，NeedsTraining需要符合类型来实现study()方法，HasVacation需要符合类型来实现takeVacation()方法：

 protocol Payable {
     func calculateWages() -> Int
 }

 protocol NeedsTraining {
     func study()
 }

 protocol HasVacation {
     func takeVacation(days: Int)
 }
 我们现在可以创建一个单一的Employee协议，将它们整合到一个协议中。我们不需要在上面添加任何东西，所以我们只写左大括号和右大括号：

 protocol Employee: Payable, NeedsTraining, HasVacation { }
 现在我们可以使新类型符合该单一协议，而不是三个单独的协议中的每一个。
 
 
 */


//: [Day11-03.-扩展-Extensions](@next)

//: [Day11-04.-协议扩展-Protocol extensions](@previous)
// 视频教程-面向协议的编程 https://www.hackingwithswift.com/sixty/9/5/protocol-oriented-programming
// 面向协议的编程与面向对象的编程有何不同？ https://www.hackingwithswift.com/quick-start/understanding-swift/how-is-protocol-oriented-programming-different-from-object-oriented-programming

// 测试: 面向协议的编程 https://www.hackingwithswift.com/review/protocol-oriented-programming


// 协议
protocol Identifiable {
    var id: String { get set }
    func identify()
}

// 给协议扩展
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

// 遵循协议 默认自带扩展
struct User: Identifiable {
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()


/*:
 ## 面向协议的编程与面向对象的编程有何不同？
 
 许多 Swift 开发人员将这种语言描述为面向协议，但这究竟意味着什么？特别是，它与旧的面向对象范式有何不同？

 回到原始事实，两者之间没有实际区别：两者都可以将功能放入对象中，使用访问控制来限制可以调用该功能的位置，使一个类从另一个类继承等等。

 有人可能会说，两者之间唯一真正的区别在于，在面向协议的编程 (POP) 中，我们更喜欢通过组合协议来构建功能（“这个新结构符合协议 X、Y 和 Z”），而在面向对象的编程中面向编程（OOP）我们更喜欢通过类继承来构建功能。然而，即使这样也是可疑的，因为 OOP 开发人员通常也更喜欢组合功能而不是继承它——只是更容易维护。

 事实上，两者之间唯一重要的区别是一种心态：POP 开发人员严重依赖 Swift 的协议扩展功能来构建从协议中获取大量行为的类型。这使得在多种类型之间共享功能变得更容易，这反过来又让我们可以构建更大、更强大的软件，而无需编写太多代码。

 有关面向协议编程的更多信息，您应该观看 Dave Abraham 在 WWDC 上介绍该主题的演讲：https : //developer.apple.com/videos/play/wwdc2015/408/
 
 ---
 
 
 ## 面向协议的编程
 
 协议扩展可以为我们自己的协议方法提供默认实现。这使得类型更容易符合协议，并允许使用一种称为“面向协议的编程”的技术——围绕协议和协议扩展编写代码。

 首先，这是一个被调用的协议Identifiable，它要求任何符合的类型都具有一个id属性和一个identify()方法：

 protocol Identifiable {
     var id: String { get set }
     func identify()
 }
 我们可以让每个符合的类型编写自己的identify()方法，但是协议扩展允许我们提供一个默认值：

 extension Identifiable {
     func identify() {
         print("My ID is \(id).")
     }
 }
 现在，当我们创建一个符合Identifiable它的类型时，它会identify()自动获得：

 struct User: Identifiable {
     var id: String
 }

 let twostraws = User(id: "twostraws")
 twostraws.identify()
 
 */


//: [Day11-06.-协议和扩展摘要-Protocols and extensions summary](@next)

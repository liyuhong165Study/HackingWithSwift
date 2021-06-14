//: [Day11-03.-扩展-Extensions](@previous)
// 视频教程-协议扩展 https://www.hackingwithswift.com/sixty/9/4/protocol-extensions
// 什么时候协议扩展在 Swift 中有用？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-are-protocol-extensions-useful-in-swift

// 测试: 协议扩展 https://www.hackingwithswift.com/review/protocol-extensions

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

// Swift 的数组和集合都遵循一个名为 的协议Collection
extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

/*:
 ## 什么时候应该在 Swift 中使用扩展？
 
 扩展让我们向类、结构等添加功能，这有助于修改我们不拥有的类型——例如，由 Apple 或其他人编写的类型。使用扩展添加的方法与最初属于该类型的方法没有区别，但属性有所不同：扩展可能不会添加新的存储属性，只能添加计算属性。

 扩展对于组织我们自己的代码也很有用，尽管有多种方法可以做到这一点，但我想在这里重点介绍两种：一致性分组和目的分组。

 一致性分组意味着将协议一致性添加到类型作为扩展，在该扩展中添加所有必需的方法。这使得更容易理解开发人员在阅读扩展时需要保留多少代码——如果当前扩展添加了对 的支持Printable，他们将不会发现打印方法与来自其他不相关协议的方法混合在一起。

 另一方面，目的分组意味着创建扩展来执行特定任务，这使得处理大型类型变得更容易。例如，您可能有一个专门用于处理该类型的加载和保存的扩展。

 值得在这里补充的是，许多人意识到他们有一个大类，并试图通过将其拆分为扩展来使其更小。需要明确的是：类型与之前的大小完全相同，只是整齐地分开了。这确实意味着它可能更容易理解，但这并不意味着类更小。
 
 ---
 
 
 ## 协议扩展
 
 协议让你描述一些东西应该有什么方法，但不提供里面的代码。扩展允许您在方法中提供代码，但只影响一种数据类型——您不能同时将方法添加到多种类型。

 协议扩展解决了这两个问题：它们就像常规扩展一样，只不过不是像Int扩展整个协议那样扩展特定类型，以便所有符合的类型都得到您的更改。

 例如，这是一个数组和一个包含一些名称的集合：

 let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
 let beatles = Set(["John", "Paul", "George", "Ringo"])
 Swift 的数组和集合都遵循一个名为 的协议Collection，因此我们可以为该协议编写一个扩展来添加一个summarize()方法来整齐地打印集合

 extension Collection {
     func summarize() {
         print("There are \(count) of us:")

         for name in self {
             print(name)
         }
     }
 }
 无论Array和Set现在有一个方法，所以我们可以尝试一下：

 pythons.summarize()
 beatles.summarize()

 */


//: [Day11-05.-面向协议的编程-Protocol-oriented programming](@next)

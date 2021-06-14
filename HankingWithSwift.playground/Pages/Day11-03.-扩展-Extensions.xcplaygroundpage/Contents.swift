//: [Day11-02.-协议继承-Protocol inheritance](@previous)
// 视频教程-扩展 https://www.hackingwithswift.com/sixty/9/3/extensions
// 什么时候应该在 Swift 中使用扩展？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-extensions-in-swift

// 测试: 扩展 https://www.hackingwithswift.com/review/extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
}

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 9
number.squared()
let isEven =  number.isEven



/*:
 ## 什么时候应该在 Swift 中使用扩展？
 
 扩展让我们向类、结构等添加功能，这有助于修改我们不拥有的类型——例如，由 Apple 或其他人编写的类型。使用扩展添加的方法与最初属于该类型的方法没有区别，但属性有所不同：扩展可能不会添加新的存储属性，只能添加计算属性。

 扩展对于组织我们自己的代码也很有用，尽管有多种方法可以做到这一点，但我想在这里重点介绍两种：一致性分组和目的分组。

 一致性分组意味着将协议一致性添加到类型作为扩展，在该扩展中添加所有必需的方法。这使得更容易理解开发人员在阅读扩展时需要保留多少代码——如果当前扩展添加了对 的支持Printable，他们将不会发现打印方法与来自其他不相关协议的方法混合在一起。

 另一方面，目的分组意味着创建扩展来执行特定任务，这使得处理大型类型变得更容易。例如，您可能有一个专门用于处理该类型的加载和保存的扩展。

 值得在这里补充的是，许多人意识到他们有一个大类，并试图通过将其拆分为扩展来使其更小。需要明确的是：类型与之前的大小完全相同，只是整齐地分开了。这确实意味着它可能更容易理解，但这并不意味着类更小。
 
 ---
 
 
 ## 扩展
 
 扩展允许您向现有类型添加方法，使它们执行最初设计时不打算执行的操作。

 例如，我们可以为该Int类型添加一个扩展，使其具有一个squared()返回当前乘以自身的数字的方法：

 extension Int {
     func squared() -> Int {
         return self * self
     }
 }
 要尝试一下，只需创建一个整数，您就会看到它现在有一个squared()方法：

 let number = 8
 number.squared()
 Swift 不允许您在扩展中添加存储属性，因此您必须改用计算属性。例如，我们可以isEven向整数添加一个新的计算属性，如果它包含偶数，则返回 true：

 extension Int {
     var isEven: Bool {
         return self % 2 == 0
     }
 }

 */


//: [Day11-04.-协议扩展-Protocol extensions](@next)

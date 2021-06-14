//: [Day08-04.-方法-Methods](@previous)
// 视频教程-变异方法 https://www.hackingwithswift.com/sixty/7/5/mutating-methods
// 为什么我们需要将某些方法标记为变异？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-do-we-need-to-mark-some-methods-as-mutating

// 测试: 变异方法 https://www.hackingwithswift.com/review/mutating-methods



struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()



/*:
 ## 为什么我们需要将某些方法标记为变异？
 
 可以修改结构的属性，但前提是该结构被创建为变量。当然，在你的结构体内部无法判断你将使用可变结构体还是常量结构体，所以 Swift 有一个简单的解决方案：任何时候结构体的方法试图改变任何属性，你都必须将其标记为mutating.

 除了将方法标记为 之外mutating，您不需要做任何其他事情，但是这样做可以为 Swift 提供足够的信息来阻止该方法与常量结构实例一起使用。

 您会发现有两个重要的细节很有用：

 mutating将方法标记为将阻止在常量结构上调用该方法，即使该方法本身实际上并未更改任何属性。如果你说它改变了东西，Swift 相信你！
 这是一个方法不标记为不同诱变不能调用功能变异-必须他们两个标记为变异。
 
 ---
 
 
 ## 变异方法
 
 如果结构体具有可变属性，但结构体的实例是作为常量创建的，则该属性无法更改——结构体是常量，因此无论它们是如何创建的，它的所有属性也是常量。

 问题在于，当您创建结构体时，Swift 不知道您是将它与常量还是变量一起使用，因此默认情况下它采用安全的方法：除非您特别要求，否则 Swift 不会让您编写更改属性的方法。

 当你想改变一个方法中的一个属性时，你需要使用mutating关键字来标记它，像这样：

 struct Person {
     var name: String

     mutating func makeAnonymous() {
         name = "Anonymous"
     }
 }
 因为它改变了属性，Swift 将只允许在Person变量实例上调用该方法：

 var person = Person(name: "Ed")
 person.makeAnonymous()
 
 */


//: [Day08-06.-字符串的属性和方法-Properties and methods of strings](@next)

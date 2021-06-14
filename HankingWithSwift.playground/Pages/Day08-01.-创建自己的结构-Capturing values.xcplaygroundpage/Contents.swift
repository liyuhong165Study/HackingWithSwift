//: [Day06-12.-高级闭包-闭幕总结-Closures summary](@previous)
// 视频教程-创建自己的结构 https://www.hackingwithswift.com/sixty/7/1/creating-your-own-structs
// 结构体和元组有什么区别？ https://www.hackingwithswift.com/quick-start/understanding-swift/whats-the-difference-between-a-struct-and-a-tuple

// 测试: 创建自己的结构 https://www.hackingwithswift.com/review/creating-your-own-structs


struct Sport {
    var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)


tennis.name = "Lawn tennis"


/*:
 ## 结构体和元组有什么区别？
 
 Swift 的元组让我们可以在一个变量中存储几个不同的命名值，而结构体的作用大致相同——那么有什么区别，什么时候应该选择一个？

 当您刚刚学习时，区别很简单：元组实际上只是一个没有名称的结构，就像一个匿名结构。这意味着您可以将其定义为(name: String, age: Int, city: String)，它将与以下结构执行相同的操作：

 struct User {
     var name: String
     var age: Int
     var city: String
 }
 然而，元组有一个问题：虽然它们非常适合一次性使用，尤其是当您想从单个函数返回多条数据时，但一次又一次地使用它们可能会很烦人。

 想一想：如果你有几个处理用户信息的函数，你会更愿意这样写：

 func authenticate(_ user: User) { ... }
 func showProfile(for user: User) { ... }
 func signOut(_ user: User) { ... }
 或这个：

 func authenticate(_ user: (name: String, age: Int, city: String)) { ... }
 func showProfile(for user: (name: String, age: Int, city: String)) { ... }
 func signOut(_ user: (name: String, age: Int, city: String)) { ... }
 想想在你的User结构中添加一个新属性有多么困难（确实很容易），与在它被使用的任何地方向你的元组添加另一个值相比有多么困难？（非常难，而且容易出错！）

 因此，当您想从函数中返回两个或多个任意值时，请使用元组，但当您想要多次发送或接收某些固定数据时，更喜欢结构体。

 ---
 
 
 ## 创建自己的结构
 
 Swift 允许您以两种方式设计自己的类型，其中最常见的称为结构，或简称为structs。结构可以被赋予它们自己的变量和常量，以及它们自己的函数，然后可以根据需要创建和使用。

 让我们从一个简单的例子开始：我们将创建一个Sport将其名称存储为字符串的结构。结构体内部的变量称为properties，因此这是一个具有一个属性的结构体：

 struct Sport {
     var name: String
 }
 这定义了类型，所以现在我们可以创建和使用它的实例：

 var tennis = Sport(name: "Tennis")
 print(tennis.name)
 我们创建了name和tennis变量，所以我们可以像普通变量一样改变它们：

 tennis.name = "Lawn tennis"
 属性可以像常规变量一样具有默认值，您通常可以依赖 Swift 的类型推断。
 */


//: [Day08-02.-计算属性-Computed properties](@next)

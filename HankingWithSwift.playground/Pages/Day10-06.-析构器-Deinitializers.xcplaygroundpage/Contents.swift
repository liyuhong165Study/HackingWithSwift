//: [Day10-05.-复制对象-Copying objects](@previous)
// 视频教程-析构器 https://www.hackingwithswift.com/sixty/8/6/deinitializers
// 为什么类有析构器而结构没有？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-do-classes-have-deinitializers-and-structs-dont

// 测试: 析构器 https://www.hackingwithswift.com/review/deinitializers

/**
 类和结构之间的第一个区别是类从不带有成员初始化程序。这意味着如果您的类中有属性，则必须始终创建自己的初始化程序。
 类和结构体之间的第二个区别是您可以基于现有类创建一个类——它继承了原始类的所有属性和方法，并且可以在上面添加自己的属性和方法。
 类和结构之间的第三个区别是它们的复制方式。当你复制一个结构体时，原始和副本是不同的东西——改变一个不会改变另一个。当您复制一个class 时，原始和副本都指向同一件事，因此更改一个确实会更改另一个。
 类和结构体之间的第四个区别是类可以有析构器——当类的实例被销毁时运行的代码。
 
 */

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
    
}
for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

/*:
 ## 为什么类有析构器而结构没有？
 
 类的一个小但重要的特性是它们可以有一个析构函数——init()当类实例被销毁时，它会运行一个对应的函数。结构没有析构器，这意味着我们无法判断它们何时被销毁。

 析构器的工作是告诉我们一个类实例何时被销毁。对于结构来说，这相当简单：当拥有它的东西不再存在时，结构就会被销毁。因此，如果我们在方法内创建一个结构体并且方法结束，则该结构体将被销毁。

 但是，类具有复杂的复制行为，这意味着该类的多个副本可以存在于程序的各个部分。所有副本都指向相同的底层数据，因此现在很难判断实际的类实例何时被销毁——指向它的最终变量何时消失。

 在幕后，Swift 执行称为自动引用计数或 ARC 的操作。ARC 跟踪每个类实例存在多少个副本：每次获取类实例的副本时，Swift 将其引用计数加 1，每次销毁副本时，Swift 从其引用计数中减 1。当计数达到 0 时，意味着没有人再引用该类，Swift 将调用其析构函数并销毁该对象。

 因此，结构体没有析构器的一个简单原因是它们不需要它们：每个结构体都有自己的数据副本，因此在销毁时不需要发生任何特殊情况。

 您可以将析构器放在代码中的任何位置，但我喜欢 Anne Cahalan 的这句话：“代码应该像句子一样读起来，这让我觉得我的类应该像章节一样读起来。所以析构器放在最后，它是类的 ~fin~！”
 
 ---
 
 
 ## 析构器
 
 类和结构体之间的第四个区别是类可以有析构器——当类的实例被销毁时运行的代码。

 为了演示这一点，这里有一个Person带有name属性、一个简单的初始值设定项和一个printGreeting()打印消息的方法的类：

 class Person {
     var name = "John Doe"

     init() {
         print("\(name) is alive!")
     }

     func printGreeting() {
         print("Hello, I'm \(name)")
     }
 }
 我们将Person在循环中创建该类的几个实例，因为每次循环都会创建一个新人然后销毁：

 for _ in 1...3 {
     let person = Person()
     person.printGreeting()
 }
 现在是析构器。这将在Person实例被销毁时调用：

 deinit {
     print("\(name) is no more!")
 }
 
 */


//: [Day10-07.-可变性-Mutability](@next)

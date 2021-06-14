//: [Day10-01.-创建自己的类-Creating your own classes](@previous)
// 视频教程-类继承 https://www.hackingwithswift.com/sixty/8/1/creating-your-own-classes
// 为什么 Swift 类没有成员初始化器？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-both-classes-and-structs

// 测试: 类继承 https://www.hackingwithswift.com/review/creating-your-own-classes

/**
 类和结构之间的第一个区别是类从不带有成员初始化程序。这意味着如果您的类中有属性，则必须始终创建自己的初始化程序。
 类和结构体之间的第二个区别是您可以基于现有类创建一个类——它继承了原始类的所有属性和方法，并且可以在上面添加自己的属性和方法。
 */
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")
let poodle = Poodle(name: "Poodle")



/*:
 ## 为什么 Swift 类没有成员初始化器？
 
 Swift 结构的众多有用特性之一是它们带有合成的成员初始化器，让我们只需指定其属性即可创建结构的新实例。然而，Swift 的类没有这个功能，这很烦人——但为什么他们没有呢？

 主要原因是类具有继承性，这会使成员初始化器难以使用。想一想：如果我构建了一个你继承的类，然后在我的类中添加了一些属性，那么你的代码就会崩溃——你依赖于我的成员初始化器的所有那些地方突然不再起作用。

 因此，Swift 有一个简单的解决方案：不是自动生成成员初始化器，类的作者必须手动编写自己的初始化器。这样，您可以根据需要添加任意数量的属性，而不会影响您的类的初始化程序，也不会影响从您的类继承的其他人。而当你做决定更改初始化，你做你自己，因此完全清楚任何继承类的含义。
 
 ---
 
 
 ## 类继承
 
 类和结构体之间的第二个区别是您可以基于现有类创建一个类——它继承了原始类的所有属性和方法，并且可以在上面添加自己的属性和方法。

 这称为类继承或子类化，您继承的类称为“父”类或“超”类，新类称为“子”类。

 这是Dog我们刚刚创建的类：

 class Dog {
     var name: String
     var breed: String

     init(name: String, breed: String) {
         self.name = name
         self.breed = breed
     }
 }
 我们可以基于名为 的类创建一个新类Poodle。它将继承Dog默认情况下相同的属性和初始化程序：

 class Poodle: Dog {

 }
 但是，我们也可以提供Poodle自己的初始化程序。我们知道它总是有品种“贵宾犬”，所以我们可以创建一个只需要一个name属性的新初始化器。更好的是，我们可以让Poodle初始化Dog程序直接调用初始化程序，以便进行所有相同的设置：

 class Poodle: Dog {
     init(name: String) {
         super.init(name: name, breed: "Poodle")
     }
 }
 出于安全原因，Swift 总是让你super.init()从子类调用——以防万一父类在创建时做了一些重要的工作。


 */


//: [Day10-03.-覆盖方法-Overriding methods](@next)

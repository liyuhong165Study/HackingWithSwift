//: [Day09-06.-结构总结-Structs summary](@previous)
// 视频教程-创建自己的类 https://www.hackingwithswift.com/sixty/8/1/creating-your-own-classes
// Swift 的成员初始化器如何工作？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-both-classes-and-structs

// 测试: 创建自己的类 https://www.hackingwithswift.com/review/creating-your-own-classes

/**
 类和结构之间的第一个区别是类从不带有成员初始化程序。这意味着如果您的类中有属性，则必须始终创建自己的初始化程序。

 */
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")



/*:
 ## 为什么 Swift 有类和结构体？
 
 类和结构使 Swift 开发人员能够创建具有属性和方法的自定义复杂类型，但它们有五个重要区别：

 类不带有合成的成员初始化器。
 一个类可以建立在（“继承自”）另一个类上，获得它的属性和方法。
 结构的副本总是唯一的，而类的副本实际上指向相同的共享数据。
 类有析构器，它们是在类的实例被销毁时调用的方法，但结构没有。
 常量类中的变量属性可以自由修改，但是常量结构中的变量属性不能。
 我很快会更详细地解释这些差异，但重点是它们存在并且它们很重要。大多数 Swift 开发人员在可能的情况下更喜欢使用结构而不是类，这意味着当你选择一个类而不是一个结构时，你这样做是因为你想要上述行为之一。
 
 ---
 
 
 ## 创建自己的类
 
 类与结构的相似之处在于它们允许您创建具有属性和方法的新类型，但它们有五个重要的区别，我将一次一个地向您介绍这些区别中的每一个。

 类和结构之间的第一个区别是类从不带有成员初始化程序。这意味着如果您的类中有属性，则必须始终创建自己的初始化程序。

 例如：

 class Dog {
     var name: String
     var breed: String

     init(name: String, breed: String) {
         self.name = name
         self.breed = breed
     }
 }
 创建该类的实例看起来就像它是一个结构一样：

 let poppy = Dog(name: "Poppy", breed: "Poodle")
 
 
 */


//: [Day10-02.-类继承-Class inheritance](@next)

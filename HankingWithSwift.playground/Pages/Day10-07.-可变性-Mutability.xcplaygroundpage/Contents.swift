//: [Day10-06.-析构器-Deinitializers](@previous)
// 视频教程-可变性 https://www.hackingwithswift.com/sixty/8/7/mutability
// 为什么可以更改常量类中的变量属性？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-can-variable-properties-in-constant-classes-be-changed

// 测试: 可变性 https://www.hackingwithswift.com/review/mutability

/**
 类和结构之间的第一个区别是类从不带有成员初始化程序。这意味着如果您的类中有属性，则必须始终创建自己的初始化程序。
 类和结构体之间的第二个区别是您可以基于现有类创建一个类——它继承了原始类的所有属性和方法，并且可以在上面添加自己的属性和方法。
 类和结构之间的第三个区别是它们的复制方式。当你复制一个结构体时，原始和副本是不同的东西——改变一个不会改变另一个。当您复制一个class 时，原始和副本都指向同一件事，因此更改一个确实会更改另一个。
 类和结构体之间的第四个区别是类可以有析构器——当类的实例被销毁时运行的代码。
 类和结构之间的最后一个区别是它们处理常量的方式。如果您有一个具有可变属性的常量结构，则无法更改该属性，因为结构本身是常量。
 */

//class Singer {
//    var name = "Taylor Swift"
//}
class Singer {
    let name = "Taylor Swift"
}
let taylor = Singer()
//taylor.name = "Ed Sheeran"
print(taylor.name)


/*:
 ## 为什么可以更改常量类中的变量属性？
 
 结构体和类之间微小但重要的区别之一是它们处理属性可变性的方式：

 变量类可以改变变量属性
 常量类可以改变变量属性
 变量结构可以改变变量属性
 常量结构不能改变变量属性
 原因在于类和结构体之间的根本区别：一个指向内存中的某些数据，而另一个指向一个值，例如数字 5。

 考虑这样的代码：

 var number = 5
 number = 6
 我们不能简单地将数字 5 定义为 6，因为那没有意义——它会破坏我们对数学的了解。相反，该代码删除了分配给的现有值，number并改为赋予它数字 6。

 这就是结构体在 Swift 中的工作方式：当我们改变它的一个属性时，我们实际上是在改变整个结构体。当然，在幕后 Swift 可以做一些优化，这样它就不会在我们每次更改其中的一部分时真正丢弃整个值，但从我们的角度来看，这就是它的处理方式。

 所以，如果改变结构的一部分有效意味着破坏和重新创建整个结构，希望你能明白为什么常量结构不允许改变它们的变量属性——这意味着破坏和重新创建应该是常量的东西，这是不可能的。

 类不是这样工作的：您可以更改其属性的任何部分，而无需销毁和重新创建值。因此，常量类可以自由更改其变量属性。


 ---
 
 
 ## 可变性
 
 类和结构之间的最后一个区别是它们处理常量的方式。如果您有一个具有可变属性的常量结构，则无法更改该属性，因为结构本身是常量。

 但是，如果您有一个具有可变属性的常量类，则可以更改该属性。因此，类在mutating改变属性的方法中不需要关键字；只有结构才需要。

 这种差异意味着即使类被创建为常量，您也可以更改类的任何变量属性——这是完全有效的代码：

 class Singer {
     var name = "Taylor Swift"
 }

 let taylor = Singer()
 taylor.name = "Ed Sheeran"
 print(taylor.name)
 如果您想阻止这种情况发生，您需要使属性保持不变：

 class Singer {
     let name = "Taylor Swift"
 }

 */


//: [Day10-08.-班级总结-Classes summary](@next)

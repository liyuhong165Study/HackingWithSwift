//: [Day13-09.-开关案例-Switch case](@previous)


// 视频教程-类 https://www.hackingwithswift.com/read/0/16/classes


//: 基本案例
// ❌写法
//class Person {
//    var clothes: String
//    var shoes: String
//}

class Person {
    var clothes: String
    var shoes: String

    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}
//:  类继承
class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}
// 初始化一个类
//var taylor = Singer(name: "Taylor", age: 25)
//taylor.name
//taylor.age
//taylor.sing()


class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}
var taylor = CountrySinger(name: "Taylor", age: 25)
taylor.sing()

class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}


/*:
 

 ## 类

 
 Swift 有另一种构建复杂数据类型的方法，称为类。它们看起来与结构相似，但有许多重要的区别，包括：

 您不会为您的类获得自动成员初始化器；你需要自己写。
 您可以将一个类定义为基于另一个类，添加您想要的任何新内容。
 当你创建一个类的实例时，它被称为一个对象。如果您复制该对象，则默认情况下，两个副本都指向相同的数据——更改一个，副本也会更改。
 所有这三个都是巨大的差异，因此在继续之前我将更深入地介绍它们。

 初始化一个对象
 如果我们要将Person结构体转换为Person类，Swift 不会让我们这样写：

 class Person {
     var clothes: String
     var shoes: String
 }
 这是因为我们将这两个属性声明为String，如果您还记得的话，这意味着它们绝对必须有一个值。这在结构体中很好，因为 Swift 会自动为我们生成一个成员初始化器，迫使我们为这两个属性提供值，但这不会发生在类中，因此 Swift 无法确定它们会被赋予值。

 有三种解决方案：将两个值设为可选字符串，给它们默认值，或者编写我们自己的初始化程序。第一个选项很笨拙，因为它在我们的代码中所有不需要的地方都引入了可选项。第二个选项有效，但有点浪费，除非实际使用这些默认值。这就留下了第三种选择，而且确实是正确的一种：编写我们自己的初始化程序。

 为此，在被调用的类中创建一个方法init()，它接受我们关心的两个参数：

 class Person {
     var clothes: String
     var shoes: String

     init(clothes: String, shoes: String) {
         self.clothes = clothes
         self.shoes = shoes
     }
 }
 在该代码中，有两件事可能会让您眼前一亮。

 首先，你不要func在你的init()方法之前写，因为它很特别。其次，因为传入的参数名和我们要赋值的属性名是一样的，所以你用的self.来表达你的意思——“clothes这个对象的属性应该设置clothes为传入的参数”。如果您愿意，您可以为它们指定唯一的名称——这取决于您。

 重要提示： Swift 要求所有非可选属性在初始化程序结束时或初始化程序调用任何其他方法时都有一个值——以先到者为准。

 类继承
 类和结构体之间的第二个区别是类可以相互构建以产生更大的东西，称为类继承。这是 Cocoa Touch 中广泛使用的一种技术，即使在最基本的程序中也是如此，因此您应该掌握它。

 让我们从一些简单的事情开始：一个Singer具有属性的类，即它们的名称和年龄。至于方法，会有一个简单的初始化器来处理设置属性，加上一个sing()输出一些词的方法：

 class Singer {
     var name: String
     var age: Int

     init(name: String, age: Int) {
         self.name = name
         self.age = age
     }

     func sing() {
         print("La la la la")
     }
 }
 我们现在可以通过调用该初始化程序来创建该对象的实例，然后读出其属性并调用其方法：

 var taylor = Singer(name: "Taylor", age: 25)
 taylor.name
 taylor.age
 taylor.sing()
 这是我们的基本类，但我们将在它的基础上进行构建：我想定义一个包含CountrySinger该类所做的一切的Singer类，但是当我调用sing()它时，我想打印“卡车、吉他和酒”。

 您当然可以将原始文件复制并粘贴Singer到一个名为的新类中，CountrySinger但这是一种懒惰的编程方式，如果您稍后更改Singer并忘记复制它们，它会再次困扰您。相反，Swift 有一个更聪明的解决方案：我们可以定义CountrySinger为基于Singer，它会获得所有的属性和方法供我们构建：

 class CountrySinger: Singer {

 }
 冒号是魔法的所在：它的意思是“CountrySinger扩展” Singer。现在，这个新CountrySinger类（称为子Singer类）尚未向（称为父类或超类）添加任何内容。我们希望它有自己的sing()方法，但在 Swift 中你需要学习一个新的关键字：override。这意味着“我知道这个方法是由我的父类实现的，但我想为这个子类更改它。”

 使用override关键字很有帮助，因为它使您的意图清晰。它还允许 Swift 检查您的代码：如果您不使用overrideSwift，则不会让您更改从超类中获得的方法，或者如果您使用override但没有任何要覆盖的方法，Swift 会指出您的错误。

 所以，我们需要使用override func，像这样：

 class CountrySinger: Singer {
     override func sing() {
         print("Trucks, guitars, and liquor")
     }
 }
 现在修改taylor对象的创建方式：

 var taylor = CountrySinger(name: "Taylor", age: 25)
 taylor.sing()
 如果您更改CountrySinger为 just，Singer您应该能够在结果窗格中看到不同的消息。

 现在，为了让事情变得更复杂，我们将定义一个名为HeavyMetalSinger. 但这次我们将存储一个新属性，称为noiseLevel定义这个特定的重金属歌手喜欢用麦克风尖叫的音量。

 这会导致一个问题，需要以一种非常特殊的方式来解决这个问题：

 Swift 希望所有非可选属性都有一个值。
 我们Singer班没有noiseLevel财产。
 因此，我们需要创建一个HeavyMetalSinger接受噪声级别的自定义初始化程序。
 这个新的初始化器还需要知道重金属歌手的nameand age，所以它可以将它传递给超类Singer。
 将数据传递给超类是通过方法调用完成的，并且在给定所有属性值之前，您无法在初始化程序中进行方法调用。
 因此，我们需要先设置我们自己的属性 ( noiseLevel) 然后传递其他参数以供超类使用。
 这听起来可能非常复杂，但在代码中却很简单。这是HeavyMetalSinger该类，并带有自己的sing()方法：

 class HeavyMetalSinger: Singer {
     var noiseLevel: Int

     init(name: String, age: Int, noiseLevel: Int) {
         self.noiseLevel = noiseLevel
         super.init(name: name, age: age)
     }

     override func sing() {
         print("Grrrrr rargh rargh rarrrrgh!")
     }
 }
 注意它的初始化器如何接受三个参数，然后调用super.init()传递name并传递age给Singer超类 - 但只有在设置了它自己的属性之后。super在处理对象时，你会看到很多用法，它只是意味着“在我继承的类上调用一个方法”。它通常用于表示“让我的父类先做它需要做的一切，然后我再做我的额外工作。”

 类继承是一个很大的话题，所以如果它还不清楚，请不要担心。但是，您还需要了解一件事：类继承通常跨越多个级别。例如，A 可以从 B 继承，B 可以从 C 继承，C 可以从 D 继承，依此类推。这使您可以构建功能并在多个类上重用，从而有助于保持代码模块化且易于理解。

 使用 Objective-C 代码
 如果你想让 Apple 操作系统的某些部分调用你的 Swift 类的方法，你需要用一个特殊的属性来标记它：@objc. 这是“Objective-C”的缩写，该属性有效地将该方法标记为可用于运行较旧的Objective-C代码——这几乎适用于所有iOS、macOS、watchOS和tvOS。例如，如果您要求系统在一秒钟过去后调用您的方法，您需要用@objc.

 现在不要太担心@objc——我不仅会在稍后的上下文中解释它，而且 Xcode 总是会在需要时告诉你。或者，如果您不想使用@objc单个方法，您可以将其放在@objcMembers您的类之前，以自动使其所有方法可用于 Objective-C。

 值与引用
 当你复制一个结构体时，整个事情都会被复制，包括它的所有值。这意味着更改结构的一个副本不会更改其他副本——它们都是独立的。对于类，对象的每个副本都指向同一个原始对象，因此如果您更改一个对象，它们都会更改。Swift 将结构称为“值类型”，因为它们只是指向一个值，而将类称为“引用类型”，因为对象只是对实际值的共享引用。

 这是一个重要的区别，它意味着结构体和类之间的选择是一个重要的区别：

 如果您想拥有一个可以在适当位置传递和修改的共享状态，那么您正在寻找类。您可以将它们传递给函数或将它们存储在数组中，在那里修改它们，并将该更改反映在程序的其余部分中。
 如果你想避免一个副本不能影响所有其他副本的共享状态，你正在寻找结构。您可以将它们传递给函数或将它们存储在数组中，在那里修改它们，并且它们不会在其他任何被引用的地方发生变化。
 如果我要总结结构体和类之间的这一主要区别，我会说：类提供了更大的灵活性，而结构体提供了更多的安全性。作为基本规则，您应该始终使用结构，直到您有使用类的特定理由。
 */



//: [Next](@next)

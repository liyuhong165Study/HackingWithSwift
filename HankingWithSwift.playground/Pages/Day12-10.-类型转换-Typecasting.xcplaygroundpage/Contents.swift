//: [Day12-09.-可失败的初始化程序-Failable initializers](@previous)
// 视频教程-类型转换 https://www.hackingwithswift.com/sixty/10/10/typecasting
// 为什么 Swift 需要协议？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-is-type-casting-useful-in-swift

// 测试: 类型转换 https://www.hackingwithswift.com/review/typecasting


class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}


/*:
 ## 什么时候类型转换在 Swift 中有用？
 
 类型转换让我们告诉 Swift 一个它认为是类型 A 的对象实际上是类型 B，这在处理协议和类继承时很有帮助。

 如您所见，协议让我们可以将通用功能组合在一起，以便我们可以共享代码。然而，有时我们需要朝着相反的方向前进——我们需要能够看到“你有一个符合协议的对象，但我希望你让我将它用作特定类型。”

 为了证明这一点，这里有一个简单的类层次结构：

 class Person {
     var name = "Anonymous"
 }

 class Customer: Person {
     var id = 12345
 }

 class Employee: Person {
     var salary = 50_000
 }
 我为每个属性使用了默认值，因此我们不需要编写初始化程序。

 我们可以为每一个创建一个实例，并将它们添加到同一个数组中：

 let customer = Customer()
 let employee = Employee()
 let people = [customer, employee]
 因为Customer和Employee都继承自Person，Swift 会认为该people常量是一个Person数组。所以，如果我们遍历people我们只能够访问的name每个项目阵列中-或至少我们将只能够做到这一点，如果不是因为类型转换：

 for person in people {
     if let customer = person as? Customer {
         print("I'm a customer, with id \(customer.id)")
     } else if let employee = person as? Employee {
         print("I'm an employee, earning $\(employee.salary)")
     }
 }
 如您所见，它尝试先转换person为Customer，然后再转换为Employee。如果任一测试通过，我们就可以使用属于该类的额外属性以及name来自父类的属性。

 Swift 中并没有特别反对类型转换，但我会说重复的类型转换可能意味着您的代码中存在潜在问题。更具体地说，当 Swift 理解你正在处理的数据时，它的效果最好，并且类型转换有效地对 Swift 说：“我知道的信息比你多。” 如果你能找到方法将这些信息传达给 Swift 以便它也能理解它，那通常效果会更好
 
 ---
 
 
 ## 类型转换
 
 Swift 必须始终知道每个变量的类型，但有时您知道的信息比 Swift 多。例如，这里有三个类：

 class Animal { }
 class Fish: Animal { }

 class Dog: Animal {
     func makeNoise() {
         print("Woof!")
     }
 }
 我们可以创建几条鱼和几条狗，并将它们放入一个数组中，如下所示：

 let pets = [Fish(), Dog(), Fish(), Dog()]
 Swift 可以看到两者Fish并Dog继承自Animal该类，因此它使用类型推断来pets生成Animal.

 如果我们想遍历pets数组并要求所有的狗吠叫，我们需要执行一个类型转换：Swift 将检查每个宠物是否是一个Dog对象，如果是，我们可以调用makeNoise().

 这使用了一个名为 的新关键字as?，它返回一个可选的：nil如果类型转换失败，它将是，否则返回一个转换类型。

 下面是我们如何在 Swift 中编写循环：

 for pet in pets {
     if let dog = pet as? Dog {
         dog.makeNoise()
     }
 }

 
 */


//: [Day12-11.-选项摘要-Optionals summary](@next)

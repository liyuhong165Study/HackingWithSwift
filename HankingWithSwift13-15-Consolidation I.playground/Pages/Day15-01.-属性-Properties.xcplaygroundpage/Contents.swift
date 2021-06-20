//: [Day13-09.-开关案例-Switch case](@previous)


// 视频教程-属性 https://www.hackingwithswift.com/read/0/17/properties


//: 基本案例
//struct Person {
//    var clothes: String
//    var shoes: String
//
//    func describe() {
//        print("I like wearing \(clothes) with \(shoes)")
//    }
//}
//
//let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
//let other = Person(clothes: "short skirts", shoes: "high heels")
//taylor.describe()
//other.describe()

//: 属性监听器
//struct Person {
//    var clothes: String {
//        willSet {
//            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
//        }
//
//        didSet {
//            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
//        }
//    }
//}
//
//func updateUI(msg: String) {
//    print(msg)
//}
//
//var taylor = Person(clothes: "T-shirts")
//taylor.clothes = "short skirts"

//: 计算属性
struct Person {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person(age: 25)
print(fan.ageInDogYears)



/*:
 

 ## 属性

 

 结构和类（统称为“类型”）可以有自己的变量和常量，这些被称为属性。这些使您可以将值附加到您的类型以唯一地表示它们，但是因为类型也可以有方法，所以您可以让它们根据自己的数据行事。

 现在让我们看一个例子：

 struct Person {
     var clothes: String
     var shoes: String

     func describe() {
         print("I like wearing \(clothes) with \(shoes)")
     }
 }

 let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
 let other = Person(clothes: "short skirts", shoes: "high heels")
 taylor.describe()
 other.describe()
 如您所见，当您在方法中使用属性时，它将自动使用属于同一对象的值。

 财产观察员
 Swift 允许您添加要在属性即将更改或已更改时运行的代码。例如，这通常是在值更改时更新用户界面的好方法。

 有两种属性观察器：willSet和didSet，它们在属性更改之前或之后被调用。在willSetSwift 中，您的代码为您的代码提供了一个名为的特殊值，该值newValue包含将要成为的新属性值，并且didSet您被赋予oldValue表示先前的值。

 让我们将两个属性观察器附加到结构的clothes属性上Person：

 struct Person {
     var clothes: String {
         willSet {
             updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
         }

         didSet {
             updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
         }
     }
 }

 func updateUI(msg: String) {
     print(msg)
 }

 var taylor = Person(clothes: "T-shirts")
 taylor.clothes = "short skirts"
 这将打印出消息“我正在从 T 恤改为短裙”和“我刚刚从 T 恤改为短裙”。

 计算属性
 可以创建实际上是幕后代码的属性。uppercased()例如，我们已经使用了字符串的方法，但还有一个称为capitalized 根据需要计算的属性，而不是每个字符串总是存储其自身的大写版本。

 要创建计算属性，请在属性后放置一个左大括号，然后使用get或set在适当的时间执行操作。例如，如果我们想添加一个ageInDogYears自动返回一个人的年龄乘以 7的属性，我们会这样做：

 struct Person {
     var age: Int

     var ageInDogYears: Int {
         get {
             return age * 7
         }
     }
 }

 var fan = Person(age: 25)
 print(fan.ageInDogYears)
 计算属性在 Apple 的代码中越来越常见，但在用户代码中不太常见。

 注意：如果您打算仅将它们用于读取数据，则可以完全删除该get部分，如下所示：

 var ageInDogYears: Int {
     return age * 7
 }

 */



//: [Next](@next)

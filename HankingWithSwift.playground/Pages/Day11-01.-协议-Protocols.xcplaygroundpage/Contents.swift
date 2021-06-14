//: [Day10-08.-班级总结-Classes summary](@previous)
// 视频教程-协议 https://www.hackingwithswift.com/sixty/9/1/protocols
// 为什么 Swift 需要协议？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-protocols

// 测试: 协议 https://www.hackingwithswift.com/review/protocols


protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

let user = User.init(id: "18510811")
displayID(thing: user)



/*:
 ## 为什么 Swift 需要协议？
 
 协议让我们定义结构、类和枚举应该如何工作：它们应该具有哪些方法，以及它们应该具有哪些属性。Swift 会为我们强制执行这些规则，这样当我们说一个类型符合某个协议时，Swift 会确保它具有该协议所需的所有方法和属性。

 在实践中，协议允许我们做的是用更一般的术语处理我们的数据。所以，与其说“这个buy()方法必须接受一个Book对象”，我们可以说“这个方法可以接受任何符合Purchaseable协议的东西。那可能是一本书，但也可能是一部电影、一辆车、一些咖啡等等——它使我们的简单方法更加灵活，同时确保 Swift 为我们执行规则。

 在代码方面，我们buy()仅适用于书籍的简单方法如下所示：

 struct Book {
     var name: String
 }

 func buy(_ book: Book) {
     print("I'm buying \(book.name)")
 }
 为了创建一个更灵活的、基于协议的方法，我们首先创建一个协议来声明我们需要的基本功能。这可能有很多方法和属性，但在这里我们只想说我们需要一个名称字符串：

 protocol Purchaseable {
     var name: String { get set }
 }
 现在我们可以继续定义我们需要的任意数量的结构，每个结构都通过一个名称字符串符合该协议：

 struct Book: Purchaseable {
     var name: String
     var author: String
 }

 struct Movie: Purchaseable {
     var name: String
     var actors: [String]
 }

 struct Car: Purchaseable {
     var name: String
     var manufacturer: String
 }

 struct Coffee: Purchaseable {
     var name: String
     var strength: Int
 }
 您会注意到这些类型中的每一种都具有未在协议中声明的不同属性，这没关系——协议确定了所需的最低功能，但我们总是可以添加更多。

 最后，我们可以重写该buy()函数，使其接受任何类型的Purchaseable项目：

 func buy(_ item: Purchaseable) {
     print("I'm buying \(item.name)")
 }
 在该方法中，我们可以name安全地使用项目的属性，因为 Swift 将保证每个Purchaseable项目都有一个name属性。它不保证我们定义的任何其他属性都会存在，只有那些在协议中明确声明的属性才会存在。

 因此，协议让我们可以创建我们的类型如何共享功能的蓝图，然后在我们的函数中使用这些蓝图，让它们处理更广泛的数据。
 
 ---
 
 
 ## 协议
 
 协议是一种描述某物必须具有哪些属性和方法的方式。然后你告诉 Swift 哪些类型使用该协议——这个过程被称为采用或遵守协议。

 例如，我们可以编写一个接受带有id属性的东西的函数，但我们并不关心使用的是什么类型的数据。我们将从创建一个Identifiable协议开始，它要求所有符合的类型都有一个id可以读取（“get”）或写入（“set”）的字符串：

 protocol Identifiable {
     var id: String { get set }
 }
 我们无法创建该协议的实例——它是对我们想要的东西的描述，而不是我们可以直接创建和使用的东西。但是我们可以创建一个符合它的结构：

 struct User: Identifiable {
     var id: String
 }
 最后，我们将编写一个displayID()接受任何Identifiable对象的函数：

 func displayID(thing: Identifiable) {
     print("My ID is \(thing.id)")
 }
 
 */


//: [Day11-02.-协议继承-Protocol inheritance](@next)

//: [Day12-04.-强制展开-Force unwrapping](@previous)
// 视频教程-隐式展开的选项 https://www.hackingwithswift.com/sixty/10/5/implicitly-unwrapped-optionals
// 为什么 Swift 需要协议？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-both-implicitly-unwrapped-optionals-and-regular-optionals

// 测试: 隐式展开的选项 https://www.hackingwithswift.com/review/implicitly-unwrapped-optionals


let age: Int! = nil



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
 
 
 ## 隐式展开的选项
 
 与常规选项一样，隐式解包的选项可能包含一个值，也可能是nil. 但是，与常规的可选项不同，您不需要打开它们就可以使用它们：您可以像使用它们一样，就好像它们根本不是可选项一样。

 通过在类型名称后添加感叹号来创建隐式解包选项，如下所示：

 let age: Int! = nil
 因为它们的行为就像它们已经解包一样，所以您不需要if let或guard let使用隐式解包的可选项。但是，如果您尝试使用它们并且它们没有任何价值——如果它们是nil——您的代码就会崩溃。

 隐式解包的选项存在是因为有时一个变量会以 nil 开始，但在您需要使用它之前总是有一个值。因为您知道在您需要它们时它们将具有价值，所以不必一直写作是有帮助if let的。

 话虽如此，如果您能够使用常规选项，这通常是一个好主意。
 */


//: [Day12-06.-零聚结-Nil coalescing](@next)

//: [Day05-02.接受参数-Accepting parameters](@previous)
// 视频教程-返回值 https://www.hackingwithswift.com/sixty/5/3/returning-values
// 何时在 Swift 函数中不需要 return 关键字？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-is-the-return-keyword-not-needed-in-a-swift-function
// 如何从函数中返回两个或多个值？ https://www.hackingwithswift.com/quick-start/understanding-swift/how-can-you-return-two-or-more-values-from-a-function

// 测试: 返回值 https://www.hackingwithswift.com/review/returning-values

func square(number: Int) -> Int {
    return number * number
}

let result = square(number: 8)
print(result)


/*:
 ## 什么时候 Swift 函数中不需要 return 关键字？
 
 我们使用return关键字从 Swift 中的函数发送回值，但有一种特殊情况不需要它：当我们的函数只包含一个表达式时。

 现在，“表达”不是我经常使用的词，但在这里理解很重要。当我们编写程序时，我们会做这样的事情：

 5 + 8
 或这个：

 greet("Paul")
 这些代码行被解析为单个值：5 + 8 被解析为 13，并且greet("Paul")可能返回一个字符串“嗨，保罗！”

 甚至一些更长的代码也会被解析为单个值。例如，如果我们有三个这样的布尔常量：

 let isAdmin = true
 let isOwner = false
 let isEditingEnabled = false
 然后这行代码将解析为单个值：

 isOwner == true && isEditingEnabled || isAdmin == true
 那会变成“真”，因为即使isOwner是假的，isAdmin也是真的，所以整个表达式都变成真了。

 因此，我们编写的许多代码都可以解析为单个值。但是也有很多代码无法解析为单个值。例如，这里的值是什么：

 let name = "Otis"
 是的，这会创建一个常量，但它不会成为它的值——我们不能写return let name = "Otis".

 类似地，我们这样写条件：

 if name == "Maeve" {
     print("Hello, Maeve!")
 }
 这也不能成为一个单一的值，因为它在那里有一个条件。

 现在，这一切都很重要，因为这些分区都有名称：当我们的代码可以归结为单个值时，例如 true、false、“Hello”或 19，我们将其称为表达式。表达式是可以分配给变量或使用print(). 另一方面，当我们执行诸如创建变量、启动循环或检查条件之类的操作时，我们将其称为statement。

 所有这些都很重要，因为return当我们的函数中只有一个表达式时，Swift 允许我们跳过使用关键字。所以，这两个函数做同样的事情：

 func doMath() -> Int {
     return 5 + 5
 }

 func doMoreMath() -> Int {
     5 + 5
 }
 记住，里面的表达式可以是你想要的长度，但它不能包含任何语句——没有循环、没有条件、没有新变量等等。

 现在，您可能认为这是毫无意义的，并且您总是会使用return关键字。但是，此功能在 SwiftUI 中非常常用，因此值得牢记。

 在我们完成之前，我想再提一件事。你已经看到了我们如何能够利用运营商，如+，&&和||我们的表情，因为他们仍然决心为单个值。嗯，三元运算符也可以在这里工作，实际上这是它的主要用例：当你想要一个单一的表达式，但不想有一个完整的if.

 为了证明这一点，请考虑以下函数：

 func greet(name: String) -> String {
     if name == "Taylor Swift" {
         return "Oh wow!"
     } else {
         return "Hello, \(name)"
     }
 }
 如果我们想删除return那里的语句，我们不能这样写：

 func greet(name: String) -> String {
     if name == "Taylor Swift" {
         "Oh wow!"
     } else {
         "Hello, \(name)"
     }
 }
 这是不允许的，因为我们在那里有实际的语句 -if和else.

 但是，我们可以像这样使用三元运算符：

 func greet(name: String) -> String {
     name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
 }
 那是一个单一的表达。如果name等于“Taylor Swift”，那么它将解决如下问题：

 斯威夫特会检查是否name是泰勒斯威夫特。
 是的，name == "Taylor Swift"也是如此。
 三元运算符将意识到它的条件现在为真，因此它将选择“Oh wow”而不是“Hello, (name)”。
 因此，当该函数运行时，它有效地归结为：

 func greet(name: String) -> String {
     "Oh wow!"
 }
 让我们将条件功能放入一行代码是三元运算符真正闪耀的地方。而且，由于 SwiftUI 大量使用单表达式函数，这意味着三元运算符在 SwiftUI 中也得到了大量使用。


 ---
 
 ## 什么时候 Swift 函数中不需要 return 关键字？

 Swift 的函数只有一个返回类型，比如Intor String，但这并不意味着我们只能返回一个值。实际上，我们可以通过两种方式发回多条数据：

 使用元组，例如 (name: String, age: Int)
 使用某种集合，例如数组或字典。
 如果您很难理解为什么元组很重要，那么这是一个非常好的例子，说明它们真正脱颖而出。

 如果我们想创建一个返回一个人的名字和姓氏的函数，我们可以这样做：

 func getUser() -> [String] {
     ["Taylor", "Swift"]
 }

 let user = getUser()
 print(user[0])
 这会发回一个包含两个字符串的数组并将其存储在 中user，它完成了这项工作。但是，由于两个原因，该代码存在问题：

 有些文化首先写他们的姓氏（“Swift Taylor”），因此其他开发人员可能希望索引 0 是姓氏，索引 1 是名字。
 如果我们插入一个中间名怎么办？它会将“Swift”从索引 1 推回到索引 2，从而导致问题。
 该函数的第二遍可能如下所示：

 func getUser() -> [String: String] {
     ["first": "Taylor", "last": "Swift"]
 }

 let user = getUser()
 print(user["first"])
 这绝对更好，因为现在我们可以确定在哪里可以找到每个值：user["first"]无论我们是否更改字典顺序或插入中间名，都将始终是“Taylor”。

 但是，此解决方案仍然不理想：

 我们需要使用字符串查找值，这意味着user["First"]会失败，因为我们写的是“First”而不是“first”。
 我们的字典可能不包含任何值——也许我们的用户是 Prince、Plato、Beyonce 或其他只有一个名字的人。
 每次我们从字典中读取一个值时，我们都需要解开可选项，因为 Swift 无法确定该值肯定存在。
 元组可以通过让我们明确返回哪些数据来解决这个问题：它的名称、它的类型、它的顺序以及它是否是可选的。这意味着我们可以编写函数来更安全地返回多个值：

 func getUser() -> (first: String, last: String) {
     (first: "Taylor", last: "Swift")
 }

 let user = getUser()
 print(user.first)
 现在我们已经编写了不受所有问题影响的代码：

 我们的数据必须首先返回名字，然后返回姓氏。
 如果我们插入一个中间名，它不会影响其他值的位置。
 我们不能在读取值时犯区分大小写的错误。
 我们不可能不取回名字或姓氏——如果有人只使用一个名字，那么我们将取回一个空字符串。
 没有可选性。
 因此，元组非常适合从函数返回多个值。
 
 
 
 ---
 
 
 ## 返回值
 
 除了接收数据，函数还可以发回数据。为此，在函数的参数列表后写一个破折号，然后写一个右尖括号，然后告诉 Swift 将返回什么样的数据。

 在你的函数中，return如果你有一个值，你可以使用关键字来发送一个值。然后您的函数立即退出，返回该值 - 不会运行该函数的其他代码。

 我们可以重写我们的square()函数来返回一个值而不是直接打印它：

 func square(number: Int) -> Int {
     return number * number
 }
 现在我们可以在函数运行时获取返回值，并在那里打印：

 let result = square(number: 8)
 print(result)
 如果您需要返回多个值，这是何时使用元组的完美示例。
 */

//: [Day05-04.参数标签-Returning values](@next)

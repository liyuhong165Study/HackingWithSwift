//: [Day03-01. 算术运算符-Arithmetic Operators](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/3/2/operator-overloading
// 为什么 Swift 需要运算符重载？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-operator-overloading

// 测试：运算符重载 https://www.hackingwithswift.com/review/operator-overloading


let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf


/*:
 ## 为什么 Swift 需要运算符重载？
 运算符重载允许相同的运算符 –  +、*、/等 – 根据您使用的数据执行不同的操作。这使我们可以在各种有意义的地方使用这些符号：我们可以使用 + 将两个整数相加，我们可以使用 + 将一个字符串附加到另一个字符串，我们可以使用 + 连接两个数组，等等。

 当然，这并不意味着我们可以在任何地方使用所有运算符：我们可以从另一个整数中减去一个整数，但是从另一个字符串中减去一个字符串意味着什么？它会从开头还是结尾减去？它会减去字符串的所有实例还是仅减去一个？

 当您的技能增长时，您会发现您可以根据需要创建自己的自定义运算符，甚至可以修改 Swift 现有的运算符。
 
 ---
 
 
 ## 运算符重载
 
 Swift 支持运算符重载，这是一种奇特的说法，即运算符的作用取决于您使用它的值。例如，对+整数求和如下：

 let meaningOfLife = 42
 let doubleMeaning = 42 + 42
 但+也加入字符串，像这样：

 let fakers = "Fakers gonna "
 let action = fakers + "fake"
 您甚至可以使用+连接数组，如下所示：

 let firstHalf = ["John", "Paul"]
 let secondHalf = ["George", "Ringo"]
 let beatles = firstHalf + secondHalf
 请记住，Swift 是一种类型安全的语言，这意味着它不会让您混合类型。例如，您不能将整数添加到字符串中，因为它没有任何意义。
 
 
 */

//: [Day03-03. 复合赋值运算符-Compound assignment operators](@next)

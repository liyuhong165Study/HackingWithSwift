//: [Day12-01.-处理缺失数据-Handling missing data](@previous)
// 视频教程-展开选项 https://www.hackingwithswift.com/sixty/10/2/unwrapping-optionals
// 为什么 Swift 让我们解开可选项？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-make-us-unwrap-optionals

// 测试: 展开选项 https://www.hackingwithswift.com/review/unwrapping-optionals


var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}


/*:
 ## 为什么 Swift 让我们解开可选项？
 
 Swift 的可选项既可以存储一个值，例如 5 或“Hello”，也可以什么都没有。正如您可能想象的那样，只有当数字确实存在时才能将两个数字加在一起，这就是为什么 Swift 不会让我们尝试使用可选项的值，除非我们解开它们——除非我们查看可选项的内部，检查实际上那里有一个价值，然后为我们取出价值。

 在 Swift 中有几种方法可以做到这一点，但最常见的一种是if let，像这样：

 func getUsername() -> String? {
     "Taylor"
 }

 if let username = getUsername() {
     print("Username is \(username)")
 } else {
     print("No username")
 }
 该getUsername()函数返回一个可选字符串，这意味着它可以是一个字符串，也可以是 nil。我已经让它在这里总是返回一个值以使其更容易理解，但这并没有改变 Swift 的想法——它仍然是一个可选的字符串。

 那一if let行结合了许多功能：

 它调用getUsername()函数。
 它从那里接收可选字符串。
 它查看可选字符串内部是否有值。
 因为它确实有一个值（它是“Taylor”），该值将从可选值中取出并放入一个新的username常量中。
 然后条件被认为是真的，它会打印“用户名是泰勒”。
 所以，if let是一种使用可选项的极其简洁的方式，同时负责检查和提取值。

 可选项的一个最重要的特性是 Swift 不会让我们在没有首先打开它们的情况下使用它们。这为我们所有的应用程序提供了大量的保护，因为它消除了不确定性：当你处理一个字符串时，你知道它是一个有效的字符串，当你调用一个返回整数的函数时，你知道它立即是安全的用。当你的代码中确实有可选项时，Swift 将始终确保你正确处理它们——检查和解包它们，而不是仅仅将不安全的值与已知的安全数据混合在一起。
 
 ---
 
 
 ## 展开选项
 
 可选字符串可能包含像“Hello”这样的字符串，或者它们可能为零——什么都没有。

 考虑这个可选字符串：

 var name: String? = nil
 如果我们使用会发生什么name.count？一个真正的字符串有一个count属性来存储它有多少个字母，但这是nil- 它是空内存，不是字符串，所以它没有count.

 因此，尝试读取name.count是不安全的，Swift 不允许这样做。相反，我们必须查看 optional 的内部，看看里面有什么——这个过程被称为unwrapping。

 解包可选项的一种常用方法是使用if let语法，它用条件解包。如果可选项中有一个值，那么您可以使用它，但如果没有，则条件失败。

 例如：

 if let unwrapped = name {
     print("\(unwrapped.count) letters")
 } else {
     print("Missing name.")
 }
 如果name持有一个字符串，它将unwrapped作为常规放入其中String，我们可以count在条件中读取它的属性。或者，如果name为空，else则将运行代码。
 
 */


//: [Day12-03.-用警卫解开-Unwrapping with guard](@next)

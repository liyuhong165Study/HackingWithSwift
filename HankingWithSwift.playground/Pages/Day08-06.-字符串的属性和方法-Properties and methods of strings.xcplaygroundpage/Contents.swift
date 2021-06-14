//: [Day08-05.-变异方法-Mutating methods](@previous)
// 视频教程-字符串的属性和方法 https://www.hackingwithswift.com/sixty/7/6/properties-and-methods-of-strings
// 为什么 Swift 中的字符串是结构体？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-are-strings-structs-in-swift

// 测试: 字符串的属性和方法 https://www.hackingwithswift.com/review/properties-and-methods-of-strings


let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())




/*:
 ## 为什么 Swift 中的字符串是结构体？
 
 在许多其他语言中，字符串不是结构体——它们只是一个字母序列，仅此而已。Swift 采取了不同的方法：字符串是结构体，而且实际上具有多种功能。

 几乎所有 Swift 的核心类型都实现为结构体，包括字符串、整数、数组、字典，甚至布尔值。这并非偶然：结构在 Swift 中简单、快速且高效，这意味着我们可以根据需要创建和销毁它们，而无需过多担心性能。

 然而，字符串是一个需要解决的特别复杂的问题，因为语言很复杂。是的，像英文字母这样的东西只需要 26 个小写和 26 个大写字符，但 Swift 还需要能够处理其他脚本——希伯来文、阿拉伯文、西里尔文、泰米尔文等等。哎呀，有超过50,000个汉字！

 事情变得真正复杂的是我们如何处理表情符号，因为肤色和性别有无数的变化。不是将每个表情符号存储为一个独特的“字母”，而是通常分解为多个特殊字母。例如，表情符号“两个女人手拉手，左边女人浅肤色，右边女人中等深肤色”，斯威夫特实际上存储了：

 女士
 浅肤色
 加入
 握手
 加入
 女士
 中深肤色
 所以，在那个实例中，我们实际上使用七个“字母”来存储一个表情符号——这很复杂！

 因此，Swift 将处理字符串的所有功能封装到字符串本身中。这意味着我们可以使用诸如count属性之类的功能，而不必担心它会误算表情符号。另一种选择是拥有数百个独立函数来处理字符串及其复杂性，这并不令人愉快。

 现在您了解了字符串的一些复杂性，再看看这些属性和方法：

 print(string.count)
 print(string.hasPrefix("Hello"))
 print(string.uppercased())
 print(string.sorted())
 我希望你能看到他们代表我们做了很多工作！如果 emoji 中的单个字符被拉开，用 emoji 对字符串进行排序会导致各种问题。幸运的是，Swift 的字符串旨在为我们处理所有这些工作，尽管它在这里和那里引起了一些颠簸，但总体收益是巨大的。
 
 ---
 
 
 ## 字符串的属性和方法
 
 到目前为止，我们已经使用了很多字符串，结果证明它们是结构体——它们有自己的方法和属性，我们可以用来查询和操作字符串。

 首先，让我们创建一个测试字符串：

 let string = "Do or do not, there is no try."
 您可以使用其count属性读取字符串中的字符数：

 print(string.count)
 他们有一个hasPrefix()方法，如果字符串以特定字母开头，则返回 true：

 print(string.hasPrefix("Do"))
 您可以通过调用其uppercased()方法来大写字符串：

 print(string.uppercased())
 你甚至可以让 Swift 将字符串的字母排序为一个数组：

 print(string.sorted())
 字符串有更多的属性和方法——尝试输入string.以打开 Xcode 的代码完成选项。
 
 */


//: [Day06-12.-高级闭包-闭幕总结-Closures summary](@next)

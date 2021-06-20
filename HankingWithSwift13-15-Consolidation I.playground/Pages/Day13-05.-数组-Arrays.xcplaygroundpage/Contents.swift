//: [Day13-04.-字符串插值-String interpolation](@previous)


// 视频教程-数组 https://www.hackingwithswift.com/read/0/6/arrays

//: 数组

var evenNumbers = [2, 4, 6, 8]
//var songs = ["Shake it Off", "You Belong with Me", "Back to December"]

//var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
//songs[0]
//songs[1]
//songs[2]

//var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
//type(of: songs)

//: Array<String>.Type
//var songs = ["Shake it Off", "You Belong with Me", "Back to December", 3]
//type(of: songs)

// ❌
//var songs: [String] = ["Shake it Off", "You Belong with Me", "Back to December", 3]
//: Any
//var songs: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

//: 创建数组
//var songs: [String]
//songs[0] = "Shake it Off"

//: 构造
//var songs: [String] = []
//var songs = [String]()

//: 数组运算符
var songs = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs2 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both = songs + songs2
both += ["Everything has Changed"]

/*:

 ## 数组

 
 数组允许您将大量值组合到一个集合中，然后通过它们在集合中的位置访问这些值。Swift 使用类型推断来确定数组保存的数据类型，如下所示：

 var evenNumbers = [2, 4, 6, 8]
 var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
 可以看到，Swift 使用方括号来标记数组的开始和结束，数组中的每一项都用逗号分隔。

 当谈到从数组中读取项目时，有一个问题：Swift 从 0 开始计数。这意味着第一个项目是 0，第二个项目是 1，第三个项目是 2，依此类推。尝试将其放入您的游乐场：

 var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
 songs[0]
 songs[1]
 songs[2]
 这将在结果窗格中打印“Shake it Off”、“You Belong with Me”和“Back to December”。

 一个项目在数组中的位置称为它的索引，你可以通过提供它的索引从数组中读取任何项目。但是，您确实需要小心：我们的数组中包含三个项目，这意味着索引 0、1 和 2 效果很好。但是如果你尝试阅读songs[3]你的 Playground 将停止工作——如果你在真实的应用程序中尝试它会崩溃！

 因为你已经通过给它三个字符串来创建你的数组，Swift 知道这是一个字符串数组。您可以通过使用操场中的特殊命令来确认这一点，该命令将打印出任何变量的数据类型，如下所示：

 var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
 type(of: songs)
 这将打印Array<String>.Type到结果窗格中，告诉您 Swift 认为songs是一个字符串数组。

 假设你犯了一个错误，不小心在数组的末尾放了一个数字。现在试试这个，看看结果窗格打印什么：

 var songs = ["Shake it Off", "You Belong with Me", "Back to December", 3]
 type(of: songs)
 这次你会看到一个错误。错误不是因为 Swift 不能处理像这样的混合数组——我马上会告诉你如何做到这一点！– 而是因为 Swift 很有帮助。您将看到的错误消息是，“异构集合文字只能推断为 '[Any]'；如果这是有意的，请添加显式类型注释。” 或者，用通俗的英语来说，“看起来这个数组是为保存多种类型的数据而设计的——如果你真的是这个意思，请明确说明。”

 类型安全很重要，虽然 Swift 可以让数组保存任何类型的数据这一点很巧妙，但这种特殊情况是一个意外。幸运的是，我已经说过您可以使用类型注释来准确指定您希望数组存储什么类型的数据。要指定数组的类型，请用括号括住要存储的数据类型，如下所示：

 var songs: [String] = ["Shake it Off", "You Belong with Me", "Back to December", 3]
 既然我们已经告诉 Swift 我们只想在数组中存储字符串，它总是会拒绝运行代码，因为 3 不是字符串。

 如果您真的希望数组保存任何类型的数据，请使用特殊Any数据类型，如下所示：

 var songs: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]
 创建数组
 如果您使用上面显示的语法创建一个数组，Swift 会创建该数组并用我们指定的值填充它。如果您想创建数组然后稍后填充它，事情就不是那么简单了——这个语法不起作用：

 var songs: [String]
 songs[0] = "Shake it Off"
 原因是一开始看起来不必要的迂腐，但具有深刻的潜在性能影响，所以我担心你只是坚持它。简而言之，写作var songs: [String]告诉 Swift “该songs变量将保存一个字符串数组”，但它实际上并没有创建该数组。它不分配任何 RAM，也不做任何实际创建 Swift 数组的工作。它只是说在某个时候会有一个数组，它会保存字符串。

 有几种方法可以正确表达这一点，此时可能最有意义的一种方法是：

 var songs: [String] = []
 它使用类型注释来明确我们想要一个字符串数组，并为其分配一个空数组（即[]部分）。

 您通常还会看到此构造：

 var songs = [String]()
 这意味着同样的事情：()告诉 Swift 我们想要创建有问题的数组，然后将其分配给songs使用类型推断。此选项短两个字符，因此程序员更喜欢它也就不足为奇了！

 数组运算符
 您可以在数组上使用一组有限的运算符。例如，您可以使用 + 运算符合并两个数组，如下所示：

 var songs = ["Shake it Off", "You Belong with Me", "Love Story"]
 var songs2 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
 var both = songs + songs2
 您还可以使用 += 来添加和分配，如下所示：

 both += ["Everything has Changed"]

 */



//: [Day13-06.-字典-Dictionaries](@next)

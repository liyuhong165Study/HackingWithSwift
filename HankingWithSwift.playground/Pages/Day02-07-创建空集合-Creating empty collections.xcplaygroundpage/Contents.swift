//: [Day02-06-字典默认值-Dictionary default values](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/2/7/creating-empty-collections
// 为什么需要使用  https://www.hackingwithswift.com/quick-start/understanding-swift/why-would-you-want-to-create-an-empty-collection
// 测试 https://www.hackingwithswift.com/review/creating-empty-collections

var teams = [String: String]()
teams["Paul"] = "Red"
var results = [Int]()
var words = Set<String>()
var numbers = Set<Int>()
var scores = Dictionary<String, Int>()
var results1 = Array<Int>()




/*:
 ## 为什么要创建一个空集合？

 当你刚学习 Swift 时，经常会看到这样的例子：

 let names = ["Eleanor", "Chidi", "Tahani", "Jianyu", "Michael", "Janet"]
 这是一个由六个字符串组成的常量数组，因为它是常量，这意味着我们不能向数组添加更多的东西——我们在创建数组时知道我们所有的项目，所以我们程序的其余部分只是使用这些固定数据。

 但有时您事先并不知道所有数据，在这些情况下，创建一个空集合然后在计算数据时添加内容更为常见。

 例如，我们有names上面的固定数组，如果我们想找出哪些名称以 J 开头，那么我们将：

 创建一个名为类似的空字符串数组 jNames
 遍历原始names数组中的每个名称并检查它是否以“J”开头
 如果是，请将其添加到jNames数组中。
 当我们检查完所有的名字后，我们最终会得到两个字符串jNames：Jianyu 和 Janet。当然，如果我们的检查是哪些名称以“X”开头，那么我们最终会在数组中没有名称——这没关系。它开始是空的，结束是空的。

 在本书的后面，我们将研究使所有这些工作成为现实所需的 Swift 代码。
 
 ---
 
 
 ## 创建空集合

 
 数组、集合和字典被称为集合，因为它们将值收集在一个地方。

 如果你想创建一个空集合，只需写下它的类型，然后加上左括号和右括号。例如，我们可以创建一个空字典，其中包含键和值的字符串，如下所示：

 var teams = [String: String]()
 然后我们可以稍后添加条目，如下所示：

 teams["Paul"] = "Red"
 同样，您可以创建一个空数组来存储整数，如下所示：

 var results = [Int]()
 例外是创建一个空集，这是不同的：

 var words = Set<String>()
 var numbers = Set<Int>()
 这是因为 Swift 只对字典和数组有特殊的语法；其他类型必须使用尖括号语法，如集合。

 如果需要，您可以使用类似的语法创建数组和字典：

 var scores = Dictionary<String, Int>()
 var results = Array<Int>()

 */

//: [Day02-08-枚举-Enumerations](@next)

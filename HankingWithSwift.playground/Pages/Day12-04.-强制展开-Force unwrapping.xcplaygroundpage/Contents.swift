//: [Day12-03.-用警卫解开-Unwrapping with guard](@previous)
// 视频教程-强制展开 https://www.hackingwithswift.com/sixty/10/4/force-unwrapping
// 什么时候应该在 Swift 中强制解包选项？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-force-unwrap-optionals-in-swift

// 测试: 强制展开 https://www.hackingwithswift.com/review/force-unwrapping


let str = "5"
//let num = Int(str)
let num = Int(str)!



/*:
 ## 什么时候应该在 Swift 中强制解包选项？
 
 Optionals 通过阻止我们访问不存在的数据来为我们提供 Swift 的安全性。但是，在少数情况下，您可能需要考虑强制展开可选项，而不是使用if let或类似的。

 记住，你什么也不想做的事就是风险崩溃-你不想强迫展开可选才发现，它的零。这可能会为您节省一两行代码，但“永远不会崩溃”并不是强制解包的充分理由，我们都可以做得更好。

 我将进入更详细的时刻，但我想给你的代码一些例子，我很高兴能力解包和代码应该不会被强制解开。这些示例取自真实世界的 Apple API，您可能还没有遇到过，但没关系——您会明白的。

 首先，此代码URL从字符串创建一个：

 let url = URL(string: "https://www.apple.com")!
 这是一个手动输入的 URL，我已经验证它是正确的，我很乐意强制打开它。这在运行时不会出错，也没有意外的余地。将其与使用字符串插值进行比较：

 let url = URL(string: "https://www.\(website)")!
 这是不是安全的，并且不能进行验证，如果给定的格式不正确的网址可能会崩溃。

 其次，此代码创建一个从 1 到 10 的封闭范围，然后使用以下randomElement()方法从该范围中选择一个随机数：

 let randomNumber = (1...10).randomElement()!
 randomElement()返回一个可选值，因为我们使用它的范围或数组可能是空的。但是，在这种情况下，您可以看到我已经手动输入了范围，所以我知道总会有一个数字回来，而且这在运行时不会出错。将其与使用未知数组进行比较：

 var items = [Int]()

 for i in 1...10 {
     if isLuckyNumber(i) {
         items.append(i)
     }
 }

 let randomNumber = items.randomElement()!
 这个isLuckyNumber()函数有什么作用？我没有把它包含在这里，因为它并不重要，但它仍然是一些在这里不可见的代码，所以我们不能保证items在我们调用randomElement()它时会有任何项目。

 希望您能看到两者之间的区别：一种情况可以保证 100% 的时间有效，而另一种情况“应该”或“几乎总是有效”。这就是这里的关键：你永远不应该强行打开那些不会 100% 成功的东西。就是这样——这就是整个规则。

 现在，有些人不同意，而是认为不应该发生强制解包。我可以看到他们的观点，而且我当然认为自己以前是这样。然而，我发现处理所有这些不可能的情况的额外代码令人分心，因为它们给我们的代码添加了混乱，实际上从不做任何事情。

 更烦人的是没有明智的选择的时候。例如，如果您使枚举符合CaseIterable协议，Swift 将为allCases您的枚举生成一个特殊的数组属性，其中包含按定义顺序排列的所有案例。因此，我们可以创建一个Direction枚举并选择一个随机值，如下所示：

 enum Direction: CaseIterable {
     case north, south, east, west
 }

 let randomDirection = Direction.allCases.randomElement()!
 我们已经定义了一个包含四个 case 的枚举，并且我们要求随机选择一个 case。该randomElement()方法返回一个可选项，因为它就是这样工作的，但我们知道它总是会成功，因为我们的枚举有案例。

 如果我们决定永远不想使用强制解包，我们可以使用什么值来代替——我们可以给什么默认值来randomDirection允许我们的代码安全地继续？

 在这里强制解包不安全的唯一方法是，如果我们从 中删除了四个案例Direction，但即便如此，Swift 也会显示警告，我们将获得意外行为。

 所以，我认为强制展开有时是个好主意，有时甚至是必需的。然而，我并不是提倡你开始在你的程序周围散布感叹号，因为这开始变得混乱。

 相反，更好的主意是创建一些函数和扩展，将您的力展开隔离在一个地方。这意味着您的强制解包可以存储在其行为明确的地方附近，并且您的绝大多数代码不需要直接强制解包。

 例如，我们可以将Direction枚举重写为：

 enum Direction: CaseIterable {
     case north, south, east, west

     static func random() -> Direction {
         Direction.allCases.randomElement()!
     }
 }
 有了这个，我们需要获得随机方向的任何地方都不再需要强制展开：

 let randomDirection = Direction.random()
 在继续之前，我想在这里重申一个关键点：如果您只有 99% 的把握确定强制展开是安全的，则不应使用它。哎呀，即使你 99.999% 确定它是安全的，你也不应该使用它——这相当于十万分之一的崩溃，这真的很糟糕。相反，强制解包应该保留在您的代码绝对保证安全的时候，如上所示。

 有关避免强制展开的讨论，请查看 Alexandre Colucci 的这篇博文：https : //blog.timac.org/2017/0628-swift-banning-force-unwrapping-optionals/
 
 ---
 
 
 ## 强制展开
 
 Optionals 表示可能存在也可能不存在的数据，但有时您可以确定某个值不为零。在这些情况下，Swift 允许您强制解包可选类型：将其从可选类型转换为非可选类型。

 例如，如果您有一个包含数字的字符串，您可以将其转换为Int这样的：

 let str = "5"
 let num = Int(str)
 这num是可选的， Int因为您可能试图转换像“Fish”而不是“5”这样的字符串。

 尽管 Swift 不确定转换是否有效，但您可以看到代码是安全的，因此您可以通过写入!after来强制解包结果Int(str)，如下所示：

 let num = Int(str)!
 Swift 将立即解开可选项并创建num一个常规Int而不是Int?. 但是如果你错了——如果str某个东西不能被转换成整数——你的代码就会崩溃。

 因此，只有在您确定它是安全的情况下才应该强制解包——它通常被称为崩溃操作符是有原因的。
 */


//: [Day12-05.-隐式展开的选项-Implicitly unwrapped optionals](@next)

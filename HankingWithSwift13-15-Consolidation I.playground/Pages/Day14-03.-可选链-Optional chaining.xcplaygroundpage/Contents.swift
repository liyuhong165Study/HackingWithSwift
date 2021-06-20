//: [Day13-09.-开关案例-Switch case](@previous)


// 视频教程-可选链 https://www.hackingwithswift.com/read/0/13/optional-chaining


//: 基本案例
func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}
//: 打印可选项
//let album = albumReleased(year: 2006)
//print("The album is \(album)") //这里输出的是可选项的内容


let str = "Hello world"
print(str.uppercased())

//: 根据可选项 大小写输出
//let album = albumReleased(year: 2006)?.uppercased()
//print("The album is \(album)")

//: 链式打印一个可选项
//let album = albumReleased(year: 2006)?.someOptionalValue?.someOtherOptionalValue?.whatever

//: nil运算符
let album = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album)")


/*:
 

 ## 可选链

 
 使用可选项有时会感觉有点笨拙，而且所有的展开和检查都变得如此繁重，以至于您可能会想抛出一些感叹号来强制展开内容，以便继续工作。不过要小心：如果你强制解包一个没有值的可选项，你的代码将会崩溃。

 Swift 有两种技术可以帮助您减少代码的复杂性。第一个称为可选链，它允许您仅在可选值具有值时运行代码。将以下代码放入您的 Playground 以让我们开始：

 func albumReleased(year: Int) -> String? {
     switch year {
     case 2006: return "Taylor Swift"
     case 2008: return "Fearless"
     case 2010: return "Speak Now"
     case 2012: return "Red"
     case 2014: return "1989"
     default: return nil
     }
 }

 let album = albumReleased(year: 2006)
 print("The album is \(album)")
 这将在结果窗格中输出“专辑是可选的（“泰勒斯威夫特”）”。

 如果我们想将 的返回值转换albumReleased()为大写字母（即“TAYLOR SWIFT”而不是“Taylor Swift”），我们可以调用该uppercased()字符串的方法。例如：

 let str = "Hello world"
 print(str.uppercased())
 问题是，albumReleased()返回一个可选字符串：它可能返回一个字符串，也可能根本不返回任何内容。所以，我们真正的意思是，“如果我们得到一个字符串，就让它大写，否则什么都不做。” 这就是可选链的用武之地，因为它提供的正是这种行为。

 尝试将最后两行代码更改为：

 let album = albumReleased(year: 2006)?.uppercased()
 print("The album is \(album)")
 请注意，那里有一个问号，这是可选的链接：只有在问号之前的所有内容都有值时，才会运行问号之后的所有内容。这不会影响 的基础数据类型album，因为该行代码现在将返回 nil 或将返回大写专辑名称——它仍然是一个可选字符串。

 您的可选链可以是您需要的长度，例如：

 let album = albumReleased(year: 2006)?.someOptionalValue?.someOtherOptionalValue?.whatever
 Swift 会从左到右检查它们，直到找到 nil，然后停止。

 零合并运算符
 这个简单的 Swift 特性让你的代码更简单、更安全，但它的名字如此宏大，以至于很多人都害怕它。这是一种耻辱，因为如果您花时间弄清楚，nil 合并运算符将使您的生活更轻松！

 它的作用是让您说“如果可以，请使用值 A，但如果值 A 为零，则使用值 B”。就是这样。它对可选值特别有用，因为它有效地阻止了它们是可选的，因为你提供了一个非可选值 B。所以，如果 A 是可选的并且有一个值，它就会被使用（我们有一个值。）如果 A 存在并且没有价值， B 被使用（所以我们仍然有一个价值）。无论哪种方式，我们都绝对有价值。

 为了给您一个真实的上下文，请尝试在您的 Playground 中使用以下代码：

 let album = albumReleased(year: 2006) ?? "unknown"
 print("The album is \(album)")
 这个双问号是 nil 合并运算符，在这种情况下，它的意思是“如果albumReleased()返回一个值，则将其放入album变量中，但如果albumReleased()返回 nil，则使用 'unknown' 代替。”

 如果您现在查看结果窗格，您会看到“专辑是泰勒·斯威夫特”印在那里——没有更多的选项。这是因为 Swift 现在可以确定它会返回一个真正的值，要么是因为函数返回了一个值，要么是因为您提供了“未知”。这反过来意味着您不需要打开任何东西或冒崩溃的风险——您可以保证使用真实数据，这使您的代码更安全、更易于使用。
 
 */



//: [Next](@next)

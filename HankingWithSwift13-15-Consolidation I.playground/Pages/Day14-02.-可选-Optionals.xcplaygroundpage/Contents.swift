//: [Day13-09.-开关案例-Switch case](@previous)


// 视频教程-可选 https://www.hackingwithswift.com/read/0/12/optionals
/**
 函数返回值
 函数可选性
 函数可选性 返回 nil
 
 强制解包 ！
    知道一定有值才使用强制解包
 */

//: 基本案例
//func getHaterStatus() -> String {
//    return "Hate"
//}

//: 函数可选参数
//func getHaterStatus() -> String? {
//    return "Hate"
//}

//: 可选参数返回nil
func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

var status: String
func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterAction(status: haterStatus)
}

//:
//func yearAlbumReleased(name: String) -> Int {
//    if name == "Taylor Swift" { return 2006 }
//    if name == "Fearless" { return 2008 }
//    if name == "Speak Now" { return 2010 }
//    if name == "Red" { return 2012 }
//    if name == "1989" { return 2014 }
//
//    return 0
//}


//func yearAlbumReleased(name: String) -> Int? {
//    if name == "Taylor Swift" { return 2006 }
//    if name == "Fearless" { return 2008 }
//    if name == "Speak Now" { return 2010 }
//    if name == "Red" { return 2012 }
//    if name == "1989" { return 2014 }
//
//    return nil
//}


var items = ["James", "John", "Sally"]
func position(of string: String, in array: [String]) -> Int {
    for i in 0 ..< array.count {
        if array[i] == string {
            return i
        }
    }

    return 0
}
let jamesPosition = position(of: "James", in: items)
let johnPosition = position(of: "John", in: items)
let sallyPosition = position(of: "Sally", in: items)
let bobPosition = position(of: "Bob", in: items)

//: 强制解包选项 符号 ！
func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

var year = yearAlbumReleased(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year!)") // 我确定这包含一个值，所以现在强制解开它
}


//: 隐式展开的选项



/*:
 

 ## 可选

 
 Swift 是一种非常安全的语言，我的意思是它努力确保您的代码永远不会以令人惊讶的方式失败。

 代码失败的最常见方式之一是尝试使用错误或丢失的数据。例如，想象一个这样的函数：

 func getHaterStatus() -> String {
     return "Hate"
 }
 该函数不接受任何参数，它返回一个字符串：“Hate”。但是，如果今天是一个特别晴朗的日子，而那些讨厌的人不想讨厌怎么办——然后呢？好吧，也许我们什么都不想要：这个仇恨者今天没有仇恨。

 现在，当谈到字符串时，您可能会认为空字符串是一种很好的交流方式，有时可能确实如此。但是数字如何——0 是“空数字”吗？还是-1？

 在你开始尝试为自己创建想象的规则之前，Swift 有一个解决方案：可选项。可选值是一个可能有值也可能没有值的值。大多数人发现可选选项难以理解，这没关系——我将尝试以多种方式解释它，希望其中一种会奏效。

 现在，想象一下你问某人的调查，“按照 1 到 5 的等级，泰勒·斯威夫特有多棒？” – 如果他们从未听说过她，人们会怎么回答？1 会不公平地批评她，而 5 会在他们不知道泰勒斯威夫特是谁时赞美她。解决方案是可选的：“我根本不想提供数字。”

 当我们使用-> String它时，它的意思是“这肯定会返回一个字符串”，这意味着这个函数不能不返回任何值，因此可以被称为安全的，因为你总是会得到一个可以用作字符串的值。如果我们想告诉 Swift 这个函数可能会返回一个值，也可能不会，我们需要使用它来代替：

 func getHaterStatus() -> String? {
     return "Hate"
 }
 注意额外的问号：String?表示“可选字符串”。现在，在我们的例子中，无论如何我们仍然返回“Hate”，但让我们继续并进一步修改该函数：如果天气晴朗，仇恨者已经翻开新的一页，并放弃了仇恨的生活，所以我们不想返回任何值。在 Swift 中，这个“无值”有一个特殊的名字：nil.

 把函数改成这样：

 func getHaterStatus(weather: String) -> String? {
     if weather == "sunny" {
         return nil
     } else {
         return "Hate"
     }
 }
 它接受一个字符串参数（天气）并返回一个字符串（讨厌状态），但该返回值可能存在也可能不存在——它为零。在这种情况下，这意味着我们可能会得到一个字符串，或者我们可能会得到 nil。

 现在是重要的事情：Swift 希望你的代码真正安全，尝试使用 nil 值是一个坏主意。它可能会使您的代码崩溃，可能会搞乱您的应用程序逻辑，或者可能会使您的用户界面显示错误内容。因此，当你声明一个值是可选的时，Swift 会确保你安全地处理它。

 现在让我们尝试一下：将这些代码行添加到您的 Playground 中：

 var status: String
 status = getHaterStatus(weather: "rainy")
 第一行创建一个字符串变量，第二行将值分配给它getHaterStatus()——今天天气下雨，所以那些讨厌的人肯定讨厌。

 该代码不会运行，因为我们说它status是 type String，它需要一个值，但getHaterStatus()可能不会提供一个值，因为它返回一个可选字符串。也就是说，我们说 中肯定会有一个字符串status，但getHaterStatus()可能什么都不返回。Swift 不会让你犯这个错误，这非常有帮助，因为它有效地阻止了一整类常见错误。

 为了解决这个问题，我们需要让status变量 a String?，或者只是完全删除类型注释并让 Swift 使用类型推断。第一个选项如下所示：

 var status: String?
 status = getHaterStatus(weather: "rainy")
 第二个是这样的：

 var status = getHaterStatus(weather: "rainy")
 无论您选择哪个，该值可能存在也可能不存在，并且默认情况下 Swift 不会让您危险地使用它。例如，想象一个这样的函数：

 func takeHaterAction(status: String) {
     if status == "Hate" {
         print("Hating")
     }
 }
 这需要一个字符串并根据其内容打印一条消息。这个函数接受一个String值，而不是一个String?值——你不能在这里传入一个可选的，它需要一个真正的字符串，这意味着我们不能使用status变量来调用它。

 Swift 有两种解决方案。两者都使用，但一个绝对比另一个更受欢迎。第一个解决方案称为可选解包，它是在使用特殊语法的条件语句中完成的。它同时做两件事：检查一个可选项是否有值，如果有，将它解包成一个非可选类型，然后运行一个代码块。

 语法如下所示：

 if let unwrappedStatus = status {
     // unwrappedStatus contains a non-optional value!
 } else {
     // in case you want an else block, here you go…
 }
 这些if let语句在一行简洁的代码中进行检查和解包，这使得它们非常常见。使用此方法，我们可以安全地解开 的返回值，getHaterStatus()并确保我们只takeHaterAction()使用有效的非可选字符串进行调用。这是完整的代码：

 func getHaterStatus(weather: String) -> String? {
     if weather == "sunny" {
         return nil
     } else {
         return "Hate"
     }
 }

 func takeHaterAction(status: String) {
     if status == "Hate" {
         print("Hating")
     }
 }

 if let haterStatus = getHaterStatus(weather: "rainy") {
     takeHaterAction(status: haterStatus)
 }
 如果您理解这个概念，欢迎您跳到“强制解包选项”的标题。如果您仍然不太确定选项，请继续阅读。

 好吧，如果你还在这里，这意味着上面的解释要么没有意义，要么你有点理解但可能需要一些澄清。Optionals 在 Swift 中被广泛使用，所以你确实需要理解它们。我将尝试以不同的方式再次解释，希望这会有所帮助！

 这是一个新函数：

 func yearAlbumReleased(name: String) -> Int {
     if name == "Taylor Swift" { return 2006 }
     if name == "Fearless" { return 2008 }
     if name == "Speak Now" { return 2010 }
     if name == "Red" { return 2012 }
     if name == "1989" { return 2014 }

     return 0
 }
 它以 Taylor Swift 专辑的名字命名，并返回它的发行年份。但是如果因为我们把 Taylor Swift 和 Hudson Mohawke 混为一谈而用专辑名称“Lantern”来称呼它（一个容易犯的错误，对吧？）那么它会返回 0，因为它不是 Taylor 的专辑之一。

 但是 0 在这里有意义吗？当然，如果这张专辑是在公元 0 年当凯撒奥古斯都成为罗马皇帝时发行的，0 可能是有道理的，但在这里它只是令人困惑——人们需要提前知道 0 意味着“不被承认”。

 一个更好的主意是重新编写该函数，使其返回一个整数（当找到年份时）或 nil（当没有找到任何东西时），这很容易多亏了可选项。这是新功能：

 func yearAlbumReleased(name: String) -> Int? {
     if name == "Taylor Swift" { return 2006 }
     if name == "Fearless" { return 2008 }
     if name == "Speak Now" { return 2010 }
     if name == "Red" { return 2012 }
     if name == "1989" { return 2014 }

     return nil
 }
 现在它返回 nil，我们需要用 using 解开结果，if let因为我们需要检查一个值是否存在。

 如果你现在理解了这个概念，欢迎你跳到“强制解包选项”的标题。如果您仍然不太确定选项，请继续阅读。

 好吧，如果你还在这里，这意味着你真的在为可选项而苦苦挣扎，所以我将最后一次解释它们。

 这是一个名称数组：

 var items = ["James", "John", "Sally"]
 如果我们想编写一个函数来查看该数组并告诉我们特定名称的索引，我们可能会这样写：

 func position(of string: String, in array: [String]) -> Int {
     for i in 0 ..< array.count {
         if array[i] == string {
             return i
         }
     }

     return 0
 }
 循环遍历数组中的所有项目，如果找到匹配则返回其位置，否则返回 0。

 现在尝试运行以下四行代码：

 let jamesPosition = position(of: "James", in: items)
 let johnPosition = position(of: "John", in: items)
 let sallyPosition = position(of: "Sally", in: items)
 let bobPosition = position(of: "Bob", in: items)
 这将输出 0, 1, 2, 0 – James 和 Bob 的位置是相同的，即使一个存在，一个不存在。这是因为我用 0 表示“未找到”。简单的解决方法可能是使 -1 未找到，但无论是 0 还是 -1，您仍然有问题，因为您必须记住特定数字表示“未找到”。

 解决方案是可选的：如果找到匹配，则返回一个整数，否则返回 nil。事实上，这正是该方法的内置“发现阵列”方法使用：someArray.firstIndex(of: someValue)。

 当您处理这些“可能存在，可能不存在”的值时，Swift 会强制您在使用它们之前打开它们，从而承认可能没有值。这就是if let语法的作用：如果可选项有一个值，则解开它并使用它，否则根本不使用它。你不能偶然使用一个可能为空的值，因为 Swift 不允许你这样做。

 如果您仍然不确定可选项如何工作，那么最好的做法是在 Twitter 上问我，我会尽力提供帮助：您可以找到我@twostraws。

 强制解包选项
 Swift 允许您通过使用感叹号字符来覆盖其安全性：!。如果你知道一个可选项肯定有一个值，你可以通过在它后面放置这个感叹号来强制解包它。

 但是请小心：如果您在没有值的变量上尝试此操作，您的代码将崩溃。

 为了组合一个工作示例，这里有一些基础代码：

 func yearAlbumReleased(name: String) -> Int? {
     if name == "Taylor Swift" { return 2006 }
     if name == "Fearless" { return 2008 }
     if name == "Speak Now" { return 2010 }
     if name == "Red" { return 2012 }
     if name == "1989" { return 2014 }

     return nil
 }

 var year = yearAlbumReleased(name: "Red")

 if year == nil {
     print("There was an error")
 } else {
     print("It was released in \(year)")
 }
 那是专辑发行的年份。如果找不到专辑，year将设置为 nil，并打印错误消息。否则，将打印年份。

 或者会吗？好吧，yearAlbumReleased()返回一个可选整数，此代码不if let用于解开该可选整数。结果，它会打印出以下内容：“它是在 Optional(2012) 中发布的”——可能不是我们想要的！

 在代码的这一点上，我们已经检查了我们是否有一个有效的值，所以if let在那里有另一个值来安全地解开可选项是没有意义的。所以，Swift 提供了一个解决方案——将第二个print()调用改为：

 print("It was released in \(year!)")
 注意感叹号：它的意思是“我确定这包含一个值，所以现在强制解开它。”

 隐式展开的选项
 您还可以使用此感叹号语法来创建隐式解包的选项，这正是有些人真正开始感到困惑的地方。所以，请仔细阅读本文！

 常规变量必须包含一个值。示例：String必须包含一个字符串，即使该字符串为空，即"". 它不能为零。
 一个可选的变量可能包含一个值，也可能不会。使用前必须拆开包装。示例：String?可能包含一个字符串，也可能包含 nil。找出答案的唯一方法是打开它。
 隐式解包的可选项可能包含一个值，也可能不包含。但它并不需要在使用前要解开。Swift 不会检查你，所以你需要格外小心。示例：String!可能包含一个字符串，或者它可能包含 nil——这取决于您是否适当地使用它。它就像一个常规的可选，但 Swift 允许您直接访问该值而无需解包安全。如果您尝试这样做，则意味着您知道那里存在价值——但如果您错了，您的应用程序就会崩溃。
 当你在 iOS 上的 UIKit 或 macOS 上的 AppKit 中使用用户界面元素时，你将遇到隐式解包的可选选项的主要时间。这些需要预先声明，但在它们被创建之前你不能使用它们——Apple 喜欢在最后可能的时刻创建用户界面元素，以避免任何不必要的工作。必须不断地解开你肯定知道会有的值很烦人，所以这些都是隐式解开的。

 如果您发现隐式展开的选项有点难以理解，请不要担心 - 随着您使用该语言，它会变得清晰。 */



//: [Next](@next)

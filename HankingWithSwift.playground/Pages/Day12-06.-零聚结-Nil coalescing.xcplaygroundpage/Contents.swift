//: [Day12-05.-隐式展开的选项-Implicitly unwrapped optionals](@previous)
// 视频教程-零聚结 https://www.hackingwithswift.com/sixty/10/6/nil-coalescing
// 什么时候应该在 Swift 中使用 nil 合并？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-nil-coalescing-in-swift

// 测试: 无聚结 https://www.hackingwithswift.com/review/nil-coalescing


func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"



/*:
 ## 什么时候应该在 Swift 中使用 nil 合并？
 
 Nil 合并让我们尝试解开一个可选项，但如果可选项包含 nil，则提供一个默认值。这在 Swift 中非常有用，因为尽管可选是一个很棒的特性，但通常最好有一个非可选——拥有一个真正的字符串而不是“可能是一个字符串，可能为零”——并且 nil 合并是一个很好的方式得到那个。

 例如，如果您正在开发一个聊天应用程序并想要加载用户保存的任何消息草稿，您可以编写如下代码：

 let savedData = loadSavedMessage() ?? ""
 因此，如果loadSavedMessage()返回一个包含字符串的可选项，它将被解包并放入savedData. 但是如果可选项为nil，那么 Swift 将设置savedData为一个空字符串。无论哪种方式，savedData最终都会成为 aString而不是String?。

 如果您愿意，您可以链接 nil 合并，尽管我认为这并不常见。因此，如果您需要，这种代码是有效的：

 let savedData = first() ?? second() ?? ""
 这将尝试运行first()，而如果返回nil尝试运行second()，如果是返回nil那么将使用空字符串。

 请记住，读取字典键将始终返回一个可选的，因此您可能希望在此处使用 nil 合并以确保您返回一个非可选的：

 let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
 let crusherScore = scores["Crusher"] ?? 0
 这绝对是一个品味问题，但字典提供了一种稍微不同的方法，让我们指定找不到键时的默认值：

 let crusherScore = scores["Crusher", default: 0]
 你可以选择你喜欢的任何一个——在阅读字典值时没有真正的区别。
 ---
 
 
 ## 零聚结
 
 nil 合并运算符解开一个可选项并返回其中的值（如果有）。如果没有值——如果可选是nil——则使用默认值代替。无论哪种方式，结果都不是可选的：它要么是可选值内部的值，要么是用作备份的默认值。

 这是一个接受整数作为其唯一参数并返回一个可选字符串的函数：

 func username(for id: Int) -> String? {
     if id == 1 {
         return "Taylor Swift"
     } else {
         return nil
     }
 }
 如果我们使用 ID 15 调用它，我们将返回，nil因为用户未被识别，但是使用 nil 合并我们可以提供“匿名”的默认值，如下所示：

 let user = username(for: 15) ?? "Anonymous"
 这将检查从username()函数返回的结果：如果它是一个字符串，那么它将被解包并放入user，但如果它在nil里面，那么将使用“匿名”代替。
 
 
 */


//: [Day12-07.-可选链-Optional chaining](@next)

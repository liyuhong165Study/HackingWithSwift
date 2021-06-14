//: [Day12-06.-零聚结-Nil coalescing](@previous)
// 视频教程-可选链 https://www.hackingwithswift.com/sixty/10/7/optional-chaining
// 为什么可选链如此重要？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-is-optional-chaining-so-important

// 测试: 可选链接 https://www.hackingwithswift.com/review/optional-chaining


let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()



/*:
 ## 为什么可选链如此重要？
 
 正在为 Xcode 13.0 更新

 Swift 的可选链让我们可以在一行代码中挖掘多个可选层，如果这些层中的任何一层为 nil，那么整行都将变为 nil。

 举一个简单的例子，我们可能有一个名字列表，并希望根据他们姓氏的第一个字母找到他们应该放在哪里：

 let names = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
 let surnameLetter = names["Vincent"]?.first?.uppercased()
 在那里我们使用字典值的可选链接，因为names["Vincent"]可能不存在，并且在读取姓氏的第一个字符时再次使用，因为字符串可能为空。

 可选链是 nil 合并的一个很好的伴侣，因为它允许您挖掘可选项的层，同时如果任何可选项为 nil，还提供合理的回退。

 回到我们的姓氏示例，我们可以自动返回“？” 如果我们无法读取某人姓氏的第一个字母：

 let surnameLetter = names["Vincent"]?.first?.uppercased() ?? "?"
 有关可选链的更多信息，我可以推荐 Andy Bargh 的这篇博文：https : //andybargh.com/optional-chaining/
 
 ---
 
 
 ## 可选链
 
 Swift 为我们提供了使用可选项时的快捷方式：如果你想访问类似a.b.c和b是可选项的东西，你可以在它后面写一个问号来启用可选链接: a.b?.c。

 当该代码运行时，Swift 将检查是否b有值，如果是nil，则该行的其余部分将被忽略——Swift 将nil立即返回。但是如果它有一个值，它将被解包并继续执行。

 为了试试这个，这里有一个名称数组：

 let names = ["John", "Paul", "George", "Ringo"]
 我们将使用该first数组的属性，如果有一个或nil数组为空，它将返回第一个名称。然后我们可以调用uppercased()结果使其成为大写字符串：

 let beatle = names.first?.uppercased()
 这个问号是可选的链接——如果first返回，nil那么 Swift 不会尝试将它大写，而是立即设置beatle为nil。
 
 */


//: [Day12-08.-可选尝试-Optional try](@next)

//: [Day02-05.字典-Dictionaries](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/2/6/dictionary-default-values
// 为什么需要使用  https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-default-values-for-dictionaries
// 测试 https://www.hackingwithswift.com/review/dictionary-default-values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]


/*:
 ## 为什么 Swift 有字典的默认值？

 每当你从字典中读取一个值时，你可能会得到一个值，或者你可能会得到 nil——那个键可能没有值。没有值可能会导致您的代码出现问题，尤其是因为您需要添加额外的功能来安全地处理缺失值，这就是字典默认值的用武之地：它们让您提供一个备份值，以便在您要求的键时使用不存在。

 例如，这是一个存储学生考试成绩的字典：

 let results = [
     "english": 100,
     "french": 85,
     "geography": 75
 ]
 如您所见，他们参加了三门考试，英语、法语和地理的分数分别为 100%、85% 和 75%。如果我们想读取他们的历史分数，我们如何做取决于我们想要什么：

 如果缺失值意味着学生未能参加测试，那么我们可以使用默认值 0，以便我们始终得到一个整数。
 如果缺失值意味着学生还没有参加考试，那么我们应该跳过默认值，而是寻找一个 nil 值。
 因此，在使用字典时并不总是需要默认值，但是当您这样做时很容易：

 let historyResult = results["history", default: 0]
 
 
 ---
 
 
 ## 字典默认值

 
 如果您尝试使用不存在的键从字典中读取值，Swift 会将您发送回nil- 什么也没有。虽然这可能是您想要的，但还有另一种选择：如果我们请求缺少键，我们可以为字典提供一个默认值以供使用。

 为了证明这一点，让我们为两个人创建一个最喜欢的冰淇淋字典：

 let favoriteIceCream = [
     "Paul": "Chocolate",
     "Sophie": "Vanilla"
 ]
 我们可以这样读保罗最喜欢的冰淇淋：

 favoriteIceCream["Paul"]
 但是如果我们尝试读取 Charlotte 最喜欢的冰淇淋，我们会返回 nil，这意味着 Swift 没有该键的值：

 favoriteIceCream["Charlotte"]
 我们可以通过给字典一个默认值“Unknown”来解决这个问题，这样当没有找到 Charlotte 的冰淇淋时，我们会返回“Unknown”而不是 nil：

 favoriteIceCream["Charlotte", default: "Unknown"]


 */

//: [Day02-07-创建空集合-Creating empty collections](@next)

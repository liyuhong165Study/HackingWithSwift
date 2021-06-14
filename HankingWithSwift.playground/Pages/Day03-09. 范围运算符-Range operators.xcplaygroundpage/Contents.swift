//: [Day03-08. 开关语句-Switch statements](@previous)
// 视频教程-三元运算符 https://www.hackingwithswift.com/sixty/3/9/range-operators
// 为什么 Swift 有两个范围运算符？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-two-range-operators

// 测试：范围运算符 https://www.hackingwithswift.com/review/range-operators


let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

/*:
 ## 为什么 Swift 有两个范围运算符？

 当我们考虑值的范围时，英语非常令人困惑。如果我说“给我截至昨天的销售数字”是指包括昨天还是不包括昨天？两者都有各自的用处，因此 Swift 给了我们一种表示它们的方法：..<是指定“最多但不包括”的半开范围和...指定“最多和包括”的闭范围运算符。

 为了在说话时更容易区分，Swift 经常使用非常具体的语言：“1 到 5”表示 1、2、3 和 4，但“1 到 5”表示 1、2、3、4 和 5。如果你请记住，Swift 的数组从索引 0 开始，这意味着包含三个项目的数组在索引 0、1 和 2 处都有项目——这是半开范围运算符的完美用例。

 当您只需要一个范围的一部分时，事情会变得更有趣，例如“从 0 向上的任何内容”或“索引 5 到数组末尾”。你看，这些在编程中非常有用，所以 Swift 通过让我们只指定一个范围的一部分来使它们更容易创建。

 例如，如果我们有一个像这样的名字数组：

 let names = ["Piper", "Alex", "Suzanne", "Gloria"]
 我们可以像这样读出一个人的名字：

 print(names[0])
 使用范围，我们还可以打印一系列值，如下所示：

 print(names[1...3])
 但是，这带来了一个小风险：如果我们的数组不包含至少四个项目，那么1...3就会失败。幸运的是，我们可以使用单边范围来表示“给我 1 到数组的末尾”，如下所示：

 print(names[1...])
 因此，范围非常适合计算特定值，但它们也有助于从数组中读取项目组。

 如果您想继续了解有关 Swift 范围的更多信息，您应该查看 Antoine van der Lee 关于该主题的文章：https : //www.avanderlee.com/swift/ranges-explained/




 
 ---
 
 
 ## 范围运算符
 
 Swift 为我们提供了两种创建范围的方法：..<和...运算符。半开范围运算符 ，..<创建范围直到但不包括最终值，而封闭范围运算符...，创建范围直到并包括最终值。

 例如，范围1..<5包含数字 1、2、3 和 4，而范围1...5包含数字 1、2、3、4 和 5。

 范围对switch块很有帮助，因为您可以将它们用于每个案例。例如，如果有人参加考试，我们可以根据他们的分数打印不同的消息：

 let score = 85

 switch score {
 case 0..<50:
     print("You failed badly.")
 case 50..<85:
     print("You did OK.")
 default:
     print("You did great!")
 }
 和以前一样，default案例必须存在以确保涵盖所有可能的值。

 */

//: [Day03-03. 复合赋值运算符-Compound assignment operators](@next)

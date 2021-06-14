//: [Day03-06. 结合条件-Combining conditions](@previous)
// 视频教程-三元运算符 https://www.hackingwithswift.com/sixty/3/7/the-ternary-operator
// 什么时候应该在 Swift 中使用三元运算符？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-the-ternary-operator-in-swift

// 测试：三元运算符 https://www.hackingwithswift.com/review/the-ternary-operator


let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

/*:
 ## 什么时候应该在 Swift 中使用三元运算符？

 三元运算符让我们可以根据条件从两个结果中选择一个，并且以一种非常简洁的方式进行：

 let isAuthenticated = true
 print(isAuthenticated ? "Welcome!" : "Who are you?")
 有些人非常依赖三元运算符，因为它可以生成非常短的代码，而有些人则尽可能远离它，因为它会使代码更难阅读。

 我非常支持“尽可能避免”阵营，因为即使这段代码更长，我确实发现它更容易遵循：

 if isAuthenticated {
     print("Welcome")
 } else {
     print("Who are you?")
 }
 现在，有一段时间三元运算符得到了大量使用，那就是 SwiftUI。我不想在这里给出代码示例，因为它可能有点让人不知所措，但是如果你愿意，你真的可以用三元运算符去镇上。即便如此，我还是希望尽可能删除它们，以使我的代码更易于阅读，但您应该自己尝试并得出自己的结论。
 
 ---
 
 
 ## 三元运算符
 
 Swift 有一个很少使用的运算符，称为三元运算符。它同时处理三个值，这就是它的名字的由来：它检查第一个值中指定的条件，如果为真则返回第二个值，如果为假则返回第三个值。

 三元运算符是一个条件加上 true 或 false 块，由一个问号和一个冒号分隔，所有这些都使得它很难阅读。下面是一个例子：

 let firstCard = 11
 let secondCard = 10
 print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
 检查两张卡片是否相同，如果条件为真则打印“卡片相同”，如果条件为假则打印“卡片不同”。我们可以使用常规条件编写相同的代码：

 if firstCard == secondCard {
     print("Cards are the same")
 } else {
     print("Cards are different")
 }

 */

//: [Day03-08. 开关语句-Switch statements](@next)

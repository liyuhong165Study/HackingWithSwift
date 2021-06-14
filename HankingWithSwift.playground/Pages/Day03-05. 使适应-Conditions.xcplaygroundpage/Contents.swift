//: [Day03-04. 比较运算符-Comparison operators](@previous)
// 视频教程-比较运算符 https://www.hackingwithswift.com/sixty/3/4/comparison-operators
// 为什么 Swift 需要运算符重载？ https://www.hackingwithswift.com/quick-start/understanding-swift/how-does-swift-let-us-compare-many-types-of-data

// 测试：比较运算符 https://www.hackingwithswift.com/review/comparison-operators


let firstScore = 6
let secondScore = 4

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

"Taylor" <= "Swift"

/*:
 ## if 和 else if 有什么区别？

 当你刚刚学习 Swift 时，可能会有点难以知道什么时候使用else，什么时候使用else if，以及真正的区别是什么。

 好吧，让我们从一个我们可以使用的示例值开始：

 let score = 9001
 （如果您想知道，是的，这确实意味着我们将依赖Dragonball Z meme。）

 我们可以编写一个简单的条件来检查分数是否超过 9000，如下所示：

 if score > 9000 {
     print("It's over 9000!")
 }
 现在，如果我们想为等于或低于 9000 的分数打印不同的消息，我们可以这样写：

 if score > 9000 {
     print("It's over 9000!")
 }

 if score <= 9000 {
     print("It's not over 9000!")
 }
 这工作得很好，你的代码会完全符合你的期望。但是现在我们给了 Swift 更多的工作要做：它需要检查score两次的值。这里用一个简单的整数非常快，但如果我们的数据更复杂，那么它会更慢。

 这就是else进来的地方，因为它的意思是“如果我们检查的条件不正确，请运行此代码。”

 因此，我们可以将之前的代码重写为：

 if score > 9000 {
     print("It's over 9000!")
 } else {
     print("It's not over 9000!")
 }
 有了这个改变，Swift 只会检查score一次，而且我们的代码也更短更容易阅读。

 现在假设我们想要三个消息：一个是当分数超过 9000 时，一个是正好是 9000，另一个是在它低于 9000 时。我们可以这样写：

 if score > 9000 {
     print("It's over 9000!")
 } else {
     if score == 9000 {
         print("It's exactly 9000!")
     } else {
         print("It's not over 9000!")
     }
 }
 同样，这完全没问题，并且可以像您希望的那样工作。但是，我们可以使用 使代码更易于阅读else if，这使我们可以将else与if紧跟其后的组合起来，如下所示：

 if score > 9000 {
     print("It's over 9000!")
 } else if score == 9000 {
     print("It's exactly 9000!")
 } else {
     print("It's not over 9000!")
 }
 为了试试这个，我想使用一个叫做 Swift 的函数print()：你用一些文本运行它，它会被打印出来。

 这使我们的代码更容易阅读和理解，因为我们有一个单一的流程，而不是嵌套条件，我们可以向下阅读。

 您可以根据else if需要进行if任意数量的检查，但您只需要 1和 0 或 1 else。

 ---
 
 
 ## 使适应
 
 现在您知道了一些可以使用if语句编写条件的运算符。你给 Swift 一个条件，如果条件成立，它就会运行你选择的代码。

 为了试试这个，我想使用一个叫做 Swift 的函数print()：你用一些文本运行它，它会被打印出来。

 我们可以使用条件来检查是否有获胜的 21 点牌：

 let firstCard = 11
 let secondCard = 10

 if firstCard + secondCard == 21 {
     print("Blackjack!")
 }
 如果条件为真，括号内的代码 - {和}- 将运行。如果您愿意，可以提供替代代码以在条件为false 时运行，使用else：

 if firstCard + secondCard == 21 {
     print("Blackjack!")
 } else {
     print("Regular cards")
 }
 您还可以使用else if以下方法将条件链接在一起：

 if firstCard + secondCard == 2 {
     print("Aces – lucky!")
 } else if firstCard + secondCard == 21 {
     print("Blackjack!")
 } else {
     print("Regular cards")
 }
 
 */

//: [Day03-06. 结合条件-Combining conditions](@next)

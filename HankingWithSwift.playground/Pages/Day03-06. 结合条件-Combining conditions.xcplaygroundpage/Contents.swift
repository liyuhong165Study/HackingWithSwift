//: [Day03-03. 复合赋值运算符-Compound assignment operators](@previous)
// 视频教程-结合条件 https://www.hackingwithswift.com/sixty/3/6/combining-conditions
// 为什么 Swift 需要运算符重载？ https://www.hackingwithswift.com/quick-start/understanding-swift/how-to-check-multiple-conditions

// 测试：组合条件 https://www.hackingwithswift.com/review/combining-conditions


let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}


if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}


/*:
 ## 如何检查多个条件

 Swift 为我们提供了&&同时||检查多个条件的 和 ，当仅使用两个条件时，它们非常简单。

 例如，假设我们正在运行一个论坛，用户可以在其中发布消息，并删除他们拥有的任何消息。我们可能会写这样的代码：

 if isOwner == true || isAdmin == true {
     print("You can delete this post")
 }
 当我们想要检查几件事情时，事情变得更加混乱。例如，我们可以说普通用户只能删除我们允许的消息，但管理员始终可以删除帖子。我们可能会写这样的代码：

 if isOwner == true && isEditingEnabled || isAdmin == true {
     print("You can delete this post")
 }
 但那是要检查什么？&&和||支票的执行顺序是什么？这可能意味着：

 if (isOwner == true && isEditingEnabled) || isAdmin == true {
     print("You can delete this post")
 }
 意思是“如果我们是所有者并且启用了编辑，您可以删除该帖子，或者如果您是管理员，即使您不拥有该帖子，您也可以删除该帖子。” 这是有道理的：如果允许编辑，人们可以删除自己的帖子，但管理员始终可以删除帖子。

 但是，您也可以这样阅读：

 if isOwner == true && (isEditingEnabled || isAdmin == true) {
     print("You can delete this post")
 }
 现在它的含义完全不同：“如果您是帖子的所有者，并且启用了编辑功能或者您是管理员，那么您可以删除帖子。” 这意味着管理员不能删除他们不拥有的帖子，这是没有意义的。

 显然 Swift 不喜欢这样的歧义，所以它总是会像我们这样解释代码一样：

 if (isOwner == true && isEditingEnabled) || isAdmin == true {
     print("You can delete this post")
 }
 然而，老实说，让 Swift 来解决这个问题并不是一个很好的体验，这就是为什么我们可以自己插入括号来明确我们的意思。

 对此没有具体建议，但实际上，任何时候您混合&&并||处于单一条件下，您几乎肯定应该使用括号来明确结果。
 
 ---
 
 
 ## 结合条件
 
 Swift 有两个特殊的运算符可以让我们将条件组合在一起：它们是&&（发音为“and”）和||（发音为“or”）。

 例如，我们可以像这样检查两个人的年龄是否都超过了某个值：

 let age1 = 12
 let age2 = 21

 if age1 > 18 && age2 > 18 {
     print("Both are over 18")
 }
 也就是说print()，如果双方的年龄超过18岁，他们都没有电话才会发生。事实上，Swift 甚至不会费心检查 的值，age2因为它可以看到age1已经通过测试失败了。

 &&is的替代方案||，如果任一项目通过测试，则评估为真。例如，如果任一年龄超过 18 岁，我们可以打印一条消息：

 if age1 > 18 || age2 > 18 {
     print("At least one is over 18")
 }
 您可以在一个条件下多次使用&&and ||，但不要让事情太复杂，否则会很难阅读！
 
 */

//: [Day03-03. 复合赋值运算符-Compound assignment operators](@next)

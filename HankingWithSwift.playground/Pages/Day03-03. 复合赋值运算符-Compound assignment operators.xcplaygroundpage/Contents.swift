//: [Day03-02. 运算符重载-Operator overloading](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/3/3/compound-assignment-operators
// 为什么 Swift 需要运算符重载？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-compound-assignment-operators

// 测试：复合赋值运算符 https://www.hackingwithswift.com/review/compound-assignment-operators


var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"


/*:
 ## 为什么 Swift 有复合赋值运算符？
 如果您想将 5 添加到score变量中，您完全可以根据score = score + 5需要进行编写。Swift 也允许我们编写score += 5得到相同的结果，但为什么呢？

 嗯，这是不是对性能方面的原因-在引擎盖下，斯威夫特转score += 5成score = score + 5就像我们已经写好了。

 相反，它们只是作为速记提供：一种更简单的编写相同内容的方法。这对我们来说意味着更少的打字、更少的代码阅读，以及更少的犯错机会——全面胜利！
 
 ---
 
 
 ## 复合赋值运算符
 
 Swift 的速记运算符将一个运算符与一个赋值组合在一起，因此您可以就地更改变量。这些看起来像您知道的现有运算符 –  +、-、*和/，但它们=在末尾有一个，因为它们将结果分配回您使用的任何变量。

 例如，如果有人在考试中得了 95 分，但需要扣 5 分，你可以这样写：

 var score = 95
 score -= 5
 同样，您可以使用+=以下方法将一个字符串添加到另一个字符串：

 var quote = "The rain in Spain falls mainly on the "
 quote += "Spaniards"
 
 */

//: [Day03-04. 比较运算符-Comparison operators](@next)

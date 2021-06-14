//: [Day03-总结](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/3/1/arithmetic-operators
// 为什么 Swift 不能为 Int 添加 Double？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-cant-swift-add-a-double-to-an-int

// 为什么 Swift 有一个专门的除法余数运算符？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-a-dedicated-division-remainder-operator


// 测试 https://www.hackingwithswift.com/review/arithmetic-operators


let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore


/*:
 ## 为什么 Swift 不能将 Double 添加到 Int？
 Swift 有多种存储数据的方式，例如字符串、布尔值和数组。但是，当涉及到与数字打交道，它有几个非常具体的类型，包括Double，Float，和Int-还有更多比，但他们是最常用的。

 Swift 有这些不同的数字类型，因为它们以不同的方式存储数据。例如，双方Double并Int采取相同数量的内存来存储他们的数字，但Int只存储整数，而Double小数点后可以存储值。

 因此，在最简单的层面上，您可以看到将 a 添加Double到 anInt是不安全的，因为Double可以存储不能存储的东西，Int并且会在结果整数中丢失。

 现在，你可能会再认为“好了，怎么样，当我们添加Int到Double我们回到一个新的Double即可以存储所有的数据？” 这是一个很好的问题！

 问题是，尽管Double使用与 相同数量的内存来存储它的值Int，但它存储数据的方式有点模糊——它对较小的数字确实具有很高的精度，但是当您开始处理大数字时，模糊精度会越来越高。事实上，有些数字Double甚至无法保存，因此它存储的值略有不同。

 有用的是，当这种情况发生时，Swift 甚至会警告我们。例如，试试这个代码：

 let value: Double = 90000000000000001
 当你构建它时，Swift 会显示一个警告：'90000000000000001' 不能完全表示为 'Double'；它变成'90000000000000000'。

 整数失去了存储小数值的能力，但他们获得了存储精确值的能力。这意味着以下代码不会产生警告，因为数字可以准确存储：

 let value: Int = 90000000000000001
 因此，将 a 添加Double到 an是不安全的，Int因为我们会丢失小数点后的任何数字，而将 an 添加Int到 a也不安全，Double因为我们会丢失一些准确性。

 此时，您可能会想到第三个问题：Swift 让我们仅在确定结果值可以安全存储时才将 an 添加Int到 a怎么样Double？毕竟，我们很少需要处理像 90000000000000001 这样大的数字。

 这是真的，但问题是当你构建你的代码时 Swift 无法判断你的数字是什么，所以我们回到安全问题——当然，你可能大部分时间都在使用安全数字，但是 Swift 是专门设计的，即使发生意外，也不会冒险。

 由于所有这些，Swift 将拒绝在其各种数字类型之间自动转换——您不能将 anInt和 a相加Double，不能将 aFloat和 an相乘Int，等等。
---
 
 
 ## 算术运算符
 
 现在您已经了解了 Swift 中的所有基本类型，我们可以开始使用运算符将​​它们组合在一起。运算符是像+and这样的小数学符号-，而 Swift 有很大范围的运算符。

 这里有几个测试变量供我们使用：

 let firstScore = 12
 let secondScore = 4
 我们可以使用+and 进行加减-：

 let total = firstScore + secondScore
 let difference = firstScore - secondScore
 我们可以使用*and 进行乘除/：

 let product = firstScore * secondScore
 let divided = firstScore / secondScore
 Swift 有一个特殊的运算符来计算除法后的余数：%。它计算一个数字可以放入另一个数字的次数，然后发回剩余的值。

 例如，我们设置secondScore为 4，所以如果我们说13 % secondScore我们会取回 1，因为 4 可以进入 13 三次，余数为 1：

 let remainder = 13 % secondScore
 */
//: [Day03-02. 运算符重载-Operator overloading](@next)

//: [Day05-09. 运行投掷功能-Running throwing functions](@previous)
// 视频教程-输入参数 https://www.hackingwithswift.com/sixty/5/10/inout-parameters
// 什么时候应该使用 inout 参数？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-inout-parameters

// 测试: 输入输出参数 https://www.hackingwithswift.com/review/inout-parameters

func doubleInPlace(number: inout Int) {
    number *= 2
}


var myNum = 10
doubleInPlace(number: &myNum)


/*:
 ## 什么时候应该使用 inout 参数？
 
 正在为 Xcode 13.0 更新

 斯威夫特的inout参数非常普遍使用，但不常用创建。也就是说，它们是您非常依赖的那种东西，甚至可能没有意识到，但是您想用它们创建函数并不常见——至少在您学习时不会。

 它们有多常见？好吧，Swift 的所有操作符实际上都是在幕后实现为函数的——比如+、-等等。是的，它们确实只是幕后的功能。你可以把它们想象成这样：

 func +(leftNumber: Int, rightNumber: Int) -> Int {
     // code here
 }
 因此，在编写时，5 + 3我们实际上是在调用一个名为的函数，+它接受左边的一个整数 (5) 和右边的一个整数 (3)，并返回一个包含结果的新整数。

 现在考虑+=运算符，它同时添加和赋值。那没有返回值，但实际上直接修改了原始值。结果，它看起来更像这样：

 func +=(leftNumber: inout Int, rightNumber: Int) {
     // code here
 }
 从广义上讲，最好避免创建inout参数，直到您确信它们绝对是正确的选择。当您在学习时（实际上当您也很有经验时！）通常最好将一些数据发送到函数并取回新数据，因为这样可以更容易地遵循程序的逻辑。

 这并不意味着inout不值得知道，只是您想在开始之前真正确定自己需要它。
 
 ---
 
 
 ## 输入参数
 
 传递给 Swift 函数的所有参数都是常量，因此您无法更改它们。如果需要，您可以将一个或多个参数作为 传递inout，这意味着它们可以在您的函数内部更改，而这些更改反映在函数外部的原始值中。

 例如，如果您想将一个数字原地加倍——即，直接更改值而不是返回一个新值——您可以编写如下函数：

 func doubleInPlace(number: inout Int) {
     number *= 2
 }
 要使用它，您首先需要创建一个可变整数——您不能将常量整数与 一起使用inout，因为它们可能会被更改。您还需要将参数传递给在其名称之前doubleInPlace使用与号, &，这是明确识别您知道它被用作inout.

 在代码中，你会这样写：

 var myNum = 10
 doubleInPlace(number: &myNum)
 */

//: [Day04-02.While 循环-While loops](@next)

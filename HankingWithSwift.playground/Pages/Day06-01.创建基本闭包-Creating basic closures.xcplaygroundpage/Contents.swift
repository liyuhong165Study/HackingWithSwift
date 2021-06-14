//: [Day05-11. 功能总结-Functions summary](@previous)
// 视频教程-创建基本闭包 https://www.hackingwithswift.com/sixty/6/1/creating-basic-closures
// 闭包到底是什么，为什么 Swift 如此喜欢它们？ https://www.hackingwithswift.com/quick-start/understanding-swift/what-the-heck-are-closures-and-why-does-swift-love-them-so-much

// 测试: 创建基本的闭包 https://www.hackingwithswift.com/review/creating-basic-closures


let driving = {
    print("I'm driving in my car")
}
driving()

/*:
 ## 闭包到底是什么，为什么 Swift 如此喜欢它们？
 
 继续，承认吧：你问的正是这个问题。如果你不这样做，我会感到惊讶，因为闭包是 Swift 最强大的特性之一，但也很容易让人们感到困惑。

 所以，如果你坐在这里想“哇，闭包是真的很辛苦”，不要惊惶-他们是很难的，你发现它们很难仅仅意味着你的大脑正常工作。

 在 Swift 中使用闭包的最常见原因之一是存储功能——能够说“这是我希望你在某个时候做的一些工作，但不一定是现在。” 一些例子：

 延迟后运行一些代码。
 在动画完成后运行一些代码。
 下载完成后运行一些代码。
 当用户从您的菜单中选择一个选项时运行一些代码。
 闭包让我们将一些功能封装在一个变量中，然后将其存储在某个地方。我们也可以从函数返回它，并将闭包存储在其他地方。

 当你在学习时，闭包有点难以阅读——尤其是当它们接受和/或返回自己的参数时。但这没关系：小步走，如果卡住了就回溯，你会没事的。
 ---
 
 
 ## 创建基本闭包
 
 Swift 允许我们像使用任何其他类型（例如字符串和整数）一样使用函数。这意味着您可以创建一个函数并将其分配给一个变量，使用该变量调用该函数，甚至将该函数作为参数传递给其他函数。

 以这种方式使用的函数称为闭包，虽然它们像函数一样工作，但它们的编写方式略有不同。

 让我们从一个打印消息的简单示例开始：

 let driving = {
     print("I'm driving in my car")
 }
 这有效地创建了一个没有名称的函数，并将该函数分配给driving. 您现在可以driving()像调用常规函数一样调用，如下所示：

 driving()


 */

//: [Day06-02.在闭包中接受参数-Accepting parameters in a closure](@next)

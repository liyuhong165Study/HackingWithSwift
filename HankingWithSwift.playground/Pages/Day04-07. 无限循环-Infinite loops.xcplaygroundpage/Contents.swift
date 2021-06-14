//: [Day04-06.跳过项目-Skipping items](@previous)
// 视频教程-无限循环 https://www.hackingwithswift.com/sixty/4/7/infinite-loops
// 为什么要无限循环？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-would-you-want-to-make-an-infinite-loop

// 测试：无限循环 https://www.hackingwithswift.com/review/skipping-items


var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}

/*:
 ## 为什么要无限循环？
 
 无限循环是有效地永远持续下去的程序循环。在 Swift 中，它们看起来像这样：

 while true {
     print("I'm alive!")
 }

 print("I've snuffed it!")
 在那段代码中，“我还活着！” 将永远被一次又一次地打印出来，而“我已经扼杀了它！” 永远不会打印消息——循环不会结束，因此不会打印消息。在实践中，您更有可能在循环中设置某种条件，如下所示：

 var isAlive = false

 while isAlive == true {
     print("I'm alive!")
 }

 print("I've snuffed it!")
 这允许您在准备好时结束循环，因此它们并不是真正无限的。因此，程序员通常将这些伪无限循环称为伪无限循环——它们将运行很长时间，对于永不重启的关键系统，它们可能确实永远运行，但从技术上讲，它们并不是真正的无限循环。

 您可能想知道为什么这种代码很有用，但实际上它很常见。例如，您在 iPhone 上使用的所有应用程序都有无限循环。想一想：当您的应用程序启动时，它需要重复一系列指令，直到它被告知停止：

 检查任何用户输入
 运行您需要的任何代码
 重新绘制屏幕
 重复
 如果您只是查看 Twitter，这可能会持续 10 秒，但如果您正在玩游戏，它可能会持续数小时——或者它可能会运行更长时间。关键是我们不知道循环何时会停止，所以我们只能从 1 循环到 10 亿。

 相反，他们使用了类似于我之前向您展示的无限循环之类的东西——程序将一次又一次地继续运行，直到需要关闭，此时循环可以完成，任何清理代码都可以运行。
 ---
 
 
 ## 无限循环
 
 使用while循环来制作无限循环是很常见的：循环要么没有终点，要么只有在您准备好时才结束。iPhone 上的所有应用程序都使用无限循环，因为它们开始运行，然后不断观察事件，直到您选择退出它们。

 要进行无限循环，只需true用作您的条件。true始终为真，因此循环将永远重复。警告：请确保您有一个退出循环的检查，否则它永远不会结束。

 例如，我们将使用while true打印 John Cage 作品 4'33” 的音乐——如果您不知道，它很出名，因为它有 4 分 33 秒的完全沉默。

 我们可以使用 为这首曲子编写“音乐” while true，并设置一个条件，当我们进行了足够多的循环时退出循环：

 var counter = 0

 while true {
     print(" ")
     counter += 1

     if counter == 273 {
         break
     }
 }
 */

//: [Day03-03. 复合赋值运算符-Compound assignment operators](@next)

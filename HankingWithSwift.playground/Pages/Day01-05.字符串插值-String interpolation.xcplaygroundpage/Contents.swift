//: [Day01-04.双精度和布尔运算-Doubles and Booleans](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/1/5/string-interpolation

var score = 85
var str = "Your score was \(score)"

var results = "The test results are here: \(str)"



/*:
 ## 为什么 Swift 有字符串插值？
 当需要向用户显示信息时——无论是打印出的消息、按钮上的文本，还是任何适合你的应用程序创意的东西——你通常会严重依赖字符串。

 当然，我们不仅仅想要静态字符串，因为我们想要向用户展示他们可以使用的某种相关数据。因此，Swift 为我们提供了字符串插值，作为在运行时将自定义数据注入字符串的一种方式：它用我们提供的数据替换字符串的一个或多个部分。

 例如：

 var city = "Cardiff"
 var message = "Welcome to \(city)!"
 当然，在那个简单的例子中，我们可以直接将我们的城市名称写入字符串中——“欢迎来到加的夫！” – 但在真实的应用程序中，动态插入它很重要，因为它可以让我们显示真实世界的用户数据，而不是我们自己输入的内容。

 Swift 能够在字符串插值中放置任何类型的数据。结果可能并不总是有用，但对于 Swift 的所有基本类型——字符串、整数、布尔值等——结果都很好。

 提示：字符串插值在 Swift 中非常强大。如果您很想知道它可以做什么，请查看我的这篇更高级的博客文章：https : //www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5 -0


 
---
 
 
 ## 字符串插值
 
 您已经了解了如何将字符串的值直接输入到代码中，但 Swift 还有一个称为字符串插值的功能——将变量放入字符串中以使其更有用的能力。

 你可以在你的字符串中放置任何类型的变量——你所要做的就是写一个反斜杠, \，然后在括号中加上你的变量名。例如：
```
 var score = 85
 var str = "Your score was \(score)"
 ```
 正如您在操场输出中看到的，这将str变量设置为“您的分数为 85”。

 您可以根据需要多次执行此操作，如果需要，可以使用字符串制作字符串：
```
 var results = "The test results are here: \(str)"
 ```
 正如您稍后将看到的，字符串插值不仅限于放置变量——您实际上可以在其中运行代码。
 */
//: [Day01-06.常数-Constants](@next)

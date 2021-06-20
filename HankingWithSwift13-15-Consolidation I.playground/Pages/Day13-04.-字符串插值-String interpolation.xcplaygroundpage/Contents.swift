//: [Day13-03.-运营商-Operators](@previous)


// 视频教程-字符串插值 https://www.hackingwithswift.com/read/0/5/string-interpolation

//: 字符串插值

//var name = "Tim McGraw"

//: \()
//var name = "Tim McGraw"
//"Your name is \(name)"

//: +
//var name = "Tim McGraw"
//"Your name is " + name

//: 组合
var name = "Tim McGraw"
var age = 25
var latitude = 36.166667
"Your name is \(name), your age is \(age), and your latitude is \(latitude)"


//var age = 25
//"You are \(age) years old. In another \(age) years you will be \(age * 2)."


/*:

 ## 字符串插值

 
 这实际上是一个非常简单的事情的奇特名称：在字符串中组合变量和常量。

 清除您刚刚编写的所有代码，只留下以下内容：

 var name = "Tim McGraw"
 如果我们想向用户打印一条包含他们姓名的消息，字符串插值就是这么简单：您只需编写一个反斜杠，然后是一个左括号，然后是您的代码，然后是一个右括号，如下所示：

 var name = "Tim McGraw"
 "Your name is \(name)"
 结果窗格现在将“你的名字是蒂姆麦格劳”全部显示为一个字符串，因为字符串插值为我们组合了两者。

 现在，我们可以使用+运算符编写它，如下所示：

 var name = "Tim McGraw"
 "Your name is " + name
 ……但这效率不高，尤其是当您将多个变量组合在一起时。此外，Swift 中的字符串插值足够智能，能够自动处理各种不同的数据类型。例如：

 var name = "Tim McGraw"
 var age = 25
 var latitude = 36.166667

 "Your name is \(name), your age is \(age), and your latitude is \(latitude)"
 这样做+要困难得多，因为 Swift 不允许您向字符串添加整数和双精度数。

 此时，您的结果可能不再适合结果窗格，因此请调整窗口大小或将鼠标悬停在结果上，然后单击显示为内嵌的 + 按钮。

 字符串插值的强大功能之一是，介于\(和之间的所有内容)实际上都可以是完整的 Swift 表达式。例如，您可以使用运算符在其中进行数学运算，如下所示：

 var age = 25
 "You are \(age) years old. In another \(age) years you will be \(age * 2)."


 */



//: [Day13-05.-数组-Arrays](@next)

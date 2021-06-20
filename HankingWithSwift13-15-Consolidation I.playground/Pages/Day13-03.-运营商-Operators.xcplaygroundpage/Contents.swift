//: [Day13-02.-数据类型-Types of Data](@previous)


// 视频教程-运营商 https://www.hackingwithswift.com/read/0/4/operators

//: 运营商
var a = 10
a = a + 1
a = a - 1
a = a * a
var b = 10
b += 10
b -= 10


//var a = 1.1
//var b = 2.2
//var c = a + b

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2


//: 比较运算符
//var a = 1.1
//var b = 2.2
//var c = a + b
//
//c > 3
//c >= 3
//c > 4
//c < 4


//var name = "Tim McGraw"
//name == "Tim McGraw"

var stayOutTooLate = true
stayOutTooLate
!stayOutTooLate


var name = "Tim McGraw"
name == "Tim McGraw"
name != "Tim McGraw"

/*:

 运算符是您在第一堂数学课中学到的小符号：+加、-减、*乘、/除、=赋值等等。它们都存在于 Swift 中，还有一些附加功能。

 让我们尝试一些基础知识——请在您的 Playground 中输入：

 var a = 10
 a = a + 1
 a = a - 1
 a = a * a
 在结果窗格中，您将分别看到 10、11、10 和 100。现在试试这个：

 var b = 10
 b += 10
 b -= 10
 +=是一个运算符，意思是“添加然后分配给”。在我们的例子中，它的意思是“取 的当前值b，加上 10，然后把结果放回b”。正如您可能想象的那样，-=做同样的事情，但减去而不是增加。因此，该代码将在结果窗格中显示 10、20、10。

 其中一些运算符适用于其他数据类型。正如您想象的那样，您可以像这样将两个双打相加：

 var a = 1.1
 var b = 2.2
 var c = a + b
 当涉及到字符串时，+将它们连接在一起。例如：

 var name1 = "Tim McGraw"
 var name2 = "Romeo"
 var both = name1 + " and " + name2
 这会将“蒂姆麦格劳和罗密欧”写入结果窗格。

 您将看到的一种更常见的运算符称为模数，它使用百分比符号编写：%。意思是“将左边的数字除以右边的数字，返回余数”。因此，9 % 3返回 0，因为 3 整除为 9，而10 % 3返回 1，因为 10 除以 3 三次，余数为 1。

 注意：如果您购买了 Hacking with Swift 并使用本课程附带的独家指南，您会发现模数运算符稍后很有用。

 比较运算符
 Swift 有一组运算符可以对值进行比较。例如：

 var a = 1.1
 var b = 2.2
 var c = a + b

 c > 3
 c >= 3
 c > 4
 c < 4
 这表明大于 ( >)、大于或等于 ( >=) 和小于 ( <)。在结果窗口中，您将看到真、真、假、真——这些是布尔值，因为对这些陈述中的每一个的回答只能是真或假。

 如果要检查相等性，则不能使用 =，因为它已经具有含义：它用于为变量赋值。因此，Swift 有一个形式为 的替代方案==，意思是“等于”。例如：

 var name = "Tim McGraw"
 name == "Tim McGraw"
 这将在结果窗格中显示“true”。现在，你可能会注意到的一件事是，在 Swift 中字符串是区分大小写的，这意味着“Tim McGraw”、“TIM MCGRAW”和“TiM mCgRaW”都被认为是不同的。如果==用于比较两个字符串，则需要确保它们具有相同的字母大小写。

 我还想向您介绍另一种运算符，它称为“非”运算符：!。是的，这只是一个感叹号。这使得你的陈述的意思与它所做的相反。例如：

 var stayOutTooLate = true
 stayOutTooLate
 !stayOutTooLate
 这将打印出真、真、假——最后一个值在那里，因为它翻转了前一个真。

 您还可以使用!with=来制作!=或“不等于”。例如：

 var name = "Tim McGraw"
 name == "Tim McGraw"
 name != "Tim McGraw"

 */



//: [Day13-04.-字符串插值-String interpolation](@next)

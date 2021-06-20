//: [Day13-05.-数组-Arrays](@previous)


// 视频教程-数组 https://www.hackingwithswift.com/read/0/7/dictionaries

//: 字典

//var person = ["first": "Taylor", "middle": "Alison", "last": "Swift", "month": "December", "website": "taylorswift.com"]
//person["middle"]
//person["month"]


var person = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

person["middle"]
person["month"]

/*:

 ## 字典

 
 如您所见，Swift 数组是一个集合，您可以在其中使用数字索引访问每个项目，例如songs[0]. 字典是另一种常见的集合类型，但它们与数组不同，因为它们允许您根据指定的键访问值。

 举个例子，让我们想象一下我们如何将一个人的数据存储在一个数组中：

 var person = ["Taylor", "Alison", "Swift", "December", "taylorswift.com"]
 要读出那个人的中间名，我们使用person[1]，读出他们出生的月份，我们使用person[3]。这有一些问题，尤其是很难记住为数组中的每个值分配了哪个索引号！如果这个人没有中间名会怎样？很可能所有其他值都会向下移动一个位置，从而导致代码混乱。

 使用字典，我们可以将其重写为更合理，因为您可以使用指定的键读取和写入值，而不是任意数字。例如：

 var person = ["first": "Taylor", "middle": "Alison", "last": "Swift", "month": "December", "website": "taylorswift.com"]
 person["middle"]
 person["month"]
 如果我使用大量空格来分解屏幕上的字典可能会有所帮助，如下所示：

 var person = [
                 "first": "Taylor",
                 "middle": "Alison",
                 "last": "Swift",
                 "month": "December",
                 "website": "taylorswift.com"
             ]

 person["middle"]
 person["month"]
 正如你所看到的，当你制作字典时，你先写下它的键，然后是一个冒号，然后是它的值。然后您只需知道它的键就可以从字典中读取任何值，这更容易使用。

 与数组一样，您可以在字典中存储各种各样的值，尽管键是最常见的字符串。


 */



//: [Day13-07.-条件语句-Conditional statements](@next)

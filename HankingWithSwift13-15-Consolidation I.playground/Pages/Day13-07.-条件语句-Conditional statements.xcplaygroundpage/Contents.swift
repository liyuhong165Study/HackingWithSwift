//: [Day13-06.-字典-Dictionaries](@previous)


// 视频教程-条件语句 https://www.hackingwithswift.com/read/0/8/conditional-statements



//var action: String
//var person = "hater"
//
//if person == "hater" {
//    action = "hate"
//} else if person == "player" {
//    action = "play"
//} else {
//    action = "cruise"
//}

//: 评估多个条件
var action: String
var stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

//: 寻找真理的反面
if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}


/*:

 ## 条件语句

 
 有时您希望代码仅在特定条件为真时才执行，而在 Swift 中，这主要由ifandelse语句表示。你给 Swift 一个要检查的条件，然后是一个要执行的代码块，如果该条件为真。

 else如果条件为假，或者甚至else if还有更多条件，您也可以选择编写并提供要执行的代码块。一个“代码块”只是一段用左大括号标记的代码{——在它的开头和一个右大括号}——在它的结尾。

 这是一个基本示例：

 var action: String
 var person = "hater"

 if person == "hater" {
     action = "hate"
 }
 它使用==前面介绍的(equality) 运算符来检查里面的字符串是否person与字符串“hater”完全等效。如果是，它将action变量设置为“讨厌”。请注意，左大括号和右大括号，也称为“大括号”的不太专业的名称——它标记了条件为真时将执行的代码的开始和结束。

 让我们添加else if和else阻止：

 var action: String
 var person = "hater"

 if person == "hater" {
     action = "hate"
 } else if person == "player" {
     action = "play"
 } else {
     action = "cruise"
 }
 这将按顺序检查每个条件，并且只会执行一个块：一个人是仇恨者、玩家或其他任何人。

 评估多个条件
 您可以要求 Swift 评估任意数量的条件，但它们都需要为真，以便 Swift 执行代码块。要检查多个条件，请使用&&运算符——它的意思是“和”。例如：

 var action: String
 var stayOutTooLate = true
 var nothingInBrain = true

 if stayOutTooLate && nothingInBrain {
     action = "cruise"
 }
 因为stayOutTooLate和nothingInBrain都为真，所以整个条件为真，并action设置为“巡航”。Swift 使用一种叫做短路评估的东西来提高性能：如果它正在评估多个都需要为真的东西，而第一个是假的，它甚至不会去评估其余的东西。

 寻找真理的反面
 这可能听起来很哲学，但实际上这很重要：有时您关心条件是否为真，即是否为假。您可以使用!之前介绍的(not) 运算符执行此操作。例如：

 if !stayOutTooLate && !nothingInBrain {
     action = "cruise"
 }
 这一次，action只有当stayOutTooLate和nothingInBrain都为假时才会设置变量-!已经翻转了它们。
 
 */



//: [Day13-08.-循环-Loops](@next)

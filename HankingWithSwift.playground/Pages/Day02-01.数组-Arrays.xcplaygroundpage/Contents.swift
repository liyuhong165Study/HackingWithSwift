//: [Day01-总结](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/2/1/arrays
// 测试 https://www.hackingwithswift.com/review/arrays

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1]


/*:
 ## 为什么 Swift 有数组？
 Swift 的字符串、整数、布尔值和双精度数允许我们临时存储单个值，但是如果您想存储多个值，则通常会使用数组来代替。

 我们可以像其他类型的数据一样创建数组的常量和变量，但不同的是数组在其中包含许多值。因此，如果您想存储工作日的名称、下周的温度预测或视频游戏的高分，您需要一个数组而不是单个值。

 Swift 中的数组可大可小。如果它们是可变的，您可以自由添加它们以随着时间的推移构建您的数据，或者您可以根据需要删除甚至重新排列项目。

 我们使用数组的数字位置从数组中读取值，从 0 开始计数。这种“从 0 开始计数”有一个技术术语：我们可以说 Swift 的数组是从零开始的。如果您尝试使用无效索引读取数组，Swift 将自动使您的程序崩溃。例如，创建一个包含三个项目的数组，然后尝试读取索引 10。

 我知道你在想什么：应用程序崩溃很糟糕，对吧？正确的。但请相信我：如果 Swift没有崩溃，那么您很可能会返回错误数据，因为您试图读取数组所包含的值之外的值。
 
---
 
 
 ## 数组
 
 数组是作为单个值存储的值的集合。例如，John、Paul、George 和 Ringo 是名称，但数组可让您将它们分组到一个名为 The Beatles 的值中。

 在代码中，我们这样写：

 let john = "John Lennon"
 let paul = "Paul McCartney"
 let george = "George Harrison"
 let ringo = "Ringo Starr"

 let beatles = [john, paul, george, ringo]
 最后一行构成了数组：它以括号开始和结束，数组中的每一项都用逗号分隔。

 您可以通过在括号内写入数字来从数组中读取值。数组位置从 0 开始计数，因此如果您想阅读“Paul McCartney”，您可以这样写：

 beatles[1]
 小心：如果您读取不存在的项目，Swift 会崩溃。例如，尝试阅读beatles[9]是一个坏主意。

 注：如果您使用类型注释，阵列都写在括号：[String]，[Int]，[Double]，和[Bool]。
 
 */
//: [Day02-02.集合-Sets](@next)

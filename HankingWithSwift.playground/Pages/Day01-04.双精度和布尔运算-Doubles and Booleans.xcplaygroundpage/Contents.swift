//: [Day01-03.多行字符串-Multi-line strings](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/1/4/doubles-and-booleans

var str1 = """
This goes
over multiple
lines
"""

var str2 = """
This goes \
over multiple \
lines
"""



/*:
 ## 为什么 Swift 需要双精度和整数？
 Swift 为我们提供了几种在代码中存储数字的不同方式，它们旨在解决不同的问题。Swift 不允许我们将它们混合在一起，因为这样做会（例如，100% 保证）导致问题。

 您将使用的两种主要数字类型称为整数和双精度数。整数保存整数，例如 0、1、-100 和 6500 万，而双精度保存十进制数，例如 0.1、-1.001 和 3.141592654。

 创建数字变量时，Swift 会根据您是否包含小数点来决定是将其视为整数还是双精度数。例如：

 var myInt = 1
 var myDouble = 1.0
 如您所见，它们都包含数字 1，但前者是整数，后者是双精度数。

 现在，如果它们都包含数字 1，您可能想知道为什么我们不能将它们加在一起——为什么我们不能写var total = myInt + myDouble？答案是 Swift 很安全：我们都可以看到 1 加 1.0 将是 2，但是您的 double 是一个变量，因此可以将其修改为 1.1 或 3.5 或其他值。Swift 如何确保将整数添加到 double 是安全的——如何确保您不会丢失 0.1 或 0.5？

 答案是它不可能是安全的，这就是为什么它不被允许。一开始这会惹恼你，但相信我：这很有帮助。
 
 
---
 
 
 ## 双精度型和布尔型
 
 Swift 中的另外两种基本数据类型是双精度型和布尔型，您会经常使用它们。

 “Double”是“double-precision floating-point number”的缩写，这是一种奇特的说法，它包含小数值，例如 38.1 或 3.141592654。

 每当您创建一个带有小数的变量时，Swift 都会自动为该变量指定类型Double。例如：
```
 var pi = 3.141
```
 双精度数不同于整数，您不能不小心将它们混在一起。

 至于布尔值，它们要简单得多：它们只保存 true 或 false，并且 Swift 会自动将布尔类型分配给任何赋值为 true 或 false 作为其值的变量。

 例如：
```
 var awesome = true
```
 */
//: [Day01-05.字符串插值-String interpolation](@next)

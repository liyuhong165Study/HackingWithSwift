//: [Day01-02.字符串和整数-Strings and integers](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/1/3/multi-line-strings

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
 ## 为什么 Swift 需要多行字符串？
 Swift 的标准字符串以引号开始和结束，但绝不能包含任何换行符。例如，这是一个标准字符串：
 
 ```
 var quote = "Change the world by being yourself"
 ```
 这适用于小段文本，但如果您要存储大量文本，则在源代码中会变得丑陋。这就是多行字符串的用武之地：如果您使用三重引号，您可以根据需要将字符串写入任意多行，这意味着文本在您的代码中仍然易于阅读：

 ```
 var burns = """
 The best laid schemes
 O’ mice and men
 Gang aft agley
 """
 ```
 
 Swift 将字符串中的这些换行符视为文本本身的一部分，因此该字符串实际上包含三行。

 提示：有时您希望在不使用多行的情况下在代码中包含很长的文本字符串，但这种情况很少见。具体来说，如果您打算与他人共享您的代码，这通常是最重要的——如果他们在您的程序中看到一条错误消息，他们可能想要搜索您的代码，如果您将其拆分为多行，他们的搜索可能会失败.
 
 
---
 
 
 ## 多行字符串
 
 标准 Swift 字符串使用双引号，但您不能在其中包含换行符。

 如果您想要多行字符串，您需要稍微不同的语法：以三个双引号开始和结束，如下所示：

 ```
 var str1 = """
 This goes
 over multiple
 lines
 """
 ```
 Swift 非常注重你如何写这些引号：开头和结尾的三元组必须在它们自己的行上，但开头和结尾的换行符不会包含在你的最终字符串中。

 如果您只希望多行字符串整齐地格式化您的代码，并且您不希望这些换行符实际上出现在您的字符串中，请以 结束每一行\，如下所示：

 ```
 var str2 = """
 This goes \
 over multiple \
 lines
 """
 ```
*/
//: [Day01-04.双精度和布尔运算-Doubles and Booleans](@next)

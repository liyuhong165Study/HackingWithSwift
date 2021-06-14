//: [Day04-08. 循环总结-Looping summary](@previous)
// 视频教程-写函数 https://www.hackingwithswift.com/sixty/5/1/writing-functions
// 为什么 应该在函数中放入什么代码？ https://www.hackingwithswift.com/quick-start/understanding-swift/what-code-should-be-put-in-a-function

// 测试: 编写函数 https://www.hackingwithswift.com/review/writing-functions


func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()

/*:
 ## 什么代码应该放在一个函数中？
 
 函数旨在让我们轻松地重用代码，这意味着我们不必复制和粘贴代码来获得常见行为。如果您愿意，您可以很少使用它们，但老实说没有任何意义——它们是帮助我们编写更清晰、更灵活的代码的绝佳工具。

 有 3 次您需要创建自己的函数：

 最常见的情况是您希望在许多地方使用相同的功能。在这里使用函数意味着您可以更改一段代码，并且可以更新使用您的函数的所有地方。
 函数对于分解代码也很有用。如果你有一个很长的函数，可能很难跟踪正在发生的一切，但如果你把它分解成三个或四个较小的函数，那么它就会变得更容易理解。
 最后一个原因更高级：Swift 允许我们从现有函数中构建新函数，这是一种称为函数组合的技术。通过将您的工作拆分为多个小功能，功能组合让我们可以通过以各种方式组合这些小功能来构建大功能，有点像乐高积木。
 }
 
 ---
 
 
 ## 写函数
 
 函数让我们重用代码，这意味着我们可以编写一个函数来做一些有趣的事情，然后从很多地方运行该函数。重复代码通常是一个坏主意，函数可以帮助我们避免这样做。

 首先，我们将编写一个函数来为我们的应用程序的用户打印帮助信息。我们可能在我们的应用程序的任何地方都需要它，所以将它作为一个函数是一个好主意。

 Swift 函数以func关键字开头，然后是函数名，然后是左括号和右括号。函数的所有主体——在请求函数时应该运行的代码——都放在大括号内。

 printHelp()现在让我们编写函数：

 func printHelp() {
     let message = """
 Welcome to MyApp!

 Run this app inside a directory of images and
 MyApp will resize them all into thumbnails
 """

     print(message)
 }
 我们现在可以使用printHelp()它自己运行它：

 printHelp()
 运行一个函数通常被称为调用一个函数。

 */

//: [Day05-02.接受参数-Accepting parameters](@next)

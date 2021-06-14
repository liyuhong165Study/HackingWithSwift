//: [Day06-08.-高级闭包-速记参数名称-Shorthand parameter names](@previous)
// 视频教程-多参数闭包 https://www.hackingwithswift.com/sixty/6/9/closures-with-multiple-parameters
// 闭包可以接受多少个参数？ https://www.hackingwithswift.com/quick-start/understanding-swift/how-many-parameters-can-a-closure-take

// 测试: 具有多个参数的闭包 https://www.hackingwithswift.com/review/closures-with-multiple-parameters

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}


/*:
 ## 闭包可以接受多少个参数？
 
 Swift 的闭包就像 Swift 的函数，因此它们可以接受任意数量的参数。然而，你应该克制地行使你的权力：我之前说过接受许多参数的函数可能很难理解，而闭包通过在上面增加它们的自然复杂性来进一步解决同样的问题。

 因此，理论上闭包可以采用任意多的参数，但在实践中，您会看到绝大多数示例采用零到三个参数。这可能是因为使用$0,$1并且$2可能是我们可以合理使用的最简写的参数名称。

 我并不是说你不能编写带有四个或更多参数的闭包，只是这种情况非常罕见——一两个参数涵盖了绝大多数情况，其余的大部分是三个参数。


 ---
 
 
 ## 多参数闭包
 
 为了确保一切都清楚，我们将使用两个参数编写另一个闭包示例。

 这次我们的travel()函数需要一个闭包来指定某人要去哪里，以及他们要去的速度。这意味着我们需要使用(String, Int) -> String参数的类型：

 func travel(action: (String, Int) -> String) {
     print("I'm getting ready to go.")
     let description = action("London", 60)
     print(description)
     print("I arrived!")
 }
 我们将使用尾随闭包和速记闭包参数名称来调用它。因为这接受两个参数，我们将同时获得$0and $1：

 travel {
     "I'm going to \($0) at \($1) miles per hour."
 }
 有些人不喜欢使用速记参数名称，$0因为它可能会令人困惑，这没关系 - 做最适合您的事情。


 */


//: [Day06-10.-高级闭包-从函数返回闭包-Returning closures from functions](@next)

//: [Day06-06.-高级闭包-接受参数时使用闭包作为参数-Using closures as parameters when they accept parameters](@previous)
// 视频教程-返回值时使用闭包作为参数 https://www.hackingwithswift.com/sixty/6/7/using-closures-as-parameters-when-they-return-values
// 什么时候使用带有返回值作为函数参数的闭包？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-would-you-use-closures-with-return-values-as-parameters-to-a-function

// 测试: 在返回值时使用闭包作为参数 https://www.hackingwithswift.com/review/using-closures-as-parameters-when-they-return-values

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


/*:
 ## 什么时候使用带有返回值作为函数参数的闭包？
 
 Swift 的闭包可以返回值也可以带参数，你可以在函数中使用这些闭包。更好的是，这些函数也可以返回值，但是你的大脑很容易在这里变得有点模糊，因为有很多语法。

 为了演示这种闭包的常见用法，我们将实现一个简单的reducer方法。这是一种常见的行为，旨在汇总数组——取大量数字、字符串或其他任何东西，并将它们归结为单个值。

 在我们的简化示例中，我们的reducer 将接受两个参数：一个数字数组和一个可以将该数组缩减为单个值的闭包。例如，它可能接受一组数字并将它们相加，然后返回最终的总数。为此，闭包将接受两个参数：一个用于跟踪当前值（到目前为止已减少的所有内容），以及需要添加到减少后的值中的当前值。闭包还将返回一个值，即新的缩减值，整个函数将返回完全缩减的值——例如，所有数字的总和。

 例如，如果我们想减少数组[10, 20, 30]，它会像这样工作：

 它将创建一个调用的变量current，其值设置为其数组中的第一项。这是我们的起始值。
 然后它会在传入的数组中的项目上开始循环，使用范围1...以便它从索引 1 计数到末尾。
 然后它会用 10（当前值）和 20（数组中的第二个值）调用闭包。
 闭包可能会使用加法减少数组，因此它将 10 加到 20 并返回总和 30。
 然后，我们的函数将使用 30（新的当前值）和 30（数组中的第三项）调用闭包。
 闭包会将 30 加到 30 并返回总和，即 60。
 然后我们的函数将返回 60 作为其返回值。
 在代码中它看起来像这样：

 func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
     // start with a total equal to the first value
     var current = values[0]

     // loop over all the values in the array, counting from index 1 onwards
     for value in values[1...] {
         // call our closure with the current value and the array element, assigning its result to our current value
         current = closure(current, value)
     }

     // send back the final current value
     return current
 }
 有了这些代码，我们现在可以写这个，把一个数字数组相加：

 let numbers = [10, 20, 30]

 let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
     runningTotal + next
 }

 print(sum)
 提示：在那段代码中，我们明确指出，runningTotal并且next都是整数，但我们实际上可以省略类型注释，Swift 会解决这个问题。请注意，我们不必说我们的闭包返回一个整数，再次因为 Swift 可以自己计算出来。

 这里的reduce()伟大之处在于它并不关心它的闭包做了什么——它只关心它会接受两个整数并返回一个整数。因此，我们可以像这样将数组中的所有项相乘：

 let multiplied = reduce(numbers) { (runningTotal: Int, next: Int) in
     runningTotal * next
 }
 虽然这只是一个例子来说明为什么带有返回值的闭包可以成为有用的函数参数，但我想再提三件事。

 首先，我们的reduce()函数使用values[0]它的初始值，但是如果我们reduce()用一个空数组调用会发生什么？我们遇到了崩溃——这就是发生了。显然这不是一件好事，因此您不会希望在学习沙箱之外使用此代码。

 其次，我之前提到过，Swift 的操作符本身就是函数。例如，+是一个接受两个数字（例如 5 和 10）并返回另一个数字 (15) 的函数。

 因此，+需要两个数字并返回一个数字。我们的reduce()函数需要一个接受两个数字并返回一个数字的闭包。那是一样的！该+函数执行与reduce()想要的相同的合约——它采用相同的参数并返回相同的值。

 结果，我们实际上可以这样写：

 let sum = reduce(numbers, using: +)
 对真的。整洁吧？

 第三，这个reduce()函数非常重要，以至于 Swift 作为标准实际上附带了一个变体。概念是相同的，但它在几个方面更先进：

 您可以指定自己的起始值。
 它适用于任何类型的数组，包括字符串。
 它优雅地处理错误。
 更好的是，它在空数组上使用时不会崩溃！

 这花了很多解释，但我希望它能给你一个实际的例子，说明为什么返回值的闭包可以用作参数。随着您技能的提高，您将学到更多示例——这出奇地普遍。


 
 
 ---
 
 
 ## 返回值时使用闭包作为参数
 
 我们一直() -> Void用来表示“不接受任何参数并且不返回任何内容”，但是您可以将其替换Void为任何类型的数据以强制闭包返回一个值。

 为了证明这一点，我们可以编写一个travel()函数，它接受一个闭包作为其唯一参数，而该闭包又接受一个字符串并返回一个字符串：

 func travel(action: (String) -> String) {
     print("I'm getting ready to go.")
     let description = action("London")
     print(description)
     print("I arrived!")
 }
 现在，当我们travel()使用尾随闭包语法调用时，我们的闭包代码需要接受一个字符串并返回一个字符串：

 travel { (place: String) -> String in
     return "I'm going to \(place) in my car"
 }

 */


//: [Day06-08.-高级闭包-速记参数名称-Shorthand parameter names](@next)

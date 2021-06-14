//: [Day06-08.-高级闭包-速记参数名称-Shorthand parameter names](@previous)
// 视频教程-从函数返回闭包 https://www.hackingwithswift.com/sixty/6/10/returning-closures-from-functions
// 从函数返回闭包 https://www.hackingwithswift.com/quick-start/understanding-swift/returning-closures-from-functions

// 测试: 从函数返回闭包 https://www.hackingwithswift.com/review/returning-closures-from-functions

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result = travel()
result("London")

let result2 = travel()("London")



/*:
 ## 从函数返回闭包
 
 函数可以返回字符串、整数、数组等等，而且因为 Swift 允许我们在任何地方使用闭包，所以我们也可以从函数返回闭包。但是你为什么要这样做——这真的是一件合理的事情吗？

 最常见的情况实际上是这样的：我需要一个函数来调用，但我不知道那个函数是什么。我知道如何找出该功能-我知道是谁问找工作-但我不知道我自己。

 例如，我想生成很多随机数，但我不知道该使用什么算法。我所知道的是，如果我打电话，makeRandomGenerator()我会得到一个我可以调用的函数，每次我调用它时都会生成一个新的随机数。

 这种行为意味着我们不需要知道实际的随机数生成器做了什么，或者它是如何创建的。在幕后，我们可能每次都收到相同的闭包或者不同的闭包；我们不在乎。如果没有这个，我们需要在我们想要使用它的任何地方输入函数的精确名称。

 这带来了第二个好处：我们可以随时改变主意，只需更改创建随机数生成器的函数即可。所有调用该函数的地方都不会改变，因为它们仍然调用makeRandomGenerator(). 他们使用返回的随机数生成器的所有方式都不会改变，因为它只是一个每次调用时都会以某种方式返回随机数的闭包。

 因此，如果您想将生成器更改为“公平”算法（其中每个数字以随机顺序生成相同的次数），那么您只需更改makeRandomGenerator(). 或者，如果您想将其更改为高斯分布，这意味着您会得到一个钟形曲线，其中范围中间的数字比范围末尾的数字更常见，那么您只需更改返回的闭包即可 -您在任何地方使用它都保持绝对不变。

 我想举一个小例子来说明它的外观，因为 Swift 实际上带有一个内置的随机数生成器。它看起来像这样：

 print(Int.random(in: 1...10))
 这将打印一个从 1 到 10 的数字。

 如果我们想编写一个返回 1 到 10 之间的随机数的函数，我们可以这样写：

 func getRandomNumber()-> Int {
     Int.random(in: 1...10)
 }
 这将在每次调用时返回一个随机整数，因此我们可以像这样使用它：

 print(getRandomNumber())
 现在让我们更进一步：我们将创建一个返回闭包的函数，当调用该闭包时，将生成一个从 1 到 10 的随机数：

 func makeRandomGenerator() -> () -> Int {
     let function = { Int.random(in: 1...10) }
     return function
 }
 请注意，我们的返回类型现在是() -> Int，这意味着“一个不带参数并返回整数的闭包”。然后，在函数内部，我们创建一个闭包来包装Int.random(in: 1...10)并发送回该闭包。

 我们现在可以makeRandomGenerator()这样使用：

 let generator = makeRandomGenerator()
 let random1 = generator()
 print(random1)
 同样，这里的灵活性是我们所有的代码都可以调用makeRandomGenerator()返回某种可以生成随机数的代码。它不必关心它做什么；我们只关心它每次被调用时都会生成一个新数字。

 如果您发现闭包语法难以记住，您会很高兴知道有一个网站适合您：http : //goshdarnclosuresyntax.com/




 ---
 
 
 ## 从函数返回闭包
 
 与将闭包传递给函数的方式相同，您也可以从函数返回闭包。

 第一次的语法有点令人困惑，因为它使用了->两次：一次指定函数的返回值，第二次指定闭包的返回值。

 为了尝试这一点，我们将编写一个travel()不接受任何参数但返回一个闭包的函数。返回的闭包必须使用字符串调用，并且不会返回任何内容。

 这是在 Swift 中的样子：

 func travel() -> (String) -> Void {
     return {
         print("I'm going to \($0)")
     }
 }
 我们现在可以调用travel()以取回该闭包，然后将其作为函数调用：

 let result = travel()
 result("London")
 这在技术上是允许的——虽然真的不推荐！– 直接调用返回值travel()：

 let result2 = travel()("London")

 */


//: [Day05-02.接受参数-Accepting parameters](@next)

//: [Day04-08. 循环总结-Looping summary](@previous)
// 视频教程-接受参数 https://www.hackingwithswift.com/sixty/5/2/accepting-parameters
// 为什么 一个函数应该接受多少个参数？ https://www.hackingwithswift.com/quick-start/understanding-swift/how-many-parameters-should-a-function-accept

// 测试: 接受参数 https://www.hackingwithswift.com/review/accepting-parameters

print("Hello, world!")

func square (number:Int)
{
    print(number * number)
}

square(number: 8)


/*:
 ## 一个函数应该接受多少个参数？
 
 乍一看，这个问题似乎是“一根绳子有多长？” 也就是说，它没有真正的、硬性的答案——一个函数可以不带参数，也可以带 20 个参数。

 这当然是正确的，但是当一个函数接受很多参数时——可能有六个或更多，但这是非常主观的——你需要开始问这个函数是否做了太多的工作。

 它是否需要所有六个参数？
 可以将该函数拆分为参数更少的较小函数吗？
 这些参数应该以某种方式分组吗？
 稍后我们将研究解决这个问题的一些技术，但这里有一个重要的教训需要学习：这称为“代码异味”——关于我们的代码的一些东西，它表明我们构建程序的方式存在潜在问题.
 ---
 
 
 ## 接受参数
 
 当您每次运行时都可以自定义功能时，它们会变得更加强大。Swift 允许您向函数发送值，然后可以在函数内部使用该值来更改其行为方式。我们已经使用了它——我们一直在向print()函数发送字符串和整数，如下所示：

 print("Hello, world!")
 以这种方式发送到函数中的值称为参数。

 为了让你自己的函数接受参数，给每个参数一个名字，然后是一个冒号，然后告诉 Swift 它必须是的数据类型。所有这些都在您的函数名称之后的括号内。

 例如，我们可以编写一个函数来打印任意数字的平方：

 func square(number: Int) {
     print(number * number)
 }
 这告诉 Swift 我们期望收到一个Int，并且应该调用它number。当您想引用参数时，在函数内部以及运行函数时都会使用此名称，如下所示：

 square(number: 8)

 */

//: [Day05-03.返回值-Returning values](@next)

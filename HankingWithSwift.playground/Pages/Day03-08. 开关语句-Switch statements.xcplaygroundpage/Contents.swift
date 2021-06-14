//: [Day03-07. 三元运算符-The ternary operator](@previous)
// 视频教程-三元运算符 https://www.hackingwithswift.com/sixty/3/7/the-ternary-operator
// 什么时候应该在 Swift 中使用三元运算符？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-the-ternary-operator-in-swift

// 测试：三元运算符 https://www.hackingwithswift.com/review/the-ternary-operator


let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}


switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

/*:
 ## 什么时候应该使用 switch 语句而不是 if？

 Swift 开发人员可以同时使用switch和if来检查他们代码中的多个值，而且通常没有什么明确的理由为什么你应该选择一个而不是另一个。话虽如此，您可能要考虑使用switch而不是if以下三个原因：

 Swift 要求它的switch语句是详尽无遗的，这意味着你必须有一个case块来检查每个可能的值（例如枚举的所有情况），或者你必须有一个default案例。这不适用于ifand else if，因此您可能会不小心漏掉一个案例。
 当您用于switch检查多个可能结果的值时，该值只会被读取一次，而如果您使用if它，它将被多次读取。当您开始使用函数调用时，这变得更加重要，因为其中一些可能很慢。
 Swift 的switch案例允许使用if.
 还有一种情况，但它有点模糊：从广义上讲，如果你想检查三个或更多可能状态的相同值，你会发现人们更喜欢使用switch而不是if为了易读性目的，如果没有别的 - 它变得更清楚我们反复检查相同的值，而不是编写不同的条件。


 
 ---
 
 
 ## 开关语句
 
 如果您有多个使用ifand 的条件else if，则使用称为 的不同构造通常会更清楚switch case。使用这种方法，您只需编写一次条件，然后列出所有可能的结果以及每个结果会发生什么。

 为了试试这个，这里有一个包含字符串的天气常量sunny：

 let weather = "sunny"
 我们可以使用一个switch块来打印四种不同的消息之一：

 switch weather {
 case "rain":
     print("Bring an umbrella")
 case "snow":
     print("Wrap up warm")
 case "sunny":
     print("Wear sunscreen")
 default:
     print("Enjoy your day!")
 }
 在那个例子中，最后一种情况 – default– 是必需的，因为 Swift 确保您涵盖所有可能的情况，这样就不会错过任何可能发生的情况。如果天气不是雨、雪或太阳，default则将运行此案例。

 Swift 只会在每种情况下运行代码。如果您希望继续执行下一个案例，请使用如下fallthrough关键字：

 switch weather {
 case "rain":
     print("Bring an umbrella")
 case "snow":
     print("Wrap up warm")
 case "sunny":
     print("Wear sunscreen")
     fallthrough
 default:
     print("Enjoy your day!")
 }


 */

//: [Day03-09. 范围运算符-Range operators](@next)

//: [Day06-01.创建基本闭包-Creating basic closures](@previous)
// 视频教程-在闭包中接受参数 https://www.hackingwithswift.com/sixty/6/2/accepting-parameters-in-a-closure
// 为什么 Swift 的闭包参数在大括号内？ https://www.hackingwithswift.com/sixty/6/2/accepting-parameters-in-a-closure

// 测试: 接受闭包中的参数 https://www.hackingwithswift.com/review/accepting-parameters-in-a-closure


func pay(user: String, amount: Int) {
    // code
}

let payment = { (user: String, amount: Int) in
    // code
}


/*:
 ## 为什么 Swift 的闭包参数在大括号内？
 
 创建闭包时，它们没有名称或空间来写入任何参数。这并不意味着它们不能接受参数，只是它们以不同的方式接受参数：它们列在大括号内。

 要让闭包接受参数，请将它们列在左大括号后面的括号内，然后编写in以便 Swift 知道闭包的主体正在开始。

 例如，我们可以创建一个接受地名字符串作为其唯一参数的闭包，如下所示：

 let driving = { (place: String) in
     print("I'm going to \(place) in my car")
 }
 函数和闭包之间的区别之一是运行闭包时不使用参数标签。所以，driving()现在打电话我们会这样写：

 driving("London")
 
 
 ---
 
 
 ## 在闭包中接受参数
 
 闭包和函数都可以带参数，但是它们带参数的方式有很大的不同。这是一个接受字符串和整数的函数：

 func pay(user: String, amount: Int) {
     // code
 }
 这里和闭包的写法完全一样：

 let payment = { (user: String, amount: Int) in
     // code
 }
 如您所见，参数已移动到大括号内，in关键字用于标记参数列表的结尾和闭包主体本身的开头。

 闭包将它们的参数放在大括号内以避免混淆 Swift：如果我们这样写，let payment = (user: String, amount: Int)那么看起来我们正在尝试创建一个元组，而不是一个闭包，这会很奇怪。

 如果你考虑一下，将参数放在大括号内也可以巧妙地捕捉到整个事情是存储在变量中的一个数据块的方式——参数列表和闭包体都是同一块代码的一部分，并存储在我们的变量。

 大括号内的参数列表说明了为什么in关键字如此重要——没有它，Swift 很难知道你的闭包主体实际上从哪里开始，因为没有第二组大括号。

 */

//: [Day06-03.从闭包返回值-Returning values from a closure](@next)

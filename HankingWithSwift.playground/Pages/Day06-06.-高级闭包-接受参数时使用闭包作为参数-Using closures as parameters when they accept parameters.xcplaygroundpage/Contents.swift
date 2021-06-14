//: [Day06-05.尾随闭包语法-Trailing closure syntax](@previous)
// 视频教程-接受参数时使用闭包作为参数 https://www.hackingwithswift.com/sixty/6/6/using-closures-as-parameters-when-they-accept-parameters
// 何时将带参数的闭包用作参数？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-would-closures-with-parameters-be-used-as-parameters

// 测试: 在接受参数时使用闭包作为参数 https://www.hackingwithswift.com/review/using-closures-as-parameters-when-they-accept-parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}



/*:
 ## 带参数的闭包什么时候作为参数使用？
 
 接受参数的闭包有点难以阅读，但是当闭包本身被用作参数时，这个问题会变得更糟——感觉几乎就像一个 IQ 测试，只是试图了解发生了什么。但是，它们是常用的，因此值得花时间了解它们的外观和工作方式——如果您发现它们有点难以抗拒，请不要害怕回过头来回顾一下之前的内容。

 举一个实际的例子，假设你正在制造一辆汽车。汽车需要知道它有什么引擎，它有什么方向盘，它有多少座位，等等。当然，引擎可能只是一串信息，但实际上它应该能够实际加速或减速到某个速度。

 所以，首先我们可能会写一个这样的闭包：

 let changeSpeed = { (speed: Int) in
     print("Changing speed to \(speed)kph")
 }
 现在我们可以创建一个buildCar()函数来接受引擎的任何类型的闭包，只要可以告诉闭包加速或减速到一个特定的整数值：

 func buildCar(name: String, engine: (Int) -> Void) {
     // build the car
 }
 一旦您对瓶盖更加适应，您就会开始意识到这里的强大之处在于我们的瓶盖实际上是一个密封的盒子。是的，我们知道它会打印一条我们正在改变速度的消息，但大家都buildCar()知道它接受一个整数并且不返回任何内容。我们可以创建一个完全不同的闭包来处理飞行汽车或水下汽车，并且buildCar()不会在意，因为它满足接受整数并且不返回任何内容的相同规则。

 在我完成之前，我想重复一个之前的警告，因为这就是闭包真正开始伤害你的地方：

 如果你坐在这里想“哇，闭包是真的很辛苦”，不要惊惶-他们是很难的，你发现它们很难仅仅意味着你的大脑正常工作。

 我从人们那里收到很多消息，说他们正在为关闭而苦苦挣扎，我说的完全一样：没关系。总比没问题好——太棒了！当你努力学习信息时，你会发现它会变得更加困难，所以当你最终掌握它时，你就会被设置。

 相信我：这些东西很重要，因为它在 SwiftUI 中无处不在。所以，慢慢来，继续前进！
 
 
 ---
 
 
 ## 接受参数时使用闭包作为参数
 
 这就是闭包可以像行噪声一样被读取的地方：你传递给函数的闭包也可以接受它自己的参数。

 我们一直() -> Void用来表示“不接受任何参数并且不返回任何内容”，但是您可以继续()使用闭包应接受的任何参数类型来填充。

 为了证明这一点，我们可以编写一个travel()函数，它接受一个闭包作为它的唯一参数，而这个闭包又接受一个字符串：

 func travel(action: (String) -> Void) {
     print("I'm getting ready to go.")
     action("London")
     print("I arrived!")
 }
 现在，当我们travel()使用尾随闭包语法调用时，我们的闭包代码需要接受一个字符串：

 travel { (place: String) in
     print("I'm going to \(place) in my car")
 }
 
 */


//: [Day06-07.-高级闭包-返回值时使用闭包作为参数-Using closures as parameters when they return values](@next)

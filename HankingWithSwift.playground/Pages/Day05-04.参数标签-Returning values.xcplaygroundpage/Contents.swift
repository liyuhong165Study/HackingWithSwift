//: [Day05-03.返回值-Returning values](@previous)
// 视频教程-接受参数 https://www.hackingwithswift.com/sixty/5/2/accepting-parameters
// 为什么 一个函数应该接受多少个参数？ https://www.hackingwithswift.com/quick-start/understanding-swift/how-many-parameters-should-a-function-accept

// 测试: 接受参数 https://www.hackingwithswift.com/review/accepting-parameters

func square(number: Int) -> Int {
    return number * number
}

let result = square(number: 8)


func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")


/*:
 ## 为什么 Swift 使用参数标签？
 
 正在为 Xcode 13.0 更新

 许多编程语言要么不使用参数标签，要么使其成为可选的。Swift 的不寻常之处在于它广泛地使用它们，它甚至让我们可以区分外部参数名称和内部参数名称——这是双重不寻常的！

 要了解标签为何有用，请考虑如下代码：

 setReactorStatus(true, true, false)
 这在许多语言中都是完全正常的代码，但在 Swift 中你很少会看到这种情况，因为我们更喜欢给参数命名。所以，我们会这样写我们的函数：

 func setReactorStatus(primaryActive: Bool, backupActive: Bool, isEmergency: Bool) {
     // code here
 }
 因此，Swift 将要求在调用函数时使用这些布尔值，如下所示：

 setReactorStatus(primaryActive: true, backupActive: true, isEmergency: false)
 现在我们的代码变得更加清晰——当我们调用函数时，我们确切地知道每个值的作用，而不必记住isEmergency是第一个还是最后一个。

 当然，Swift 更进一步，让我们写两次标签，像这样：

 func setAge(for person: String, to value: Int) {
     print("\(person) is now \(value)")
 }
 这一次解决了两个问题：使这些标签在函数内部更有意义，也使这些标签在函数外部更有意义。

 为了证明这一点，以下是该函数的调用方式：

 setAge(for: "Paul", to: 40)
 如果我们只使用person和value标签，我们将不得不这样写：

 setAge(person: "Paul", value: 40)
 我希望你能看到原始代码实际上可以作为标准的英语语句大声朗读：“set age for Paul to 40”。另一方面，“设定年龄人保罗价值 40”根本不自然。

 反过来说，如果我们只使用for和to标签，那么调用函数看起来很自然，但在函数内部使用这些值会很奇怪：

 func setAge(for: String, to: Int) {
     print("\(for) is now \(to)")
 }
 事实上，Swift 甚至不允许这样做，因为它会认为这for是循环的开始！

 通过同时拥有内部和外部标签，我们的函数在我们调用它们的地方和函数内部都可以更自然地阅读。它们不是必需的，通常您的参数只有一个标签，但有它们仍然很好。
 
 ---
 
 
 ## 参数标签
 
 我们这样写square()函数：

 func square(number: Int) -> Int {
     return number * number
 }
 它命名了它的参数number，所以我们可以number在函数内部使用它来引用它，但是我们在运行函数时也必须使用这个名称，就像这样：

 let result = square(number: 8)
 Swift 允许我们为每个参数提供两个名称：一个在调用函数时在外部使用，一个在函数内部使用。这就像写两个名字一样简单，用空格隔开。

 为了演示这一点，这里有一个函数，它的字符串参数使用两个名称：

 func sayHello(to name: String) {
     print("Hello, \(name)!")
 }
 参数被称为to name，这意味着它在外部被称为to，但在内部被称为name。这在函数内部为变量提供了一个合理的名称，但这意味着调用函数读起来很自然：

 sayHello(to: "Taylor")
 
 
 */

//: [Day05-05. 省略参数标签-Omitting parameter labels](@next)

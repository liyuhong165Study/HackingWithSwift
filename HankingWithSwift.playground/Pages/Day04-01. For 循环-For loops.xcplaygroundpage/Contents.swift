//: [Day03-10. 运算符和条件摘要-Operators and conditions summary](@previous)
// 视频教程-For 循环 https://www.hackingwithswift.com/sixty/4/1/for-loops
// 为什么 Swift 在循环中使用下划线？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-use-underscores-with-loops

// 测试：for 循环 https://www.hackingwithswift.com/review/for-loops


let count = 1...10

for number in count {
    print("Number is \(number)")
}


let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}

/*:
 ## 为什么 Swift 在循环中使用下划线？
 
 如果要遍历数组中的项目，可以编写如下代码：

 let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

 for name in names {
     print("\(name) is a secret agent")
 }
 每次循环执行时，Swift 都会从names数组中取出一项，将其放入name常量中，然后执行我们的循环体——这就是print()方法。

 但是，有时您实际上并不需要当前正在读取的值，这就是下划线的用武之地：Swift 会识别出您实际上并不需要该变量，并且不会为您创建临时常量。

 当然，无论如何，Swift 真的可以看到——它可以看到你是否name在循环内使用，所以它可以在没有下划线的情况下完成同样的工作。然而，使用下划线对我们的大脑有非常相似的作用：我们可以查看代码并立即看到循环变量没有被使用，无论循环体内有多少行代码。

 因此，如果您不在正文中使用循环变量，Swift 会警告您像这样重写它：

 let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

 for _ in names {
     print("[CENSORED] is a secret agent!")
 }
 
 ---
 
 
 ## For 循环
 
 Swift 有几种编写循环的方法，但它们的底层机制是相同的：重复运行一些代码，直到条件评估为假。

 Swift 中最常见的循环是for循环：它会遍历数组和范围，每次循环时它都会拉出一项并分配给一个常量。

 例如，这里有一个数字范围：

 let count = 1...10
 我们可以使用for循环来打印每个项目，如下所示：

 for number in count {
     print("Number is \(number)")
 }
 我们可以对数组做同样的事情：

 let albums = ["Red", "1989", "Reputation"]

 for album in albums {
     print("\(album) is on Apple Music")
 }
 如果你不使用for循环给你的常量，你应该使用下划线来代替，这样 Swift 就不会创建不必要的值：

 print("Players gonna ")

 for _ in 1...5 {
     print("play")
 }

 */

//: [Day04-02.While 循环-While loops](@next)

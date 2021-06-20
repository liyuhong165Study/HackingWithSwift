//: [Day13-07.-条件语句-Conditional statements](@previous)


// 视频教程-循环 https://www.hackingwithswift.com/read/0/9/loops


//:
print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")
print("10 x 10 is \(10 * 10)")

//:闭区间运算
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

var str = "Fakers gonna"
for _ in 1 ... 5 {
    str += " fake"
}
print(str)

//: 循环遍历数组
var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]
for song in songs {
    print("My favorite song is \(song)")
}
//: 遍历两个数组
//var people = ["players", "haters", "heart-breakers", "fakers"]
//var actions = ["play", "hate", "break", "fake"]
//
//for i in 0 ... 3 {
//    print("\(people[i]) gonna \(actions[i])")
//}

//: 使用count
//var people = ["players", "haters", "heart-breakers", "fakers"]
//var actions = ["play", "hate", "break", "fake"]
//for i in 0 ..< people.count {
//    print("\(people[i]) gonna \(actions[i])")
//}

//: 内循环
//var people = ["players", "haters", "heart-breakers", "fakers"]
//var actions = ["play", "hate", "break", "fake"]
//for i in 0 ..< people.count {
//    var str = "\(people[i]) gonna"
//    for _ in 1 ... 5 {
//        str += " \(actions[i])"
//    }
//    print(str)
//}

//: While 循环
var counter = 0
while true {
    print("Counter is now \(counter)")
    counter += 1

    if counter == 556 {
        break
    }
}

//: break 和 continue
//var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]
//for song in songs {
//    if song == "You Belong with Me" {
//        continue
//    }
//
//    print("My favorite song is \(song)")
//}

/*:

 ## 循环

 
 在你阅读这句话的时间里，计算机非常擅长完成数十亿次无聊的任务。当涉及在代码中重复任务时，您可以多次复制和粘贴代码，也可以使用循环——只要条件为真，就重复一段代码的简单编程结构。

 为了演示这一点，我想向您介绍一个名为 的特殊调试功能print()：您给它一些要打印的文本，它就会打印出来。如果您像我们一样在操场上跑步，您会看到您的文本出现在结果窗口中。如果您在 Xcode 中运行真正的应用程序，您将看到您的文本出现在 Xcode 的日志窗口中。无论哪种方式，print()都是窥探变量内容的好方法。

 看看这段代码：

 print("1 x 10 is \(1 * 10)")
 print("2 x 10 is \(2 * 10)")
 print("3 x 10 is \(3 * 10)")
 print("4 x 10 is \(4 * 10)")
 print("5 x 10 is \(5 * 10)")
 print("6 x 10 is \(6 * 10)")
 print("7 x 10 is \(7 * 10)")
 print("8 x 10 is \(8 * 10)")
 print("9 x 10 is \(9 * 10)")
 print("10 x 10 is \(10 * 10)")
 当它完成运行时，您的 Playground 结果窗格中将显示 10 次表。但这并不是高效的代码，事实上，更简洁的方法是使用所谓的闭区间运算符（连续三个句点）在一系列数字上循环：...

 使用闭区间运算符，我们可以用三行重写整个内容：

 for i in 1...10 {
     print("\(i) x 10 is \(i * 10)")
 }
 结果窗格只为我们的循环显示“（10 次）”，这意味着循环运行了 10 次。如果您想知道循环实际上做了什么，请单击“（10 次）”右侧的方块。你会在你的代码中看到一个说“10 x 10 是 100”的框，如果你右键单击它，你应该看到“值历史”选项。现在点击它，你应该会看到下面的图片：
 ![logo](13-08-01.webp "local image")

 当 Swift playground 运行一个循环时，它只显示该循环运行了多少次。 如果要更仔细地检查值，请单击结果区域中的框。

 循环所做的是从 1 到 10（包括 1 和 10）计数，将该数字分配给常量i，然后运行大括号内的代码块。

 如果您不需要知道自己在哪个号码上，则可以使用下划线代替。例如，我们可以像这样打印一些 Taylor Swift 歌词：

 var str = "Fakers gonna"

 for _ in 1 ... 5 {
     str += " fake"
 }

 print(str)
 这将通过在每次循环时添加到字符串来打印“Fakers going fake fake fake fake fake fake”。

 如果 Swift 不必在每次循环时都将每个数字分配给一个变量，那么它可以更快地运行您的代码。因此，如果你写了for i in…就不要使用i，Xcode 会建议你把它改成_.

 有一个封闭范围运算符的变体，称为半开放范围运算符，它们很容易混淆。半开范围运算符看起来像..<并从一个数字计数到另一个数字并排除另一个数字。例如，1 ..< 5将计数 1、2、3、4。

 循环遍历数组
 Swift 提供了一种非常简单的方法来遍历数组中的所有元素。因为 Swift 已经知道你的数组保存了什么样的数据，它会遍历数组中的每个元素，将它分配给一个你命名的常量，然后运行你的代码块。例如，我们可以打印出这样的好歌曲列表：

 var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

 for song in songs {
     print("My favorite song is \(song)")
 }
 您还可以使用for i in循环构造来循环数组，因为您可以使用该常量来索引数组。我们甚至可以用它来索引两个数组，如下所示：

 var people = ["players", "haters", "heart-breakers", "fakers"]
 var actions = ["play", "hate", "break", "fake"]

 for i in 0 ... 3 {
     print("\(people[i]) gonna \(actions[i])")
 }
 您可能想知道半开范围运算符有什么用处，但它对于处理数组特别有用，因为它们从零开始计数。因此，我们可以从 0 到不包括数组中的项目数，而不是从 0 到 3 进行计数。

 请记住：它们从 0 开始计数，因此如果它们有 4 个项目，则最大索引为 3，这就是我们需要为循环使用排除的原因。

 要计算数组中有多少项，请使用someArray.count。所以，我们可以像这样重写我们的代码：

 var people = ["players", "haters", "heart-breakers", "fakers"]
 var actions = ["play", "hate", "break", "fake"]

 for i in 0 ..< people.count {
     print("\(people[i]) gonna \(actions[i])")
 }
 内循环
 如果您愿意，您可以将循环放入循环内，甚至可以将循环放入循环内的循环内——尽管您可能会突然发现自己正在做一千万次，所以要小心！

 我们可以结合我们之前的两个循环来创建这个：

 var people = ["players", "haters", "heart-breakers", "fakers"]
 var actions = ["play", "hate", "break", "fake"]

 for i in 0 ..< people.count {
     var str = "\(people[i]) gonna"

     for _ in 1 ... 5 {
         str += " \(actions[i])"
     }

     print(str)
 }
 输出“玩家会玩玩玩玩玩”，然后是“仇恨者会……”好吧，你明白了。

 一个重要的注意事项：尽管程序员通常使用i,j甚至kfor 循环常量，但您可以随意命名它们：这for personNumber in 0 ..< people.count是完全有效的。

 While 循环
 你会看到第三种循环，它重复一段代码，直到你告诉它停止。这用于诸如游戏循环之类的事情，您事先不知道游戏将持续多长时间 - 您只需不断重复“检查触摸，动画机器人，绘制屏幕，​​检查触摸......”等等，直到最终用户点击按钮退出游戏并返回主菜单。

 这些循环称为while循环，它们看起来像这样：

 var counter = 0

 while true {
     print("Counter is now \(counter)")
     counter += 1

     if counter == 556 {
         break
     }
 }
 该代码引入了一个名为 的新关键字break。它用于在您决定的点退出whileorfor循环。没有它，上面的代码永远不会结束，因为要检查的条件只是“真”，而真总是真。如果没有那个break语句，循环就是一个无限循环，这是一件坏事。

 while当您使用未知数据时，这些循环最有效，例如从 Internet 下载内容、读取 XML 等文件、查看用户输入等。这是因为您只有在运行足够次数后才知道何时停止循环。

 有一个对应的break叫continue. 跳出循环会立即停止执行并在循环后直接继续，而继续循环只会退出循环的当前迭代——它将跳回到循环的顶部并从那里开始。

 例如，请考虑以下代码：

 var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

 for song in songs {
     if song == "You Belong with Me" {
         continue
     }

     print("My favorite song is \(song)")
 }
 这会循环播放三首 Taylor Swift 歌曲，但它只会打印两首歌曲的名字。这样做的原因是continue关键字：当循环尝试使用歌曲“你属于我”时，continue被调用，这意味着循环立即跳回开始——print()永远不会调用，而是循环直接继续到“看看你让我做了什么”。
 
 */



//: [Day13-09.-开关案例-Switch case](@next)

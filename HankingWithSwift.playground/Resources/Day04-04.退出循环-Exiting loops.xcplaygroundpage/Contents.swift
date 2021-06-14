//: [Day04-03.重复循环-Repeat loops](@previous)
// 视频教程-退出循环 https://www.hackingwithswift.com/sixty/4/4/exiting-loops
// 为什么要退出循环？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-would-you-want-to-exit-a-loop

// 测试：退出循环 https://www.hackingwithswift.com/review/exiting-loops


var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false

/*:
 ## 为什么要退出循环？
 
 Swift 的break关键字让我们可以立即退出循环，而不管我们谈论的是哪种循环。很多时候你不需要这个，因为你正在循环数组中的项目并想要处理它们，或者因为你从 1 到 10 计数并想要处理所有这些值。

 但是，有时您确实希望提前结束循环。例如，如果您有一个分数数组，并且您想知道玩家在没有得到 0 的情况下取得了多少分数，您可以这样写：

 let scores = [1, 8, 4, 3, 0, 5, 2]
 var count = 0

 for score in scores {
     if score == 0 {
         break
     }

     count += 1
 }

 print("You had \(count) scores before you got 0.")
 如果没有break，我们就需要继续通过得分循环，即使我们找到的第一个0，这是一种浪费。


 ---
 
 
 ## 退出循环
 
 第三种写循环的方式并不常用，但它很容易学习，我们不妨介绍一下：它称为repeat循环，它与while循环相同，只是要检查的条件出现在最后。

 因此，我们可以像这样重写我们的捉迷藏示例：

 var number = 1

 repeat {
     print(number)
     number += 1
 } while number <= 20

 print("Ready or not, here I come!")
 因为条件出现在循环的末尾，repeat循环内的代码将始终至少执行一次，而while循环在第一次运行之前检查它们的条件。

 例如，这个print()函数永远不会运行，因为false它总是假的：

 while false {
     print("This is false")
 }
 Xcode 甚至会警告我们该print()行永远不会被执行。

 另一方面，这个print()函数将运行一次，因为repeat只有在循环运行后才使条件失败：

 repeat {
     print("This is false")
 } while false


 */

//: [Day04-05.退出多个循环-Exiting multiple loops](@next)

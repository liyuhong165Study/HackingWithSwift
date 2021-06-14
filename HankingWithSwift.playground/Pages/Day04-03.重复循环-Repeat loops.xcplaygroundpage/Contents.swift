//: [Day04-02.While 循环-While loops](@previous)
// 视频教程-重复循环 https://www.hackingwithswift.com/sixty/4/3/repeat-loops
// 什么时候应该使用重复循环？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-a-repeat-loop

// 测试：重复循环 https://www.hackingwithswift.com/review/repeat-loops


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
 ## 什么时候应该使用重复循环？
 
 Swift'sfor和whileloops 是最常见的创建循环的方法，但我们还有第三种选择repeat，类似于while循环，除了它总是至少运行一次循环体。

 现在，这种差异是如此之小，以至于您可能想知道这有什么意义——如果我们总是希望代码至少运行一次，为什么不把它放在循环体之前和循环体之内呢？

 答案部分是程序员所说的“DRY”：不要重复自己。我们通常更喜欢一次且只编写一次代码，并将重复的代码视为出现问题的标志。有些人把这种情况发挥到极致，什么也不重复，这通常是一个坏主意，但在这里我们绝对可以避免用repeat循环重复自己。

 为了向您演示这一点，我想向您展示如何打乱数字数组。Swift 给了我们shuffled()，这是我们可以在数组上运行的代码，它创建数组数组的副本，随机化副本项的顺序，然后返回它。

 现在，如果我们有一个数字数组，我们可以像这样打乱它：

 let numbers = [1, 2, 3, 4, 5]
 let random = numbers.shuffled()
 然而，这有一个潜在的问题：改组 1, 2, 3, 4, 5 可能意味着我们回到 5, 4, 3, 2, 1，这可能意味着我们回到 1, 4, 3, 5, 2,或者这可能意味着我们得到了 1、2、3、4、5——我们传入的完全相同的数组。毕竟它是随机的，有时随机性以奇怪的形式出现。

 现在，如果我们想确保我们的随机数组与原始数组不同呢？这意味着运行shuffle，检查原始数字和shuffled 数字是否匹配，如果匹配，则再次shuffle。这可能会发生很多次，因为从理论上讲，相同的序列可能会重复出现——尽管这种可能性越来越小。

 因此，使用while循环我们可以这样写：

 let numbers = [1, 2, 3, 4, 5]
 var random = numbers.shuffled()

 while random == numbers {
     random = numbers.shuffled()
 }
 这random等于 中的混洗数字numbers。然后检查新数字是否与旧数字相同，如果是，则再次对它们进行混洗。如您所见，这意味着我们已经shuffled()在两个地方重复了。对于简单的代码，这不是真正的问题，但是如果您需要重复的代码是 5 行代码呢？还是20行？

 现在使用repeat以下代码查看相同的代码：

 let numbers = [1, 2, 3, 4, 5]
 var random: [Int]

 repeat {
     random = numbers.shuffled()
 } while random == numbers
 这告诉 Swift 这random将是一个整数数组，但实际上并没有用任何东西填充它。在循环体内部，我们为它分配了混洗过的数字，然后检查我们是否有相同的值——代码更简单，没有重复。
 
 ---
 
 
 ## 重复循环
 
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

//: [Day04-04.退出循环-Exiting loops](@next)

//: [Day04-05.退出多个循环-Exiting multiple loops](@previous)
// 视频教程-跳过项目 https://www.hackingwithswift.com/sixty/4/6/skipping-items
// 何时使用中断，何时使用继续 https://www.hackingwithswift.com/quick-start/understanding-swift/when-to-use-break-and-when-to-use-continue

// 测试：跳过项目 https://www.hackingwithswift.com/review/skipping-items


for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

/*:
 ## 什么时候用break，什么时候用continue
 
 有时 Swift 学习者发现很难理解什么时候break关键字是正确的，什么时候continue关键字是正确的，因为它们都改变了我们循环的流程。

 当我们使用时，continue我们说“我已经完成了这个循环的当前运行”——Swift 将跳过循环体的其余部分，并转到循环中的下一项。但是当我们说break我们是在说“我已经完成了这个循环，所以完全退出。” 这意味着 Swift 将跳过 body 循环的其余部分，但也会跳过任何其他仍将出现的循环项。

 就像break，continue如果需要，您可以使用带标签的语句，但老实说，我不记得曾经看过它！
 
 ---
 
 
 ## 跳过项目
 
 如您所见，break关键字退出循环。但是，如果您只想跳过当前项目并继续下一个项目，则应continue改用。

 为了试试这个，我们可以编写一个从 1 到 10 的循环，然后使用 Swift 的余数运算符来跳过任何奇数：

 for i in 1...10 {
     if i % 2 == 1 {
         continue
     }

     print(i)
 }
 请记住，余数运算符计算 2 适合我们循环中每个数字的次数，然后返回剩余的任何内容。所以，如果剩下 1，则表示该数字是奇数，因此我们可以使用continue它来跳过它。


 */

//: [Day04-07. 无限循环-Infinite loops](@next)

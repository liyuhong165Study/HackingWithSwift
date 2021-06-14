//: [Day03-08. 开关语句-Switch statements](@previous)
// 视频教程-While 循环 https://www.hackingwithswift.com/sixty/4/1/for-loops
// 什么时候应该使用 while 循环？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-a-while-loop

// 测试：While 循环 https://www.hackingwithswift.com/review/while-loops


var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")


/*:
 ## 什么时候应该使用while循环？
 
 Swift 给了我们for和while循环，两者都很常用。但是，当您刚开始学习时，有两种常用的方法来制作循环似乎很奇怪——您应该使用哪种方法以及为什么？

 主要区别在于for循环通常用于有限序列：例如，我们循环数字 1 到 10，或循环数组中的项目。另一方面，while循环可以循环直到任何任意条件变为假，这允许它们直到我们告诉它们停止。

 这意味着我们可以重复相同的代码，直到……

 …用户要求我们停止
 ...服务器告诉我们停止
 ……我们找到了我们正在寻找的答案
 …我们已经生成了足够的数据
 这些只是少数几个例子。想一想：如果我让你掷 10 个骰子并打印结果，你可以for通过从 1 数到 10的简单循环来完成。但是如果我让你掷 10 个骰子并打印结果，同时还会自动滚动另一个骰子如果前一个骰子的结果相同，那么您不知道需要掷多少个骰子。也许你会很幸运，只需要 10 卷，但也许你会得到一些重复的卷，需要 15 卷。或者，您可能会得到很多重复的卷，需要 30 个——谁知道呢？

 这就是while循环派上用场的地方：我们可以继续循环直到我们准备好退出。
 
 ---
 
 
 ## While 循环
 
 编写循环的第二种方法是使用while: 给它一个要检查的条件，它的循环代码会一直循环，直到条件失败。

 例如，我们可以使用while循环来模拟一个孩子在捉迷藏游戏中的计数：我们从 1 开始，在打印每个数字时数到 20（包括 20），然后在循环之后打印“Ready or not”。

 这是在 Swift 中的样子：

 var number = 1

 while number <= 20 {
     print(number)
     number += 1
 }

 print("Ready or not, here I come!")


 */

//: [Day04-03.重复循环-Repeat loops](@next)

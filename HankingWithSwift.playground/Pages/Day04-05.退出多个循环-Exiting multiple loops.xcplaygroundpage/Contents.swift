//: [Day04-04.退出循环-Exiting loops](@previous)
// 视频教程-退出多个循环 https://www.hackingwithswift.com/sixty/4/5/exiting-multiple-loops
// 为什么 Swift 有带标签的语句？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-labeled-statements

// 测试：退出多个循环 https://www.hackingwithswift.com/review/exiting-multiple-loops


for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

/*:
 ## 什么时候应该使用重复循环？
 
 Swift 的标记语句允许我们命名代码的某些部分，它最常用于打破嵌套循环。

 为了演示它们，让我们看一个例子，我们试图找出打开保险箱的正确动作组合。我们可以从定义所有可能的运动的数组开始：

 let options = ["up", "down", "left", "right"]
 出于测试目的，这是我们试图猜测的秘密组合：

 let secretCombination = ["up", "up", "right"]
 要找到该组合，我们需要创建包含所有可能的三色变量的数组：

 上，上，上
 上，上，下
 上，上，左
 上，上，右
 上、下、左
 上、下、右
 ……你懂的。

 为了实现这一点，我们可以编写三个循环，一个嵌套在另一个循环中，如下所示：

 for option1 in options {
     for option2 in options {
         for option3 in options {
             print("In loop")
             let attempt = [option1, option2, option3]

             if attempt == secretCombination {
                 print("The combination is \(attempt)!")
             }
         }
     }
 }
 多次遍历相同的项目以创建一个attempt数组，如果它的尝试与秘密组合匹配，则打印出一条消息。

 但是那个代码有一个问题：一旦我们找到组合，我们就完成了循环，那么为什么它们继续运行呢？我们真正想说的是“一旦找到组合，立即退出所有循环”——这就是标记语句的用武之地。他们让我们这样写：

 outerLoop: for option1 in options {
     for option2 in options {
         for option3 in options {
             print("In loop")
             let attempt = [option1, option2, option3]

             if attempt == secretCombination {
                 print("The combination is \(attempt)!")
                 break outerLoop
             }
         }
     }
 }
 有了这个小小的改变，一旦找到组合，这三个循环就会停止运行。在这种微不足道的情况下，不太可能对性能产生影响，但是如果您的项目有数百甚至数千个项目呢？像这样保存工作是个好主意，值得记住为您自己的代码。
 
 ---
 
 
 ## 退出多个循环
 
 如果将循环放入循环中，则称为嵌套循环，并且想要同时跳出内循环和外循环的情况并不少见。

 例如，我们可以编写一些代码来计算从 1 到 10 的时间表，如下所示：

 for i in 1...10 {
     for j in 1...10 {
         let product = i * j
         print ("\(i) * \(j) is \(product)")
     }
 }
 如果我们想中途退出，我们需要做两件事。首先，我们给外部循环一个标签，如下所示：

 outerLoop: for i in 1...10 {
     for j in 1...10 {
         let product = i * j
         print ("\(i) * \(j) is \(product)")
     }
 }
 其次，在内部循环中添加我们的条件，然后使用break outerLoop同时退出两个循环：

 outerLoop: for i in 1...10 {
     for j in 1...10 {
         let product = i * j
         print ("\(i) * \(j) is \(product)")

         if product == 50 {
             print("It's a bullseye!")
             break outerLoop
         }
     }
 }
 使用常规break，只会退出内循环 - 外循环将从停止的地方继续。


 */

//: [Day04-06.跳过项目-Skipping items](@next)

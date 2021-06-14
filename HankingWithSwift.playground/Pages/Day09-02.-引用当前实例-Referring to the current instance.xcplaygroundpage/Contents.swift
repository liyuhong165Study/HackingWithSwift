//: [Day09-01.-初始化程序-Initializers](@previous)
// 视频教程-引用当前实例 https://www.hackingwithswift.com/sixty/7/9/referring-to-the-current-instance
// 什么时候在方法中使用 self ？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-would-you-use-self-in-a-method

// 测试: 引用当前实例 https://www.hackingwithswift.com/review/referring-to-the-current-instance


struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}



/*:
 ## 你什么时候会在方法中使用 self ？
 
 在一个方法中，Swift 允许我们使用 来引用结构的当前实例self，但从广义上讲，除非你特别需要区分你的意思，否则你不想这样做。

 到目前为止，最常见的使用原因self是在初始化程序中，您可能希望参数名称与您的类型的属性名称相匹配，如下所示：

 struct Student {
     var name: String
     var bestFriend: String

     init(name: String, bestFriend: String) {
         print("Enrolling \(name) in class…")
         self.name = name
         self.bestFriend = bestFriend
     }
 }
 你不需要有使用，当然，但它变得有点笨拙加入某种前缀的参数名：

 struct Student {
     var name: String
     var bestFriend: String

     init(name studentName: String, bestFriend studentBestFriend: String) {
         print("Enrolling \(studentName) in class…")
         name = studentName
         bestFriend = studentBestFriend
     }
 }
 在初始化器之外，使用的主要原因self是因为我们处于闭包中，而 Swift 要求我们这样做，所以我们要清楚地了解发生了什么。从 Swift 5.3 或更高版本开始，这种情况有了很大的改善，这意味着self在常规方法中不需要那么多。



 ---
 
 
 ## 引用当前实例
 
 在方法内部，您会得到一个名为 的特殊常量self，它指向当前正在使用的任何结构实例。self当您创建与您的属性具有相同参数名称的初始值设定项时，此值特别有用。

 例如，如果您创建一个Person带有name属性的结构体，然后尝试编写一个接受name参数的初始化程序，self可以帮助您区分属性和参数—— self.name指的是属性，而name指的是参数。

 这是代码中的内容：

 struct Person {
     var name: String

     init(name: String) {
         print("\(name) was born!")
         self.name = name
     }
 }
 
 */


//: [Day09-03.-懒惰属性-Lazy properties](@next)

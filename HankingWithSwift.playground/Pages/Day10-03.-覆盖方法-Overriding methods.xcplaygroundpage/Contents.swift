//: [Day10-02.-类继承-Class inheritance](@previous)
// 视频教程-覆盖方法 https://www.hackingwithswift.com/sixty/8/3/overriding-methods
// 您希望何时覆盖方法？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-would-you-want-to-override-a-method

// 测试: 覆盖方法 https://www.hackingwithswift.com/review/overriding-methods


class Dog {
    func makeNoise() {
        print("Woof!")
    }
}
class Poodle: Dog {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy = Poodle()
poppy.makeNoise()


/*:
 ## 你什么时候想覆盖一个方法？
 
 在 Swift 中，任何继承自父类的类都可以覆盖该父类的方法和属性，这意味着它们可以用自己的方法实现替换父类的方法实现。

 这种级别的定制非常重要，让我们作为开发人员的生活更轻松。想一想：如果有人设计了一个您想要使用的出色类，但它并不完全正确，那么只覆盖其行为的一部分而不是自己重写整个内容不是很好吗？

 当然会，这正是方法覆盖的用武之地：您可以保留所有想要的行为，只需更改自定义子类中的一两个小部分。

 在苹果最初的 iOS 用户界面框架 UIKit 中，这种方法被大量使用。例如，考虑一些内置应用程序，例如设置和消息。这两个都按行显示信息：“设置”包含“常规”、“控制中心”、“显示和亮度”等行，“消息”包含您与不同人进行的每个对话的单独行。在 UIKit 中，这些被称为表格，它们有一些共同的行为：你可以滚动所有的行，你可以点击行来选择一个，行的右侧有灰色的小箭头，等等。

 这些行列表非常常见，因此 Apple 为我们提供了使用它们的现有代码，这些代码具有内置的所有标准行为。当然，确实有一些位需要更改，例如列表有多少行以及什么他们里面的内容。因此，Swift 开发人员将创建 Apple 表的子类并覆盖他们想要更改的部分，为他们提供所有内置功能以及大量的灵活性和控制。

 Swift 让我们override在覆盖函数之前使用关键字，这真的很有帮助：

 如果在不需要的时候使用它（因为父类没有声明相同的方法），那么你会得到一个错误。这可以防止您输入错误，例如参数名称或类型，并且如果父类更改其方法而您没有效仿，也可以防止您的覆盖失败。
 如果您不，当它用它的需要，那么你也将得到一个错误。这可以防止您意外更改父类的行为。
 
 ---
 
 
 ## 覆盖方法
 
 子类可以用它们自己的实现替换父方法——这个过程称为覆盖。这是一个Dog带有makeNoise()方法的普通类：

 class Dog {
     func makeNoise() {
         print("Woof!")
     }
 }
 如果我们创建一个Poodle继承自的新类，Dog它将继承该makeNoise()方法。所以，这将打印“Woof！”：

 class Poodle: Dog {
 }

 let poppy = Poodle()
 poppy.makeNoise()
 方法重载允许我们更改实施makeNoise()的Poodle类。

 Swift 要求我们使用override func而不是仅仅func在覆盖方法时使用——它会阻止你意外覆盖一个方法，如果你试图覆盖父类中不存在的东西，你会得到一个错误：

 class Poodle: Dog {
     override func makeNoise() {
         print("Yip!")
     }
 }
 随着这一变化，poppy.makeNoise()将打印“Yip！” 而不是“哇！”。
 
 
 */


//: [Day10-04.-期末班-Final classes](@next)

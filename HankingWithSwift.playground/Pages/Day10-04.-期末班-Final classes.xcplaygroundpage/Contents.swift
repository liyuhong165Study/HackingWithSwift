//: [Day10-03.-覆盖方法-Overriding methods](@previous)
// 视频教程-期末班 https://www.hackingwithswift.com/sixty/8/4/final-classes
// 哪些类应该声明为 final？ https://www.hackingwithswift.com/quick-start/understanding-swift/which-classes-should-be-declared-as-final

// 测试: 期末班 https://www.hackingwithswift.com/review/final-classes

/**
 类和结构之间的第一个区别是类从不带有成员初始化程序。这意味着如果您的类中有属性，则必须始终创建自己的初始化程序。
 类和结构体之间的第二个区别是您可以基于现有类创建一个类——它继承了原始类的所有属性和方法，并且可以在上面添加自己的属性和方法。
 */

// final 防止继承
final class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}




/*:
 ## 哪些类应该声明为final？
 
 最终类是无法继承的，这意味着您的代码用户不可能添加功能或更改他们拥有的功能。这不是默认设置：您必须通过将final关键字添加到您的类来选择加入此行为。

 请记住，任何继承您的类的人都可以覆盖您的属性，也可能覆盖您的方法，这为它们提供了难以置信的功能。如果你做了他们不喜欢的事情，砰——他们可以代替它。他们可能仍会调用您的原始方法及其替代方法，但可能不会。

 这可能是有问题的：也许你的类做了一些不能被替换的非常重要的事情，或者你的客户有一个支持合同，你不希望他们破坏你的代码的工作方式。

 Apple 自己的大部分代码是在 Swift 出现之前用一种称为 Objective-C 的早期语言编写的。Objective-C 对final类没有很好的支持，所以 Apple 通常在他们的网站上使用大量警告。例如，有一个非常重要的类叫做AVPlayerViewController播放电影，它的文档页面有一个很大的黄色警告说：“不支持子类化 AVPlayerViewController 和覆盖其方法，并导致未定义的行为。” 我们不知道为什么，只知道我们不应该这样做。还有一个类叫做Timer处理定时事件，如警报，警告更简单：“不要子类 Timer”。

 在 Swift 中，final 类比非 final 类的性能更高，因为我们提供了更多关于我们的代码如何运行的信息，而 Swift 会使用它来进行一些优化。

 这已经有一段时间了，但即使在今天，我认为许多人本能地将他们的类声明为 final 的意思是“除非我特别允许，否则你不应该从它继承子类。” 我当然经常这样做，因为这是我可以帮助人们理解我的代码如何工作的另一种方式。
 
 ---
 
 
 ## 期末班
 
 尽管类继承非常有用——事实上，Apple 的大部分平台都要求你使用它——有时你想禁止其他开发人员基于你的类构建他们自己的类。

 Swift 为我们提供了一个final关键字：当你将一个类声明为 final 时，没有其他类可以继承它。这意味着他们不能为了改变你的行为而覆盖你的方法——他们需要按照你编写的方式来使用你的类。

 要使类成为 final，只需将final关键字放在它之前，如下所示：

 final class Dog {
     var name: String
     var breed: String

     init(name: String, breed: String) {
         self.name = name
         self.breed = breed
     }
 }

 */


//: [Day10-05.-复制对象-Copying objects](@next)

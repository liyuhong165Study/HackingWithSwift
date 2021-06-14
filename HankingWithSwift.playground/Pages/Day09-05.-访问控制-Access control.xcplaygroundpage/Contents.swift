//: [Day09-04.-静态属性和方法-Static properties and methods](@previous)
// 视频教程-访问控制 https://www.hackingwithswift.com/sixty/7/12/access-control
// 访问控制的要点是什么？ https://www.hackingwithswift.com/quick-start/understanding-swift/whats-the-point-of-access-control

// 测试: 访问控制 https://www.hackingwithswift.com/review/access-control


// 公开属性
//struct Person {
//    var id: String
//
//    init(id: String) {
//        self.id = id
//    }
//}
//let ed = Person(id: "12345")


struct Person {
    private var id: String

    init(id: String) {
        self.id = id
    }
    func identify() -> String {
         return "My social security number is \(id)"
     }
    
}
let ed = Person(id: "12345")
ed.identify()



/*:
 ## 访问控制的要点是什么？
 
 Swift 的访问控制关键字让我们可以限制如何访问我们代码的不同部分，但很多时候它只是遵守我们制定的规则——如果我们愿意，我们可以删除它们并绕过限制，那有什么意义呢？

 对此有几个答案，但其中一个特别简单，因此我将从这里开始：有时在您不拥有的代码中使用访问控制，因此您无法取消限制。这在您使用 Apple 的 API 构建应用程序时很常见，例如：它们对您可以做什么和不可以做什么进行了限制，而您需要遵守这些限制。

 在您自己的代码中，是的，您当然可以删除您设置的任何访问控制限制，但这并不意味着它毫无意义。访问控制让我们决定一个值应该如何使用，所以它需要非常小心地访问，然后你需要遵守规则。

 之前我提到过 Unwrap，我的 Swift 学习应用程序，我想使用那里的另一个例子。当用户学习斯威夫特的不同部分，我存储在他们的私人学到的东西的名字Set一个内部User结构，声明如下：

 private var learnedSections = Set<String>()
 它是私有的，这意味着没有人可以直接读取或写入它。相反，我提供了用于读取或写入应该使用的值的公共方法。这是有意为之，因为学习一个部分需要做的不仅仅是向该集合中插入一个字符串——它需要更新用户界面以反映更改，并且需要保存新信息，以便应用程序记住它已经学习过。

 如果我没有将该learnedSections属性设为私有，我可能会忘记并直接向其写入内容。这将导致我的 UI 与其数据不一致，并且也不会保存更改 - 到处都是糟糕的！

 因此，通过private在这里使用，我要求 Swift 为我强制执行规则：不要让我从User结构之外的任何地方读取或写入此属性。

 访问控制的另一个优点是它让我们可以控制其他人如何查看我们的代码——称为“表面区域”。想一想：如果我给你一个结构体并且它有 30 个公共属性和方法，你可能不确定哪些是供你使用的，哪些是真正仅供内部使用的。另一方面，如果我将其中的 25 个标记为私有，那么很明显您不应该在外部使用它们。

 访问控制可能是一个相当棘手的问题，尤其是当您考虑外部代码时。因此，Apple 自己的文档很长也就不足为奇了——你可以在这里找到它：https : //docs.swift.org/swift-book/LanguageGuide/AccessControl.html

 ---
 
 
 ## 访问控制
 
 访问控制允许您限制哪些代码可以使用属性和方法。例如，这很重要，因为您可能希望阻止人们直接读取属性。

 我们可以创建一个Person结构体id来存储他们的社会安全号码：

 struct Person {
     var id: String

     init(id: String) {
         self.id = id
     }
 }

 let ed = Person(id: "12345")
 一旦创建了那个人，我们就可以将他们id设为私有，这样您就无法从结构体外部读取它——尝试写入ed.id根本行不通。

 只需使用private关键字，如下所示：

 struct Person {
     private var id: String

     init(id: String) {
         self.id = id
     }
 }
 现在只有内部的方法Person可以读取该id属性。例如：

 struct Person {
     private var id: String

     init(id: String) {
         self.id = id
     }

     func identify() -> String {
         return "My social security number is \(id)"
     }
 }
 另一个常见选项是public，它允许所有其他代码使用该属性或方法。
 
 */


//: [Day09-04.-静态属性和方法-Static properties and methods](@next)

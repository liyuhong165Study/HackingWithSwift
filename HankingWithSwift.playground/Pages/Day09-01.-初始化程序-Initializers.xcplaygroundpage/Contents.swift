//: [Day08-07.-数组的属性和方法-Properties and methods of arrays](@previous)
// 视频教程-初始化程序 https://www.hackingwithswift.com/sixty/7/8/initializers
// Swift 的成员初始化器如何工作？ https://www.hackingwithswift.com/quick-start/understanding-swift/how-do-swifts-memberwise-initializers-work

// 测试: 初始化器 https://www.hackingwithswift.com/review/initializers


//struct User {
//    var username: String
//}
//var user = User(username: "twostraws")


struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"




/*:
 ## Swift 的成员初始化器如何工作？
 
 默认情况下，所有 Swift 结构都默认获得一个合成的成员初始化器，这意味着我们会自动获得一个初始化器，该初始化器接受结构的每个属性的值。这个初始化器使结构易于使用，但 Swift 还做了两件事，使它特别聪明。

 首先，如果您的任何属性具有默认值，那么它们将作为默认参数值合并到初始值设定项中。所以，如果我做一个这样的结构：

 struct User {
     var name: String
     var yearsActive = 0
 }
 然后我可以通过以下两种方式之一创建它：

 struct Employee {
     var name: String
     var yearsActive = 0
 }

 let roslin = Employee(name: "Laura Roslin")
 let adama = Employee(name: "William Adama", yearsActive: 45)
 这使得它们更容易创建，因为您可以只填写您需要的部分。

 Swift 做的第二件聪明的事情是，如果您创建自己的初始化程序，则删除成员式初始化程序。

 例如，如果我有一个创建匿名员工的自定义初始化程序，它看起来像这样：

 struct Employee {
     var name: String
     var yearsActive = 0

     init() {
         self.name = "Anonymous"
         print("Creating an anonymous employee…")
     }
 }
 有了这个，我就不能再依赖成员初始化器了，所以这将不再被允许：

 let roslin = Employee(name: "Laura Roslin")
 这不是偶然，而是一个刻意的特性：我们创建了自己的初始化器，如果 Swift 保留了它的成员初始化器，那么它可能会遗漏我们投入到我们自己的初始化器中的重要工作。

 因此，只要为结构添加自定义初始化程序，默认的成员初始化程序就会消失。如果您希望保留它，请将您的自定义初始值设定项移动到扩展名，如下所示：

 struct Employee {
     var name: String
     var yearsActive = 0
 }

 extension Employee {
     init() {
         self.name = "Anonymous"
         print("Creating an anonymous employee…")
     }
 }

 // creating a named employee now works
 let roslin = Employee(name: "Laura Roslin")

 // as does creating an anonymous employee
 let anon = Employee()

 ---
 
 
 ## 初始化程序
 
 初始化器是提供不同方式来创建结构的特殊方法。默认情况下，所有结构都带有一个，称为其成员初始化器——这要求您在创建结构时为每个属性提供一个值。

 如果我们创建一个User具有一个属性的结构，您可以看到这一点：

 struct User {
     var username: String
 }
 当我们创建这些结构之一时，我们必须提供一个用户名：

 var user = User(username: "twostraws")
 我们可以提供我们自己的初始化程序来替换默认的初始化程序。例如，我们可能希望将所有新用户创建为“匿名”并打印一条消息，如下所示：

 struct User {
     var username: String

     init() {
         username = "Anonymous"
         print("Creating a new user!")
     }
 }
 您不会func在初始化程序之前写入，但您确实需要确保所有属性在初始化程序结束之前都有一个值。

 现在我们的初始化器不接受任何参数，我们需要像这样创建结构：

 var user = User()
 user.username = "twostraws"
 */


//: [Day09-02.-引用当前实例-Referring to the current instance](@next)

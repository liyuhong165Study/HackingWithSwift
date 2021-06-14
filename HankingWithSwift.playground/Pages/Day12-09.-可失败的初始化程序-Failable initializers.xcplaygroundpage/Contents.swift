//: [Day12-08.-可选尝试-Optional try](@previous)
// 视频教程-可失败的初始化程序 https://www.hackingwithswift.com/sixty/10/9/failable-initializers
// 你为什么想要一个可失败的初始化程序？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-would-you-want-a-failable-initializer

// 测试: 可失败的初始化程序 https://www.hackingwithswift.com/review/failable-initializers


let str = "5"
let num = Int(str)

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}


/*:
 ## 为什么你想要一个可失败的初始化程序？
 
 如果结构体或类的初始化器可能失败——如果你意识到无法使用提供的数据创建对象——那么你需要一个可失败的初始化器。这不是返回一个新的对象实例，而是返回一个可选的实例，如果初始化失败，该实例将为 nil。

 制作一个可失败的初始化器需要两个步骤：

 把你的初始化程序写成init?()而不是init()
 对于应该失败的任何路径返回 nil
 您可以根据需要设置尽可能多的失败路径，但您无需担心成功路径——如果您不从方法中返回 nil，Swift 会假设您的意思是一切正常。

 为了证明这一点，这里有一个Employee结构体，它有一个带有两个检查的可失败初始化器：

 struct Employee {
     var username: String
     var password: String

     init?(username: String, password: String) {
         guard password.count >= 8 else { return nil }
         guard password.lowercased() != "password" else { return nil }

         self.username = username
         self.password = password
     }
 }
 这要求密码至少为 8 个字符，而不是字符串“password”。我们可以用两个示例员工来尝试一下：

 let tim = Employee(username: "TimC", password: "app1e")
 let craig = Employee(username: "CraigF", password: "ha1rf0rce0ne")
 由于密码太短，第一个将是可选设置为 nil，但第二个将是一个可选设置为有效User实例。

 如果验证检查失败，可失败初始值设定项让我们有机会退出对象的创建。在前一种情况下，密码太短，但您也可以检查用户名是否已被占用，密码是否与用户名相同，等等。

 是的，您绝对可以将这些检查放入一个单独的方法中，但是将它们放入初始化程序中要安全得多——忘记调用另一个方法太容易了，而且没有必要留出那个漏洞。
 
 ---
 
 
 ## 可失败的初始化程序
 
 在谈论强制解包时，我使用了以下代码：

 let str = "5"
 let num = Int(str)
 这会将字符串转换为整数，但是因为您可能会尝试在那里传递任何字符串，因此您实际返回的是一个可选整数。

 这是一个可失败的初始化程序：一个可能工作也可能不工作的初始化程序。您可以使用init?()而不是在您自己的结构和类中编写这些，如果出现问题则init()返回nil。然后，返回值将是您的类型的可选值，您可以根据需要进行解包。

 例如，我们可以编写一个Person必须使用九个字母 ID 字符串创建的结构体。如果使用了九个字母以外的字符串，我们将返回nil，否则我们将照常继续。

 这是 Swift 中的：

 struct Person {
     var id: String

     init?(id: String) {
         if id.count == 9 {
             self.id = id
         } else {
             return nil
         }
     }
 }
 */


//: [Day12-10.-类型转换-Typecasting](@next)

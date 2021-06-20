//: [Day13-09.-开关案例-Switch case](@previous)


// 视频教程-多态和类型转换 https://www.hackingwithswift.com/read/0/20/polymorphism-and-typecasting


//: 基本案例
//class Album {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class StudioAlbum: Album {
//    var studio: String
//
//    init(name: String, studio: String) {
//        self.studio = studio
//        super.init(name: name)
//    }
//}
//
//class LiveAlbum: Album {
//    var location: String
//
//    init(name: String, location: String) {
//        self.location = location
//        super.init(name: name)
//    }
//}

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }

    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}



var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

//for album in allAlbums {
//    print(album.getPerformance())
//}

//: 自动解包 可选
//for album in allAlbums {
//    print(album.getPerformance())
//
//    if let studioAlbum = album as? StudioAlbum {
//        print(studioAlbum.studio)
//    } else if let liveAlbum = album as? LiveAlbum {
//        print(liveAlbum.location)
//    }
//}

//: 强制转换
//for album in allAlbums {
//    let studioAlbum = album as! StudioAlbum
//    print(studioAlbum.studio)
//}

//: 使用前强制转换
//for album in allAlbums as! [StudioAlbum] {
//    print(album.studio)
//}

//: 可选转换 如果没有 就返回空的
for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
    print(album.location)
}

//:类型不匹配 不能强制转换
// ❌
//let number = 5
//let text = number as! String

let number = 5
let text = String(number)
print(text)

/*:
 

 ## 多态和类型转换

 因为类可以相互继承（例如CountrySinger可以从 继承Singer），这意味着一个类实际上是另一个类的超集：类 B 拥有 A 拥有的所有东西，还有一些额外的东西。这反过来意味着您可以根据需要将 B 视为 B 型或 A 型。

 使困惑？让我们尝试一些代码：

 class Album {
     var name: String

     init(name: String) {
         self.name = name
     }
 }

 class StudioAlbum: Album {
     var studio: String

     init(name: String, studio: String) {
         self.studio = studio
         super.init(name: name)
     }
 }

 class LiveAlbum: Album {
     var location: String

     init(name: String, location: String) {
         self.location = location
         super.init(name: name)
     }
 }
 这定义了三个类：专辑、录音室专辑和现场专辑，后两者都继承自Album. 因为任何实例LiveAlbum是继承自Album它是可以治疗的，就像要么Album或LiveAlbum-这是两个在同一时间。这称为“多态性”，但这意味着您可以编写如下代码：

 var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
 var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
 var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

 var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]
 在那里我们创建了一个只包含专辑的数组，但在其中放入两张录音室专辑和一张现场专辑。这在 Swift 中完全没有问题，因为它们都是Album类的后代，因此它们共享相同的基本行为。

 我们可以更进一步，以真正演示多态是如何工作的。让我们getPerformance()为所有三个类添加一个方法：

 class Album {
     var name: String

     init(name: String) {
         self.name = name
     }

     func getPerformance() -> String {
         return "The album \(name) sold lots"
     }
 }

 class StudioAlbum: Album {
     var studio: String

     init(name: String, studio: String) {
         self.studio = studio
         super.init(name: name)
     }

     override func getPerformance() -> String {
         return "The studio album \(name) sold lots"
     }
 }

 class LiveAlbum: Album {
     var location: String

     init(name: String, location: String) {
         self.location = location
         super.init(name: name)
     }

     override func getPerformance() -> String {
         return "The live album \(name) sold lots"
     }
 }
 该getPerformance()方法存在于Album类中，但两个子类都覆盖了它。当我们创建一个包含 的数组时Albums，我们实际上是用专辑的子类填充它：LiveAlbum和StudioAlbum。它们可以很好地进入数组，因为它们继承自Album类，但它们永远不会丢失原始类。所以，我们可以写这样的代码：

 var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
 var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
 var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

 var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

 for album in allAlbums {
     print(album.getPerformance())
 }
 这将自动使用getPerformance()依赖于相关子类的覆盖版本。这就是多态的作用：一个对象可以同时作为它的类和它的父类。

 使用类型转换转换类型
 你经常会发现你有一个特定类型的对象，但你真的知道它是一种不同的类型。遗憾的是，如果 Swift 不知道你知道什么，它就不会构建你的代码。所以，有一个解决方案，它被称为类型转换：将一种类型的对象转换为另一种类型。

 您可能正在努力思考为什么这可能是必要的，但我可以举一个非常简单的例子：

 for album in allAlbums {
     print(album.getPerformance())
 }
 那是我们几分钟前的循环。该allAlbums数组保存类型Album，但我们知道子类的，真正它所持有一个：StudioAlbum或LiveAlbum。Swift 不知道这一点，因此如果您尝试编写类似的东西print(album.studio)，它将拒绝构建，因为只有StudioAlbum对象具有该属性。

 Swift 中的类型转换有三种形式，但大多数时候你只会遇到两种：as?and as!，称为可选向下转换和强制向下转换。前者的意思是“我认为这个转换可能是真的，但它可能会失败”，第二个意思是“我知道这个转换是真的，如果我错了，我很高兴我的应用程序崩溃。”

 注意：当我说“转换”时，我并不是说对象实际上被转换了。相反，它只是转换 Swift 对待对象的方式——你告诉 Swift 一个它认为是类型 A 的对象实际上是类型 E。

 问号和感叹号应该给你一个提示，因为这与可选领域非常相似。例如，如果你这样写：

 for album in allAlbums {
     let studioAlbum = album as? StudioAlbum
 }
 Swift 将使studioAlbum具有数据类型StudioAlbum?。也就是说，一个可选的录音室专辑：转换可能成功了，在这种情况下你有一个你可以使用的录音室专辑，或者它可能失败了，在这种情况下你没有。

 这最常用于if let自动解包可选结果，如下所示：

 for album in allAlbums {
     print(album.getPerformance())

     if let studioAlbum = album as? StudioAlbum {
         print(studioAlbum.studio)
     } else if let liveAlbum = album as? LiveAlbum {
         print(liveAlbum.location)
     }
 }
 这将遍历每张专辑并打印其性能详细信息，因为这对Album类及其所有子类来说是通用的。然后检查是否可以将album值转换为 a StudioAlbum，如果可以，则打印出工作室名称。LiveAlbum对数组中的做了同样的事情。

 强制向下转换是当您确实确定可以将一种类型的对象视为不同类型时，但如果您错了，您的程序就会崩溃。强制向下转换不需要返回一个可选值，因为你说转换肯定会起作用——如果你错了，那就意味着你写错了代码。

 为了以一种非崩溃的方式证明这一点，让我们去掉现场专辑，以便我们在数组中只有录音室专辑：

 var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
 var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")

 var allAlbums: [Album] = [taylorSwift, fearless]

 for album in allAlbums {
     let studioAlbum = album as! StudioAlbum
     print(studioAlbum.studio)
 }
 这显然是一个人为的例子，因为如果那真的是您的代码，您只需更改allAlbums它以使其具有数据类型[StudioAlbum]。尽管如此，它仍然展示了强制向下转型的工作原理，并且该示例不会崩溃，因为它做出了正确的假设。

 Swift 允许您将向下转换作为数组循环的一部分，在这种情况下会更有效率。如果您想在数组级别编写强制向下转换，您可以这样写：

 for album in allAlbums as! [StudioAlbum] {
     print(album.studio)
 }
 这不再需要向下转换循环内的每个项目，因为它发生在循环开始时。同样，您最好正确地将数组中的所有项都设置为StudioAlbums，否则您的代码将崩溃。

 Swift 还允许在数组级别进行可选的向下转换，尽管它有点棘手，因为您需要使用 nil 合并运算符来确保循环始终有一个值。下面是一个例子：

 for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
     print(album.location)
 }
 这意味着，“尝试转换allAlbums为LiveAlbum对象数组，但如果失败，只需创建一个空的现场专辑数组并使用它”——即，什么都不做。

 使用初始化器转换常见类型
 当你知道一些 Swift 不知道的东西时，类型转换很有用，例如当你有一个ASwift 认为实际上是 type 类型的对象时B。然而，只有当这些类型确实是你所说的时，类型转换才有用——如果它们实际上不相关，你不能强制类型A转换为类型Z。

 例如，如果您有一个名为 的整数number，则不能编写这样的代码使其成为字符串：

 let number = 5
 let text = number as! String
 也就是说，您不能将整数强制转换为字符串，因为它们是两种完全不同的类型。相反，您需要通过提供整数来创建一个新字符串，而 Swift 知道如何转换这两者。区别很微妙：这是一个新的值，而不仅仅是对相同值的重新解释。

 因此，该代码应该像这样重写：

 let number = 5
 let text = String(number)
 print(text)
 这仅适用于某些 Swift 的内置数据类型：例如，您可以将整数和浮点数转换为字符串，然后再转换回来，但是如果您创建了两个自定义结构，Swift 无法神奇地将一个转换为另一个 – 您需要编写那个代码自己。

 */



//: [Next](@next)

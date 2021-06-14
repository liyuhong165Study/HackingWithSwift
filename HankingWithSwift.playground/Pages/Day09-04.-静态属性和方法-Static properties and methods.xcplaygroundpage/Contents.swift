//: [Day09-03.-懒惰属性-Lazy properties](@previous)

// 视频教程-静态属性和方法 https://www.hackingwithswift.com/sixty/7/11/static-properties-and-methods
// Swift 中的静态属性和方法有什么意义？ https://www.hackingwithswift.com/quick-start/understanding-swift/whats-the-point-of-static-properties-and-methods-in-swift

// 测试: 惰性属性 https://www.hackingwithswift.com/review/static-properties-and-methods


//struct Student {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//}
//
//let ed = Student(name: "Ed")
//let taylor = Student(name: "Taylor")

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")

print(Student.classSize)




/*:
 ## Swift 中的静态属性和方法有什么意义？
 
 大多数学习 Swift 的人会立即看到常规属性和方法的价值，但很难理解为什么静态属性和方法会有用。这是千真万确的，他们是少比普通的属性和方法是有用的，但他们仍然相当普遍SWIFT CODE。

 静态属性和方法的一个常见用途是存储您在整个应用程序中使用的通用功能。例如，我制作了一个名为 Unwrap 的应用程序，这是一个免费的 iOS 应用程序，供学习 Swift 的人使用。在应用程序中，我想存储一些常用信息，例如 App Store 上应用程序的 URL，以便我可以在应用程序需要的任何地方引用这些信息。所以，我有这样的代码存储我的数据：

 struct Unwrap {
     static let appURL = "https://itunes.apple.com/app/id1440611372"
 }
 这样我就可以Unwrap.appURL在有人分享应用中的内容时进行写作，这有助于其他人发现该应用。如果没有static关键字，我需要创建一个新的Unwrap结构实例来读取固定的应用程序 URL，这并不是真正必要的。

 我还使用静态属性和静态方法在同一个结构中存储一些随机熵，如下所示：

 static var entropy = Int.random(in: 1...1000)

 static func getEntropy() -> Int {
     entropy += 1
     return entropy
 }
 随机熵是软件收集的一些随机性，使随机数生成更有效，但我在我的应用程序中作弊，因为我不想要真正的随机数据。该应用程序旨在以随机顺序为您提供各种 Swift 测试，但如果它真的是随机的，那么您有时可能会背靠背地看到相同的问题。我不想要那样，所以我的熵实际上使随机性不那么随机，所以我们得到了更公平的问题传播。所以，我的代码所做的是存储一个entropy从随机开始的整数，但每次getEntropy()调用都会增加 1 。

 这个“公平随机”熵在整个应用程序中使用，因此不会出现重复项，因此它们再次由Unwrap结构静态共享，以便任何地方都可以访问它们。

 在我继续之前，还有两件事我想提一下，你可能会感兴趣。

 首先，我的 Unwrap 结构根本不是真正的结构——我实际上将它声明为枚举而不是结构。枚举没有任何情况，但它比这里的结构更好，因为我不想创建这种类型的实例——没有理由。进行枚举可以阻止这种情况发生，这有助于阐明我的意图。

 其次，因为我有一个专用的getEntropy()方法，我实际上要求 Swift 限制对 的访问，entropy这样我就不能从任何地方访问它。这称为访问控制，在 Swift 中如下所示：

 private static var entropy = Int.random(in: 1...1000)
 我们将在下一章中更多地研究访问控制。

 ---
 
 
 ## 静态属性和方法
 
 到目前为止，我们创建的所有属性和方法都属于结构的单个实例，这意味着如果我们有一个Student结构，我们可以创建多个学生实例，每个实例都有自己的属性和方法：

 struct Student {
     var name: String

     init(name: String) {
         self.name = name
     }
 }

 let ed = Student(name: "Ed")
 let taylor = Student(name: "Taylor")
 您还可以通过将它们声明为static来要求 Swift 在结构的所有实例之间共享特定的属性和方法。

 为了试试这个，我们将向Student结构添加一个静态属性来存储班级中有多少学生。每次我们创建一个新学生时，我们都会向其中添加一个：

 struct Student {
     static var classSize = 0
     var name: String

     init(name: String) {
         self.name = name
         Student.classSize += 1
     }
 }
 因为classSize属性属于结构本身而不是结构的实例，我们需要使用Student.classSize以下方法读取它：

 print(Student.classSize)

 
 */


//: [Day09-05.-访问控制-Access control](@next)

//: [Day09-02.-引用当前实例-Referring to the current instance](@previous)
// 视频教程-懒惰属性 https://www.hackingwithswift.com/sixty/7/10/lazy-properties
// 属性什么时候应该懒惰？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-properties-be-lazy

// 测试: 惰性属性 https://www.hackingwithswift.com/review/lazy-properties


struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    var name: String
//    var familyTree = FamilyTree()
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")
ed.familyTree


/*:
 ## 属性什么时候应该懒惰？
 
 Swift 的惰性属性让我们可以延迟属性的创建，直到它被实际使用，这使得它们就像一个计算属性。但是，与计算属性不同的是，它们存储计算出的结果，因此对属性的后续访问不会重做工作。这允许它们在不使用时提供额外的性能（因为它们的代码从不运行），并在重复使用时提供额外的性能（因为它们的值被缓存。）

 然而，这并不意味着我们应该使每个属性或大多数属性成为惰性——实际上，大多数属性只是标准的存储属性。您更喜欢存储或计算属性而不是惰性属性的原因有几个，例如：

 使用惰性属性可能会意外地产生您不期望的工作。例如，如果您正在构建一个游戏并第一次访问一个复杂的惰性属性，它可能会导致您的游戏变慢，因此最好预先进行缓慢的工作并将其排除在外。
 惰性属性总是存储它们的结果，这可能是不必要的（因为您不会再次使用它）或毫无意义（因为它需要经常重新计算）。
 因为惰性属性会改变它们所附加的底层对象，所以不能在常量结构上使用它们。
 在尝试优化代码时，最好等到真正有问题需要优化，而不是过早地散布诸如惰性属性之类的东西。

 有关 Swift 中惰性属性的另一个观点，请查看 Keith Harrison 的这篇文章：https : //useyourloaf.com/blog/swift-lazy-property-initialization/

 ---
 
 
 ## 惰性属性
 
 作为性能优化，Swift 允许您仅在需要时创建某些属性。举个例子，考虑这个FamilyTree结构体——它没有多大作用，但理论上为某人创建家谱需要很长时间：

 struct FamilyTree {
     init() {
         print("Creating family tree!")
     }
 }
 我们可以将该FamilyTree结构用作Person结构内的属性，如下所示：

 struct Person {
     var name: String
     var familyTree = FamilyTree()

     init(name: String) {
         self.name = name
     }
 }

 var ed = Person(name: "Ed")
 但是，如果我们并不总是需要某个特定人的家谱呢？如果我们将lazy关键字添加到familyTree属性中，那么 Swift 只会在FamilyTree第一次访问时创建结构：

 lazy var familyTree = FamilyTree()
 所以，如果你想看到“创建家谱！” 消息，您需要至少访问一次该属性：

 ed.familyTree
 */


//: [Day09-04.-静态属性和方法-Static properties and methods](@next)

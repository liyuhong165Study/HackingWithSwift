//: [Day13-09.-开关案例-Switch case](@previous)


// 视频教程-结构 https://www.hackingwithswift.com/read/0/15/structs


//: 基本案例
//struct Person {
//    var clothes: String
//    var shoes: String
//}
//let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
//let other = Person(clothes: "short skirts", shoes: "high heels")
//print(taylor.clothes)
//print(other.shoes)

struct Person {
    var clothes: String
    var shoes: String
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(other)
print(taylorCopy)

//: 结构体中的函数
//struct Person {
//    var clothes: String
//    var shoes: String
//
//    func describe() {
//        print("I like wearing \(clothes) with \(shoes)")
//    }
//}

/*:
 
 ## 结构体

 
 结构是复杂的数据类型，这意味着它们由多个值组成。然后创建结构体的一个实例并填充其值，然后您可以在代码中将其作为单个值传递。例如，我们可以定义一个Person包含两个属性的结构类型：clothes和shoes：

 struct Person {
     var clothes: String
     var shoes: String
 }
 当你定义一个结构体时，Swift 使它们非常容易创建，因为它会自动生成所谓的成员初始化器。简而言之，这意味着您通过传入其两个属性的初始值来创建结构，如下所示：

 let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
 let other = Person(clothes: "short skirts", shoes: "high heels")
 创建结构体的实例后，只需写入结构体的名称、句点和要读取的属性即可读取其属性：

 print(taylor.clothes)
 print(other.shoes)
 如果您将一个结构体分配给另一个结构体，Swift 会在幕后复制它，使其成为原始结构的完整、独立的副本。嗯，严格来说这不是真的：Swift 使用一种称为“写时复制”的技术，这意味着它只会在您尝试更改数据时才真正复制它。

 为了帮助您了解结构副本的工作原理，请将其放入您的操场：

 struct Person {
     var clothes: String
     var shoes: String
 }

 let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
 let other = Person(clothes: "short skirts", shoes: "high heels")

 var taylorCopy = taylor
 taylorCopy.shoes = "flip flops"

 print(taylor)
 print(taylorCopy)
 这创建了两个Person结构，然后创建一个第三个叫taylorCopy作为副本taylor。接下来发生的事情是有趣的部分：代码更改taylorCopy，并打印它 和taylor。如果您查看结果窗格（您可能需要调整其大小以适应），您会看到副本与原始值具有不同的值：更改一个并没有更改另一个。

 结构体中的函数
 您可以将函数放置在结构体中，事实上，对于读取或更改结构体中的数据的所有函数来说，这样做是个好主意。例如，我们可以在我们的Person结构中添加一个函数来描述他们的穿着，像这样：

 struct Person {
     var clothes: String
     var shoes: String

     func describe() {
         print("I like wearing \(clothes) with \(shoes)")
     }
 }
 还有一件事你应该知道但在代码中看不到：当你在结构中编写一个函数时，它被称为方法。在 Swift 中，func无论是函数还是方法，您都可以编写，但是当您谈论它们时，区别会保留下来。


 */



//: [Next](@next)

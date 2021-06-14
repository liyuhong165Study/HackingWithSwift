//: [Day08-01.-创建自己的结构-Capturing values](@previous)
// 视频教程-计算属性 https://www.hackingwithswift.com/sixty/7/2/computed-properties
// 什么时候应该使用计算属性或存储属性？ https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-a-computed-property-or-a-stored-property

// 测试: 计算属性 https://www.hackingwithswift.com/review/computed-properties


//struct Sport {
//    var name: String
//}

struct Sport {
    var name: String
    // 奥林匹克运动
    var isOlympicSport: Bool

    // 奥运状态
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

// 国际象棋拳击
let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


/*:
 ## 什么时候应该使用计算属性或存储属性？
 
 属性让我们将信息附加到结构上，Swift 给了我们两种变体：存储属性，其中一个值被藏在某个内存中以备后用，以及计算属性，其中每次调用时都会重新计算一个值。在幕后，计算属性实际上只是一个恰好属于您的结构的函数调用。

 决定使用哪个部分取决于您的财产的价值是否取决于其他数据，部分还取决于性能。性能部分很简单：如果您在属性值未更改时定期读取该属性，那么使用存储属性将比使用计算属性快得多。另一方面，如果您的属性很少被读取并且可能根本没有被读取，那么使用计算属性可以使您不必计算其值并将其存储在某处。

 当涉及到依赖项时——你的属性的值是否依赖于你的其他属性的值——那么表格就会翻转：这是计算属性有用的地方，因为你可以确定它们返回的值总是考虑到最新的程序状态。

 惰性属性有助于缓解很少读取的存储属性的性能问题，而属性观察器则缓解了存储属性的依赖性问题——我们很快就会研究它们。

 ---
 
 
 ## 计算属性
 
 我们刚刚创建了一个Sport这样的结构：

 struct Sport {
     var name: String
 }
 这有一个名称属性，存储String。这些被称为存储属性，因为 Swift 有一种不同的属性称为计算属性——一种运行代码来计算其值的属性。

 我们将向结构中添加另一个存储属性Sport，然后是一个计算属性。这是它的外观：

 struct Sport {
     var name: String
     var isOlympicSport: Bool

     var olympicStatus: String {
         if isOlympicSport {
             return "\(name) is an Olympic sport"
         } else {
             return "\(name) is not an Olympic sport"
         }
     }
 }
 如您所见，它olympicStatus看起来像一个普通的String，但它根据其他属性返回不同的值。

 我们可以通过创建一个新实例来尝试一下Sport：

 let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
 print(chessBoxing.olympicStatus)
 
 */


//: [Day08-03.-属性观察者-Property observers](@next)

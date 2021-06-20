//: [Day13-09.-开关案例-Switch case](@previous)


// 视频教程-静态属性和方法 https://www.hackingwithswift.com/read/0/18/static-properties-and-methods


//: 基本案例
struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)

/*:
 

 ## 静态属性和方法

 
 Swift 允许您创建属于类型而不是类型实例的属性和方法。这有助于通过存储共享数据有意义地组织数据。

 Swift 将这些共享属性称为“静态属性”，您只需使用static关键字即可创建一个。完成后，您可以使用类型的全名访问该属性。这是一个简单的例子：

 struct TaylorFan {
     static var favoriteSong = "Look What You Made Me Do"

     var name: String
     var age: Int
 }

 let fan = TaylorFan(name: "James", age: 25)
 print(TaylorFan.favoriteSong)
 所以，泰勒斯威夫特的歌迷拥有属于他们的名字和年龄，但他们都有同样最喜欢的歌曲。

 因为静态方法属于结构本身而不是该结构的实例，所以不能使用它来访问结构中的任何非静态属性。
 
 */



//: [Next](@next)

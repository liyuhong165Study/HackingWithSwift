//: [Day10-04.-期末班-Final classes](@previous)
// 视频教程-期复制对象 https://www.hackingwithswift.com/sixty/8/5/copying-objects
// 为什么类的副本共享其数据？ https://www.hackingwithswift.com/quick-start/understanding-swift/why-do-copies-of-a-class-share-their-data

// 测试: 复制对象 https://www.hackingwithswift.com/review/copying-objects

/**
 类和结构之间的第一个区别是类从不带有成员初始化程序。这意味着如果您的类中有属性，则必须始终创建自己的初始化程序。
 类和结构体之间的第二个区别是您可以基于现有类创建一个类——它继承了原始类的所有属性和方法，并且可以在上面添加自己的属性和方法。
 类和结构之间的第三个区别是它们的复制方式。当你复制一个结构体时，原始和副本是不同的东西——改变一个不会改变另一个。当您复制一个class 时，原始和副本都指向同一件事，因此更改一个确实会更改另一个。
 
 */

class Singer {
    var name = "Taylor Swift"
}

//struct Singer {
//    var name = "Taylor Swift"
//}

var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

/*:
 ## 为什么类的副本共享其数据？
 
 Swift 的一个真正令人困惑的特性是它的类和结构在被复制时的行为是如何不同的：同一个类的副本共享它们的底层数据，这意味着改变一个会改变它们，而结构总是有自己独特的数据，更改副本不会影响其他副本。

 这种区别的技术术语是“值类型与引用类型”。结构体是值类型，这意味着它们包含简单的值，例如数字 5 或字符串“hello”。不管你的结构有多少属性或方法，它仍然被认为是一个简单的值，比如数字。另一方面，类是引用类型，这意味着它们引用其他地方的值。

 对于值类型，这很容易理解，这是不言而喻的。例如，看看这段代码：

 var message = "Welcome"
 var greeting = message
 greeting = "Hello"
 当该代码运行时，message仍将设置为“欢迎”，但greeting将设置为“您好”。正如 Chris Eidhof 所说，“这太自然了，似乎在陈述显而易见的事情。” （https://chris.eidhof.nl/post/structs-and-mutation-in-swift/）但这就是结构的行为方式：它们的值完全包含在它们的变量中，而不是以某种方式与其他值共享。这意味着它们的所有数据都直接存储在每个变量中，因此当您复制它时，您将获得所有数据的深层副本。

 相比之下，考虑引用类型的最佳方式是它就像指向某些数据的路标。如果我们创建一个类的实例，它会占用你 iPhone 上的一些内存，而存储该实例的变量实际上只是一个指向对象所在实际内存的路标。如果您获取对象的副本，您会得到一个新的路标，但它仍然指向原始对象所在的内存。这就是为什么改变一个类的一个实例会改变它们：对象的所有副本都是指向同一块内存的路标。

 很难高估这种差异在 Swift 开发中的重要性。之前我提到 Swift 开发人员更喜欢为他们的自定义类型使用结构体，这种复制行为是一个重要原因。想象一下，如果您有一个大型应用程序并想User在不同的地方共享一个对象——如果其中一个地方改变了您的用户，会发生什么？如果您正在使用一个类，那么所有其他使用您的用户的地方都会在不知不觉中更改其数据，您最终可能会遇到问题。但是，如果您使用的是结构体，那么您的应用程序的每个部分都有自己的数据副本，并且不会意外更改。

 与编程中的许多事情一样，您所做的选择应该有助于传达您的一些推理。在这种情况下，使用类而不是结构会发出强烈的信息，即您希望以某种方式共享数据，而不是拥有大量不同的副本。
 
 ---
 
 
 ## 复制对象
 
 类和结构之间的第三个区别是它们的复制方式。当你复制一个结构体时，原始和副本是不同的东西——改变一个不会改变另一个。当您复制一个class 时，原始和副本都指向同一件事，因此更改一个确实会更改另一个。

 例如，这里有一个简单的Singer类，它有一个name带有默认值的属性：

 class Singer {
     var name = "Taylor Swift"
 }
 如果我们创建该类的实例并打印其名称，我们将得到“Taylor Swift”：

 var singer = Singer()
 print(singer.name)
 现在让我们从第一个变量创建第二个变量并更改其名称：

 var singerCopy = singer
 singerCopy.name = "Justin Bieber"
 由于该方法的类的工作，既singer和singerCopy指向内存中的同一个对象，所以当我们打印歌手的名字，我们再次看到“贾斯汀比伯”：

 print(singer.name)
 另一方面，如果Singer是一个结构体，那么我们会第二次打印“Taylor Swift”：

 struct Singer {
     var name = "Taylor Swift"
 }
 */


//: [Day10-06.-析构器-Deinitializers](@next)

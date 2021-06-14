//: [Day08-03.-属性观察者-Property observers](@previous)
// 视频教程-方法 https://www.hackingwithswift.com/sixty/7/4/methods
// 函数和方法之间有什么区别？ https://www.hackingwithswift.com/quick-start/understanding-swift/whats-the-difference-between-a-function-and-a-method

// 测试: 方法 https://www.hackingwithswift.com/review/methods



struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()


/*:
 ## 函数和方法有什么区别？
 
 Swift 的函数让我们可以命名一个功能并重复运行它，而 Swift 的方法做了很多相同的事情，那么有什么区别呢？

 老实说，唯一真正的区别是方法属于一种类型，例如结构、枚举和类，而函数则不属于。就是这样——这是唯一的区别。两者都可以接受任意数量的参数，包括可变参数，并且都可以返回值。哎呀，它们是如此相似，以至于 Swift 仍然使用func关键字来定义方法。

 当然，与特定类型（例如结构体）相关联意味着方法获得了一项重要的超能力：它们可以引用该类型中的其他属性和方法，这意味着您可以describe()为User打印用户名的类型编写方法、年龄和城市。

 方法还有一个优点，但它非常微妙：方法可以避免命名空间污染。每当我们创建一个函数时，该函数的名称就开始在我们的代码中有意义——我们可以编写wakeUp()并让它做一些事情。因此，如果您编写 100 个函数，您最终会得到 100 个保留名称，如果您编写 1000 个函数，您将得到 1000 个保留名称。

 这会很快变得混乱，但是通过将功能放入方法中，我们限制了这些名称的可用位置——wakeUp()不再是保留名称，除非我们特别写someUser.wakeUp(). 这减少了所谓的污染，因为如果我们的大部分代码都在方法中，那么我们就不会意外地发生名称冲突。
 ---
 
 
 ## 方法
 
 结构体内部可以有函数，这些函数可以根据需要使用结构体的属性。结构体内部的函数称为方法，但它们仍然使用相同的func关键字。

 我们可以用一个City结构来证明这一点。这将有一个population存储该城市有多少人的属性，以及一个collectTaxes()返回人口数乘以 1000 的方法。因为该方法属于City它可以读取当前城市的population属性。

 这是代码：

 struct City {
     var population: Int

     func collectTaxes() -> Int {
         return population * 1000
     }
 }
 该方法属于结构体，因此我们在结构体的实例上调用它，如下所示：

 let london = City(population: 9_000_000)
 london.collectTaxes()

 */


//: [Day08-05.-变异方法-Mutating methods](@next)

//: [Day02-02.集合-Sets](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/2/3/tuples
// 为什么需要使用  https://www.hackingwithswift.com/quick-start/understanding-swift/how-are-tuples-different-from-arrays-in-swift
// 测试 https://www.hackingwithswift.com/review/tuples

var name = (first: "Taylor", last: "Swift")
name.0
name.first




/*:
 ## 元组与 Swift 中的数组有何不同？
 当你学习 Swift 时，元组和数组看起来像是一回事，但实际上它们没有太大的不同。

 元组和数组都允许我们在一个变量中保存多个值，但元组保存一组固定的不能改变的东西，而变量数组可以无限期地向它们添加项目。

 例如，如果我们想要一个变量元组来存储网站，我们可以这样写：

 var website = (name: "Apple", url: "www.apple.com")
 如果我们想添加我们上次访问该站点的日期，我们不能——它是两个字符串项目，name以及url，仅此而已。因为它们是特定的和命名的，Swift 允许我们将它们读回为website.nameand website.url。

 相比之下，如果我们想要一个数组，我们可能会这样写：

 var website = ["Apple", "www.apple.com"]
 那不再有名字，所以我们需要使用整数读取值：website[0]和website[1]。我们还可以自由添加更多的东西，因为它是一个可变数组——它可以容纳任意数量的字符串，而不仅仅是我们指定的两个。

 元组的另一个优点是每个值都是由您专门创建的，因此除了提供名称外，您还提供了类型。所以，你可以创建一个这样的元组：

 var person = (name: "Paul", age: 40, isMarried: true)
 它将字符串、整数和布尔值组合在一个值中，这在数组中会非常难看。

 字典提供了第三种有趣的情况，因为它们为我们提供了元组的一些名称安全性，但可以像数组一样增长和变化。我说“某些名称安全”是因为我们不能像使用元组那样保证字典中存在特定值——我们只需要尝试读取它并处理返回的可选值。
 
 ---
 
 
 ## 元祖
 
 元组允许您将多个值一起存储在一个值中。这可能听起来像数组，但元组是不同的：

 您不能在元组中添加或删除项目；它们的大小是固定的。
 你不能改变元组中项目的类型；它们总是具有与它们创建时相同的类型。
 您可以使用数字位置或通过命名来访问元组中的项目，但 Swift 不会让您读取不存在的数字或名称。
 元组是通过将多个项放入括号来创建的，如下所示：

 var name = (first: "Taylor", last: "Swift")
 然后，您可以使用从 0 开始的数字位置访问项目：

 name.0
 或者您可以使用它们的名称访问项目：

 name.first
 请记住，您可以在创建元组后更改其内的值，但不能更改值的类型。所以，如果你试图改变name成为(first: "Justin", age: 25)你会得到一个错误。
 */

//: [Day02-04.数组 vs 集合 vs 元组-Arrays vs sets vs tuples](@next)

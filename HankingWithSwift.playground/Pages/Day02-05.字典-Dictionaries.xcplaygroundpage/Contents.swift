//: [Day02-04.数组 vs 集合 vs 元组-Arrays vs sets vs tuples](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/2/5/dictionaries
// 为什么需要使用  https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-dictionaries-as-well-as-arrays
// 测试 https://www.hackingwithswift.com/review/dictionaries

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]




/*:
 ## 为什么 Swift 有字典和数组？

 字典和数组都是在一个变量中存储大量数据的方式，但它们以不同的方式存储它们：字典让我们选择一个“键”来标识我们要添加的项目，而数组只是按顺序添加每个项目。

 因此，与其试图记住数组索引 7 表示用户所在的国家/地区，我们可以直接写user["country"]——这样更方便。

 与集合一样，字典不会以特定顺序存储我们的项目，因此它们优化了存储项目的方式以实现快速检索。因此，当我们说它user["country"]会立即发回该键（或 nil）处的项目时，即使我们有一本包含 100,000 个项目的字典。

 与元组不同，不能保证字典中的键存在。这就是为什么从字典中读取一个值可能什么都不返回的原因——你可能请求了一个不存在的键！
 
 ---
 
 
 ## 数组 vs 集合 vs 元组
 
 数组、集合和元组起初看起来很相似，但它们有不同的用途。为了帮助您了解使用哪个，这里有一些规则。

 如果您需要一个特定的、固定的相关值集合，其中每个项目都有一个精确的位置或名称，您应该使用元组：

 let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
 如果您需要一组必须唯一的值，或者您需要能够非常快速地检查特定项目是否在其中，则应该使用集合：

 let set = Set(["aardvark", "astronaut", "azalea"])
 如果您需要一个可以包含重复项的值集合，或者您的项目的顺序很重要，您应该使用一个数组：

 let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
 到目前为止，数组是三种类型中最常见的。
 
 */

//: [Day02-06-字典默认值-Dictionary default values](@next)

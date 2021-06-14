//: [Day02-02.集合-Sets](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/2/4/arrays-vs-sets-vs-tuples
// 为什么需要使用  https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-an-array-a-set-or-a-tuple-in-swift
// 测试 https://www.hackingwithswift.com/review/arrays-vs-sets-vs-tuples

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]




/*:
 ## 什么时候应该在 Swift 中使用数组、集合或元组？
 由于数组、集合和元组的工作方式略有不同，因此务必确保选择正确的方式，以便正确有效地存储数据。

 请记住：数组保持顺序并且可以有重复项，集合是无序的并且不能有重复项，并且元组内部有固定类型的固定值。

 所以：

 如果您想在游戏的字典中存储所有单词的列表，则该列表没有重复项，并且顺序无关紧要，因此您可以选择一组。
 如果你想存储所有的文章阅读的用户，您将使用一组如果订单没有事情（如果你关心的是他们是否有读与否），或使用数组，如果为了做事情.
 如果您想存储视频游戏的高分列表，该列表具有重要的顺序并且可能包含重复项（如果两个玩家获得相同的分数），那么您将使用数组。
 如果您想存储待办事项列表的项目，那么在订单可预测时效果最佳，因此您应该使用数组。
 如果你想要精确地保存两个字符串，或者精确地两个字符串和一个整数，或者精确地三个布尔值，或者类似的，你应该使用元组。
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

//: [Day02-05.字典-Dictionaries](@next)

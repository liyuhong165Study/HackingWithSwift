//: [Day03-03. 复合赋值运算符-Compound assignment operators](@previous)
// 视频教程-比较运算符 https://www.hackingwithswift.com/sixty/3/4/comparison-operators
// 为什么 Swift 需要运算符重载？ https://www.hackingwithswift.com/quick-start/understanding-swift/how-does-swift-let-us-compare-many-types-of-data

// 测试：比较运算符 https://www.hackingwithswift.com/review/comparison-operators


let firstScore = 6
let secondScore = 4

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

"Taylor" <= "Swift"

/*:
 ## Swift 如何让我们比较多种类型的数据？

 Swift 允许我们开箱即用地比较多种值，这意味着我们可以检查各种值的相等性和比较。例如，如果我们有这样的值：

 let firstName = "Paul"
 let secondName = "Sophie"

 let firstAge = 40
 let secondAge = 10
 然后我们可以通过各种方式比较它们：

 print(firstName == secondName)
 print(firstName != secondName)
 print(firstName < secondName)
 print(firstName >= secondName)

 print(firstAge == secondAge)
 print(firstAge != secondAge)
 print(firstAge < secondAge)
 print(firstAge >= secondAge)
 在幕后，Swift 以一种非常聪明的方式实现了这一点，实际上允许它比较各种各样的东西。例如，Swift 有一种特殊的日期类型，称为Date，您可以使用相同的运算符比较日期： someDate < someOtherDate例如。

 从 Swift 5.3 及更高版本开始，我们甚至可以要求 Swift 使我们的枚举具有可比性，如下所示：

 enum Sizes: Comparable {
     case small
     case medium
     case large
 }

 let first = Sizes.small
 let second = Sizes.large
 print(first < second)
 这将打印“真”，因为斯威夫特small到来之前large在枚举情况列表。


 ---
 
 
 ## 比较运算符
 
 Swift 有几个执行比较的运算符，它们或多或少地像您在数学中所期望的那样工作。

 让我们从几个示例变量开始，这样我们就可以使用一些东西：

 let firstScore = 6
 let secondScore = 4
 有两家运营商检查相等：==检查两个值是相同的，和!=（发音为“不等于”）检查两个值是不一样的：

 firstScore == secondScore
 firstScore != secondScore
 有四个运算符用于比较一个值是大于、小于还是等于另一个值。这些就像在数学中一样：

 firstScore < secondScore
 firstScore >= secondScore
 其中每一个也适用于字符串，因为字符串具有自然的字母顺序：

 "Taylor" <= "Swift"
 
 */

//: [Day03-05. 使适应-Conditions](@next)

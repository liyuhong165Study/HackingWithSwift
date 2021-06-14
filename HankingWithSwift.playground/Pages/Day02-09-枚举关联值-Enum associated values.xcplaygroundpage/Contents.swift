//: [Day02-08-枚举-Enumerations](@previous)
// 视频教程 https://www.hackingwithswift.com/sixty/2/9/enum-associated-values
// 为什么需要使用  https://www.hackingwithswift.com/quick-start/understanding-swift/why-would-you-want-to-associate-a-value-with-an-enum-case
// 测试 https://www.hackingwithswift.com/review/enum-associated-values

enum Activity {
    case bored
    case running
    case talking
    case singing
}
enum Activity1 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity1.talking(topic: "football")


/*:
 ## 为什么要将值与枚举大小写相关联？


 Swift 枚举最强大的特性之一是它们能够存储一个或多个关联值——更详细地描述枚举情况的额外信息。

 关联值可以附加到每个案例，或仅附加到某些案例。另外，只要每个案例都有一个类型，每个案例都可以有任意多的关联值。

 例如，我们可能会创建一个Weather包含三种情况的枚举：

 enum Weather {
     case sunny
     case windy(speed: Int)
     case rainy(chance: Int, amount: Int)
 }
 这意味着我们的天气可以是晴天，可以是多风，也可以是下雨。然而，当有风时，我们还要求将风速存储为一个整数——无论是每小时 10 公里 (kph)、20、30 等等。当下雨时，我们存储下雨发生的百分比和体积值，存储将存储多少雨水。

 我们可以做类似的事情，但这会很不愉快。想象一下：

 enum Weather {
     case sunny
     case lightBreeze
     case aBitWindy
     case quiteBlusteryNow
     case nowThatsAStrongWind
     case thisIsSeriousNow
     case itsAHurricane
 }
 这为我们提供了更多描述大风天气的方法，但它非常不精确——我们已经无法区分 10 公里/小时的风和 15 公里/小时的风。更糟糕的是，如果您没有看到像上面这样排序的列表，您是否知道它aBitWindy应该比 强lightBreeze但比弱quiteBlusteryNow？

 现在想象一下rainy我们需要存储两个整数的情况。我们最终不得不拥有描述小雨概率低、中雨概率低、大雨概率低、小雨概率中等、中雨概率中等的案例……嗯，你会得到重点。

 因此，具有关联值的枚举让我们向枚举案例添加额外信息——将它们视为名词的形容词，因为它可以让我们更详细地描述事物。



 ---
 
 
 ## 枚举关联值


 
 除了存储一个简单的值，枚举还可以存储附加到每个案例的关联值。这使您可以将附加信息附加到您的枚举中，以便它们可以表示更细微的数据。

 例如，我们可以定义一个枚举来存储各种活动：

 enum Activity {
     case bored
     case running
     case talking
     case singing
 }
 这让我们可以说有人在说话，但我们不知道他们在说什么，或者我们可以知道有人在跑，但我们不知道他们跑到哪里去。

 枚举相关值让我们添加这些额外的细节：

 enum Activity {
     case bored
     case running(destination: String)
     case talking(topic: String)
     case singing(volume: Int)
 }
 现在我们可以更精确——我们可以说有人在谈论足球：

 let talking = Activity.talking(topic: "football")


 */

//: [Day02-10-枚举原始值-Enum associated values](@next)

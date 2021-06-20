//: [Day13-09.-开关案例-Switch case](@previous)


// 视频教程-枚举 https://www.hackingwithswift.com/read/0/14/enumerations


//: 基本案例
//func getHaterStatus(weather: String) -> String? {
//    if weather == "sunny" {
//        return nil
//    } else {
//        return "Hate"
//    }
//}

//: 枚举
//enum WeatherType {
//    case sun, cloud, rain, wind, snow
//}
//
//func getHaterStatus(weather: WeatherType) -> String? {
//    if weather == WeatherType.sun {
//        return nil
//    } else {
//        return "Hate"
//    }
//}
//
//getHaterStatus(weather: WeatherType.cloud)

//: 使用枚举
//enum WeatherType {
//    case sun
//    case cloud
//    case rain
//    case wind
//    case snow
//}
//
////func getHaterStatus(weather: WeatherType) -> String? {
////    if weather == .sun {
////        return nil
////    } else {
////        return "Hate"
////    }
////}
//
//getHaterStatus(weather: .cloud)
//
////: 使用switch处理枚举
//func getHaterStatus(weather: WeatherType) -> String? {
//    switch weather {
//    case .sun:
//        return nil
//    case .cloud, .wind:
//        return "dislike"
//    case .rain:
//        return "hate"
//    case .snow:
//        return nil
//    }
//}

//:具有附加值的枚举
enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}
func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 5))


/*:
 

 ## 条件语句

 
 枚举——通常简称为“enum”，发音为“ee-num”——是您在 Swift 中定义自己的值类型的一种方式。在某些编程语言中，它们是简单的小东西，但是如果您想超越基础知识，Swift 会为它们添加大量功能。

 让我们从之前的一个简单示例开始：

 func getHaterStatus(weather: String) -> String? {
     if weather == "sunny" {
         return nil
     } else {
         return "Hate"
     }
 }
 该函数接受一个定义当前天气的字符串。问题是，对于这种数据，字符串是一个糟糕的选择——是“下雨”、“下雨”还是“下雨”？或者也许是“淋浴”、“毛毛雨”或“暴风雨”？更糟糕的是，如果一个人用大写的 R 写“Rain”而其他人写“Ran”，因为他们没有看他们输入的内容怎么办？

 枚举通过让您定义新的数据类型，然后定义它可以容纳的可能值来解决这个问题。例如，我们可以说有五种天气：太阳、云、雨、风和雪。如果我们将其设为枚举，则意味着 Swift 将仅接受这五个值——其他任何值都会引发错误。在幕后，枚举通常只是简单的数字，对于计算机来说，这比字符串要快得多。

 让我们把它写成代码：

 enum WeatherType {
     case sun, cloud, rain, wind, snow
 }

 func getHaterStatus(weather: WeatherType) -> String? {
     if weather == WeatherType.sun {
         return nil
     } else {
         return "Hate"
     }
 }

 getHaterStatus(weather: WeatherType.cloud)
 看看前三行：第 1 行为我们的类型命名，WeatherType. 这是您将在代码中String或Int在代码中使用的内容。正如我已经概述的那样，第 2 行定义了我们枚举的五种可能情况。约定以小写字母开头，例如“sun”、“cloud”等。第 3 行只是一个右括号，结束枚举。

 现在来看看它是如何使用的：我修改了getHaterStatus()以便它接受一个WeatherType值。条件语句也被重写为与 比较WeatherType.sun，这是我们的值。请记住，此检查只是幕后的数字，速度快如闪电。

 现在，返回并再次阅读该代码，因为我将用两个重要的更改重写它。搞定？

 enum WeatherType {
     case sun
     case cloud
     case rain
     case wind
     case snow
 }

 func getHaterStatus(weather: WeatherType) -> String? {
     if weather == .sun {
         return nil
     } else {
         return "Hate"
     }
 }

 getHaterStatus(weather: .cloud)
 我在那里做了两个区别。首先，每种天气类型现在都在自己的线上。这似乎是一个很小的变化，在这个例子中确实如此，但它很快就会变得重要。第二个变化是我写的if weather == .sun——我不需要说明我的意思，WeatherType.sun因为 Swift 知道我在和一个WeatherType变量进行比较，所以它使用类型推断。

 枚举在switch/case块内特别有用，特别是因为 Swift 知道您的枚举可以拥有的所有值，因此可以确保您涵盖所有这些值。例如，我们可能会尝试将getHaterStatus()方法重写为：

 func getHaterStatus(weather: WeatherType) -> String? {
     switch weather {
     case .sun:
         return nil
     case .cloud, .wind:
         return "dislike"
     case .rain:
         return "hate"
     }
 }
 是的，我意识到“仇恨者会不喜欢”并不是一首很好的歌词，但无论如何它都是学术性的，因为这段代码不会构建：它不处理.snow案例，而 Swift 想要涵盖所有案例。您必须为其添加案例或添加默认案例。

 具有附加值的枚举
 Swift 最强大的特性之一是枚举可以附加你定义的值。为了进一步扩展我们越来越可疑的示例，我将为.wind案例添加一个值，以便我们可以说出风的速度。将您的代码修改为：

 enum WeatherType {
     case sun
     case cloud
     case rain
     case wind(speed: Int)
     case snow
 }
 正如你所看到的，其他情况不需要速度值——我把它放在wind. 现在来看看真正的魔法：Swift 允许我们向switch/case块中添加额外的条件，这样只有当这些条件为真时，case 才会匹配。这使用let关键字访问案例内的值，然后使用where关键字进行模式匹配。

 这是新功能：

 func getHaterStatus(weather: WeatherType) -> String? {
     switch weather {
     case .sun:
         return nil
     case .wind(let speed) where speed < 10:
         return "meh"
     case .cloud, .wind:
         return "dislike"
     case .rain, .snow:
         return "hate"
     }
 }

 getHaterStatus(weather: WeatherType.wind(speed: 5))
 你可以看到.wind在那里出现了两次，但第一次只有在风速低于每小时 10 公里的情况下才是正确的。如果风是 10 级或以上，那将不匹配。关键是你let用来获取枚举中的值（即声明一个你可以引用的常量名）然后使用where条件来检查。

 Swiftswitch/case从上到下进行计算，并在找到匹配项后立即停止。这意味着如果case .cloud, .wind:出现在此之前case .wind(let speed) where speed < 10:，它将被执行 - 并且输出会发生变化。

 因此，请仔细考虑您如何订购案例！

 提示： Swift 的可选项实际上是使用带有关联值的枚举实现的。有两种情况：none, 和some，some具有可选项中的任何值。 */



//: [Next](@next)

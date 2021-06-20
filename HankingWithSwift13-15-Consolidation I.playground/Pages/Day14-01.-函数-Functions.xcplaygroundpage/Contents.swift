//: [Day13-09.-开关案例-Switch case](@previous)


// 视频教程-函数 https://www.hackingwithswift.com/read/0/11/functions


//: 基本案例
func favoriteAlbum() {
    print("My favorite is Fearless")
}
favoriteAlbum()

//: 接受一个参数的函数
func favoriteAlbum(name: String) {
    print("My favorite is \(name)")
}
favoriteAlbum(name: "Fearless")

//: 接受任意数量的参数
func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)

//: 外部和内部参数名称
//func countLettersInString(string: String) {
//    print("The string \(string) has \(string.count) letters.")
//}
//countLettersInString(string: "Hello")


//func countLettersInString(myString str: String) {
//    print("The string \(str) has \(str.count) letters.")
//}
//countLettersInString(myString: "Hello")


func countLettersInString(_ str: String) {
    print("The string \(str) has \(str.count) letters.")
}
countLettersInString("Hello")

//: 函数外部参数
func countLetters(in string: String) {
    print("The string \(string) has \(string.count) letters.")
}
countLetters(in: "Hello")

//: 函数返回值
func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }

    return false
}

if albumIsTaylor(name: "Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}
if albumIsTaylor(name: "Blue") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}


/*:
 

 ## 函数

 
 您已经看到了if语句和循环，但 Swift 有另一种称为switch/case. 最容易将其视为 的高级形式if，因为您可以有很多匹配项，而 Swift 会执行正确的匹配项。

 在最基本的 a 形式中，switch/case您告诉 Swift 您要检查哪个变量，然后提供该变量可能的情况列表。Swift 会找到第一个匹配你的变量的 case，然后运行它的代码块。当该块完成时，Swift 退出整个switch/case块。

 这是一个基本示例：

 let liveAlbums = 2

 switch liveAlbums {
 case 0:
     print("You're just starting out")

 case 1:
     print("You just released iTunes Live From SoHo")

 case 2:
     print("You just released Speak Now World Tour")

 default:
     print("Have you done something new?")
 }
 我们可以很好地使用大量if和else if块来编写它，但这种方式更清晰，而且很重要。

 一个优点switch/case是 Swift 将确保您的案例详尽无遗。也就是说，如果您的变量可能具有您未检查的值，Xcode 将拒绝构建您的应用程序。

 在值实际上是开放式的情况下，例如我们的liveAlbums整数，您需要包含一个default案例来捕获这些潜在值。是的，即使你“知道”你的数据只能落在某个范围内，Swift 也想绝对确定。

 Swift 可以对你的 case 语句应用一些评估以匹配变量。例如，如果您想检查一系列可能的值，您可以使用闭区间运算符，如下所示：

 let studioAlbums = 5

 switch studioAlbums {
 case 0...1:
     print("You're just starting out")

 case 2...3:
     print("You're a rising star")

 case 4...5:
     print("You're world famous!")

 default:
     print("Have you done something new?")
 }
 你应该知道的一件事是，switch/caseSwift中的块不会像你可能见过的其他一些语言那样失败。如果您习惯break在case块中编写代码，那么您应该知道 Swift 不需要这样做。

 相反，您使用fallthrough关键字使一个案例落入下一个案例——实际上正好相反。当然，如果您不知道这意味着什么，那就更好了：别担心！
 */



//: [Next](@next)

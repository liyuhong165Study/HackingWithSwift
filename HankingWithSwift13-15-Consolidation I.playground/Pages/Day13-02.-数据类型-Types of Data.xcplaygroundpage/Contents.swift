//: [Day13-01.-处理缺失数据-Variables and constants](@previous)


// 视频教程-数据类型 https://www.hackingwithswift.com/read/0/3/types-of-data

//: 数据类型
//❌
//var name
//name = "Tim McGraw"

var name: String
name = "Tim McGraw"

var age: Int
age = 25

//❌
//name = 25
//age = "Tim McGraw"


//: 浮点数 和 双精度
var latitude: Double
latitude = 36.166667

//var longitude: Float
//longitude = -86.783333


//var longitude: Float
var longitude: Double
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333


//: 布尔值
var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

//: 明智地使用类型注释
//var name = "Tim McGraw"
//var name: String
//name = "Tim McGraw"
//var age = 25
//var longitude = -86.783333
//var nothingInBrain = true
//var name: String = "Tim McGraw"



/*:

 ## 变量和常量
 
 数据种类繁多，Swift 会单独处理它们。当您将一些文本分配给变量时，您已经看到了最重要的类型之一，但在 Swift 中，这被称为Stringa——字面意思是字符串。

 字符串可以很长（例如一百万个字母或更多），也可以很短（例如 10 个字母）甚至是空的（没有字母），没关系：它们在 Swift 眼中都是字符串，并且都一样。Swift 知道它name应该包含一个字符串，因为您在创建它时为其分配了一个字符串：“Tim McGraw”。如果你要重写你的代码，它会停止工作：

 var name
 name = "Tim McGraw"
 这一次 Xcode 会给你一条错误信息，目前还没有多大意义：“模式中缺少类型注释”。它的意思是，“我无法弄清楚数据类型name是什么，因为你没有给我足够的信息。”

 此时你有两个选择：要么创建你的变量并在一行代码中给它一个初始值，要么使用所谓的类型注释，它是你告诉 Swift 变量稍后将保存什么数据类型的地方，即使你现在没有给它一个价值。

 您已经看到了第一个选项的外观，那么让我们看看第二个选项：类型注释。我们知道这name将是一个字符串，所以我们可以通过写一个冒号 then 告诉 Swift String，就像这样：

 var name: String
 name = "Tim McGraw"
 注意：有些人喜欢在冒号前后加一个空格，使var name : String，但他们错了，你应该尽量避免在礼貌的陪伴下提及他们的错误。

 这里的教训是 Swift 总是想知道每个变量或常量将保存什么类型的数据。总是。你无法逃避它，这是一件好事，因为它提供了一种叫做类型安全的东西——如果你说“这将容纳一个字符串”，然后再试着把一只兔子放进去，Swift 会拒绝。

 我们现在可以通过引入另一种称为Int 的重要数据类型来尝试这一点，它是“整数”的缩写。整数是像 3、30、300 或 -16777216 这样的整数。例如：

 var name: String
 name = "Tim McGraw"

 var age: Int
 age = 25
 这将一个变量声明为一个字符串，一个变量为一个整数。请注意String和Int的开头都是大写字母，而name和age则没有 – 这是 Swift 中的标准编码约定。编码约定对 Swift 来说并不重要（你可以随心所欲地写你的名字！）但对其他开发人员来说却很重要。在这种情况下，数据类型以大写字母开头，而变量和常量则不是。

 现在我们有两种不同类型的变量，您可以看到类型安全的作用。试试写这个：

 name = 25
 age = "Tim McGraw"
 在该代码中，您试图将一个整数放入一个字符串变量中，并将一个字符串放入一个整数变量中——幸运的是，Xcode 会抛出错误。您可能认为这是迂腐的，但它实际上很有帮助：您承诺一个变量将保存一种特定类型的数据，Xcode 将在您的整个工作中强制执行。

 在继续之前，请删除导致错误的这两行代码，否则您的操场上将无法继续工作！

 浮动和双重
 让我们看看另外两种数据类型，称为Float和Double。这是 Swift 使用小数部分存储数字的方式，例如 3.1、3.141、3.1415926 和 -16777216.5。有两种数据类型，因为您可以选择所需的准确度，但大多数情况下这并不重要，因此 Apple 官方建议始终使用，Double因为它具有最高的准确度。

 尝试将其放入您的游乐场：

 var latitude: Double
 latitude = 36.166667

 var longitude: Float
 longitude = -86.783333
 您可以看到两个数字都出现在右侧，但请仔细查看，因为存在微小差异。我们说它longitude应该等于 -86.783333，但在结果窗格中你会看到 -86.78333——它最后缺少最后 3 个。现在，您可能会说，“朋友之间的 0.000003 有什么关系？” 但这很好地证明了我所说的关于准确性的内容。

 由于这些 Playground 会在您键入时更新，因此我们可以尝试一下，以便您可以准确了解如何Float和Double不同之处。尝试将代码更改为：

 var longitude: Float
 longitude = -86.783333
 longitude = -186.783333
 longitude = -1286.783333
 longitude = -12386.783333
 longitude = -123486.783333
 longitude = -1234586.783333
 这就是在小数点前增加增加的数字，同时在小数点后保持相同数量的数字。但是，如果您查看结果窗格，您会注意到，当您在该点之前添加更多数字时，Swift 会删除其后的数字。这是因为它存储您的号码的空间有限，所以它首先存储最重要的部分——减少 1,000,000 是一件大事，而减少 0.000003 则不太重要。
 ![logo](13-02-01.webp "local image")

 

 在 Swift 中，Float 包含的数据比 Double 少得多，因此您应该尽可能使用 Double。

 现在尝试将 theFloat更改为 a Double，您将看到 Swift 每次都打印出正确的数字：

 var longitude: Double
 这是因为，再次Double具有两倍的准确性，Float因此不需要削减您的数字以适应。不过，双打仍然有限制——如果你尝试像 123456789.123456789 这样的大数字，你会看到它被减少到 123456789.1234568。

 布尔值
 Swift 有一个内置的数据类型，可以存储一个值是真还是假，称为 a Bool，是 Boolean 的缩写。布尔值没有“可能”或“也许”的空间，只有绝对值：真或假。例如：

 var stayOutTooLate: Bool
 stayOutTooLate = true

 var nothingInBrain: Bool
 nothingInBrain = true

 var missABeat: Bool
 missABeat = false
 提示：您会注意到这些变量的书写方式非常特殊：我们不写MissABeat、missabeat或其他此类变体，而是将首字母小写，然后将第二个和后续单词的第一个字母大写。这被称为“camel case”，因为它看起来有点像骆驼的驼峰，它用于使变量名称中的单词更容易阅读。

 明智地使用类型注释
 正如您所了解的，有两种方法可以告诉 Swift 变量保存的数据类型：在创建变量时赋值，或者使用类型注释。如果你有选择，第一个总是更可取的，因为它更清晰。例如：

 var name = "Tim McGraw"
 ……更喜欢：

 var name: String
 name = "Tim McGraw"
 这适用于所有数据类型。例如：

 var age = 25
 var longitude = -86.783333
 var nothingInBrain = true
 这种技术称为类型推断，因为 Swift 可以通过查看您想要放入变量的数据类型来推断应该为变量使用哪种数据类型。当涉及到像 -86.783333 这样的数字时，Swift 总是会推断出 aDouble而不是Float。

 为了完整起见，我应该补充一点，可以同时指定数据类型并提供值，如下所示：

 var name: String = "Tim McGraw"
 
 */



//: [Day13-03.-运营商-Operators](@next)

//: [Day05-06. 默认参数-Default parameters](@previous)
// 视频教程-可变函数 https://www.hackingwithswift.com/sixty/5/7/variadic-functions
// 何时使用可变参数函数 https://www.hackingwithswift.com/quick-start/understanding-swift/when-to-use-variadic-functions

// 测试: 可变函数 https://www.hackingwithswift.com/review/variadic-functions

print("Haters", "gonna", "hate")

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)


/*:
 ## 何时使用可变参数函数
 
 正在为 Xcode 13.0 更新

 Swift 的可变参数函数让我们可以接受任意数量的相同类型的参数，用逗号分隔。在函数内部，它们作为数组传递给我们，我们可以对其进行索引、循环等等。

 可变参数的强大之处在于我们可以将它们视为大多数时候不是可变参数。例如，如果您有一个open()函数可以在 Preview、TextEdit 或任何正确的程序中打开文件进行编辑，您可以这样调用它：

 open("photo.jpg")
 但同样的函数可以接受一个可变参数——要打开很多文件名，所以可以一次打开几个：

 open("photo.jpg", "recipes.txt", "myCode.swift")
 因此，通过使该参数可变，我们可以打开一整套附加功能，而无需更改函数的调用方式——这真的很有用！

 至于何时应该使用它们，您在学习时可能不会经常使用它们，因为您将专注于非常具体的问题，而这些问题通常很小。但是随着您技能的提高，您会发现您可以更改现有函数以使其具有可变参数，而不会破坏您的任何代码——您可以在不更改现有功能的情况下添加功能。
 ---
 
 
 ## 可变函数
 
 有些函数是可变参数的，这是一种奇特的方式，表示它们接受任意数量的相同类型的参数。该print()函数实际上是可变参数：如果您传递大量参数，它们都打印在一行上，它们之间有空格：

 print("Haters", "gonna", "hate")
 您可以通过...在其类型之后写入任何参数来使之成为可变参数。因此，Int参数是单个整数，而是Int...零个或多个整数——可能是数百个。

 在函数内部，Swift 将传入的值转换为整数数组，因此您可以根据需要遍历它们。

 为了试试这个，让我们编写一个square()可以对许多数字进行平方的函数：

 func square(numbers: Int...) {
     for number in numbers {
         print("\(number) squared is \(number * number)")
     }
 }
 现在我们可以通过以逗号分隔的方式传递大量数字来运行它：

 square(numbers: 1, 2, 3, 4, 5)
 
 */

//: [Day05-08. 编写投掷函数-Writing throwing functions](@next)

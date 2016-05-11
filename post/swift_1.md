+++
date = "2016-05-11T17:05:30+08:00"
draft = false
title = "Swift从入坑到弃坑_基础"
slug = "swift_tutorial_1"

+++

# Hello World

```swift
print("hello")
print("world")

print("foo"); print("bar")
```

每个Swift源码文件中包含多行文本，每个换行符结束一条语句。语句也可以以分号结束，但除了用于分隔同一行内的多条语句外，分号都被省略。

print函数由于打印输出字符串。

# 变量和常量

Swift中的名字必须先声明才能使用。`let`关键字用于声明常量，`var`关键字用于声明变量。声明通常伴随着初始化。

```swift
let one = 1
var two = 2

two = one // 变量可以改变
one = tow // 编译错误！常量初始化后不可改变
```

Swift是强类型的语言，每个变量在声明时都确定了类型。如果变量声明的同时进行了初始化，则其类型可由编译器根据初始化的值自动推断（`one`和`two`由整数初始化，故自动推断为`Int`型）；也可以手工指定变量类型。变量声明后，只能被赋予同类型的值，否则无法通过编译。变量必须初始化后才能使用，使用未经初始化的变量会造成编译错误。

```swift
var three: Int = 3
three = "123" // 编译错误！three为整型，无法被赋予字符串

var four: Int
three = four // 编译错误！four未被初始化
```

# 注释

Swift中使用`//`进行单行注释，使用`/* */`进行多行注释，多行注释可嵌套，便于扩展注释的范围。

```swift
// 这是一个单行注释
/*
   这是
   一个
   /* 嵌套的 */
   多行
   注释
*/
```

# 基本数据类型

## 整型

Swift中的整型分为有符号整型和无符号整型，按照8位、16位、32位、64位的长度分别为：

* 有符号整型：`Int8`，`Int16`，`int32`，`int64`
* 无符号整型：`UInt8`，`UInt16`，`UInt32`，`UInt64`

此外，还有两种特殊的整型类型，`Int`和`UInt`。其长度与平台有关，在32位系统上为32位，在64位系统上为64位。每种整型的范围可如下得到。

```swift
let minValue = UInt8.min
let maxValue = UInt8.max
```

Swift中的整型在使用`+`、`-`、`*`溢出时，会产生运行时错误。不同类型的整型无法相互赋值，必须先进行转换。因此，为方便变量传递，通常都使用`Int`类型。

## 浮点数

Swift中有两种浮点型，分别为32位的`Float`和64位的`Double`。

## 布尔型

Swift中的布尔型命名为`Bool`，其真值为`true`，假值为`false`。

## 字符串

Swift中的字符串类型命名为`String`。

```swift
let str: String = "hello"
```

右侧的字符串中可插入变量名，在赋值前，其中的变量名会被替换为变量的值。

```swift
let name = "Qi"
let greet = "hello \(name)" // greet被赋值为"hello Qi"
```

## Tuple

Swift中可以通过`Tuple`将若干个不同类型的变量绑定在一起。

```swift
let http404Error = (404, "Not Found") // http404Error的类型是(Int, String)
```

通过以下方法可以解出`Tuple`中的数据

```swift
let (statusCode, statusText) = http404Error
// 或者
let statusCode = http404Error.0 // Tuple中第0个元素
let statusText = http404Error.1 // Tuple中第1个元素
```

# 断言

Swift中可通过`assert`判断程序运行的输入和产出是否符合预期，若不符合则程序产生运行时错误。

```swift
assert(age >= 0, "A person's age cannot be less than zero")
```

assert在开启编译器优化时会被忽略。
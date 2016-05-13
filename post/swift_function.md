<!--
+++
date = "2016-05-11T21:09:04+08:00"
draft = true
title = "Swift从入坑到弃坑_函数"
slug = "swift_tutorial_function"
weight = 4
categories = "swift_tutorial"

+++
-->

# 函数声明

```swift
func sum1(withX x:Int, andY y:Int) -> Int {
  return x + y
}
```

`func`关键字表示函数声明的开始，接着是函数名`sum`。函数名后括号内的是函数的形参列表，以逗号分隔。其中每个参数都具有`[外部名称] [内部名称]:[类型]`的形式。内部名称供函数内部访问变量使用；外部名称在函数调用时使用。

```swift
sum1(withX:1, andY:2)
```

外部名称在声明时可省略，默认使用内部名称作为外部名称。函数在被调用时必须在实参列表中指定外部名称，除非参数在声明时使用`_`作为外部名称。第一个参数可直接省略外部名称，调用时无需指定。

```swift
func sum2(x:Int, _ y:Int) -> Int {
  return x + y
}

sum2(1, 2)
```

`->`后的是函数的返回值类型，返回值至多只能有一个。若没有返回值，可如下表示。

```swift
func foo1() -> Void { } // 使用Void类型
func foo2() -> () { } // 使用0个元素的Tuple
func foo3() { } // 返回值和->一起省略
```

花括号内的是函数体，return语句指定了函数的返回值。

Swift中函数的名称由括号前的名称和参数的外部名称共同构成，如`sum1`的函数名称为`sum1(withX:andY:)`。强制省略的外部名称由`_`表示，如`sum2`的函数名称为`sum2(_:_:)`。

# 函数重载

Swift中具有相同函数名（包含外部名称）的函数，若函数参数和返回值不同，则可以重载。若只有返回值不同，则函数调用时，必须可从上下文推断要调用函数的返回值，否则会造成编译错误。

```swift
func sum(x:Int, _ y:Int) -> Int
func sum(x:Float, _ y:Float) -> Float

func say() -> String
func say() -> Int // 仅有返回值不同也可重载

let x = say() // 编译错误！无法推导x的类型，无法判断要调用的重载函数
let y: Int = say() // OK。调用返回值为Int的重载函数
```




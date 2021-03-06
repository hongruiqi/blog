<!--
+++
date = "2016-05-11T18:16:40+08:00"
draft = false
title = "Swift从入坑到弃坑_可选值"
slug = "swift_tutorial_optional"
weight = 3
categories = "swift_tutorial"

+++
-->

# 可选值

Swift中变量的值可以声明为可选，声明方式是在类型名后加上`?`号。

```swift
var x Int?
```

可选值的变量中可以保存`?`号前类型的值，也可以赋值为`nil`，表示其中没有值。可选值的变量在声明时若不进行初始化，则默认初始化为`nil`。

# 读取值

可选值的变量在读取值前，需要判断值是否存在，方法是与nil进行比较。

```swift
if x == nil {
  print("absent")
} else {
  let xx = x!
  print("x is \(xx)")
}
```

可选值变量必须通过在其后添加`!`号读取，无法直接赋值给普通变量。若变量中不存在值，则在读取时会产生运行时错误。因此，在读取前需要先进行判断。

判断和读取值可以在if的条件内合并书写。

```swift
if let xx = x {
  print("x is \(xx)")
} else {
  print("absent")
}
```

# 可选值的应用场景

可选值可用于错误的反馈。例如`Int(_:)`可以将字符串转换为整型数，但并不是所有的字符串都可转换成整型数，因此需要在返回值中对失败的情况作区分。

```swift
let x: Int? = Int("not a number")
```

此时，`Int`函数返回的是`Int?`型，当参数字符串中不是整数时，返回`nil`。

# 隐式拆包的可选值

在某些场景下，我们可以确定得到的可选值变量里一定保存着值，那么可以使用隐式拆包，方法是在类型名后加上`!`号。此时，隐式拆包的变量可以直接赋值给非可选值的变量。

```swift
let s = 111
let x: Int! = Int("\(s)")
let y: Int = x
```

若隐式拆包时，可选值变量中的不存在，则会产生运行时错误。

```swift
let x: Int? = Int("not a number")
let y: Int! = x // 运行时错误，拆包时值不存在
let z: Int = x // 编译时错误，可选值变量赋给普通变量
let w: Int = x! // 运行时错误，拆包时值不存在
```


<!--
+++
date = "2016-05-12T07:38:03+08:00"
draft = false
title = "Swift从入坑到弃坑_字符和字符串"
slug = "swift_tutorial_string"
weight = 2

+++
-->

# 字符串类型和初始化

Swift中的字符串类型为`String`，其中包含若干`Character`类型的字符。

```swift
let greet = "hello world" // String
let letter = "a" // Character
```

# 字符串的常用操作

```swift
// 字符串初始化
var emptyString = ""
var anotherEmptyString = String()

// 字符串判空
emptyString.isEmpty

// 字符串连接
var a = "hello"
a += "world"
a = a + "!"
```

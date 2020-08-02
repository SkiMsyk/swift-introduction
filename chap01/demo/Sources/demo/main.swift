print("Hello, world!")

// var 変数名: 型名
// let 定数名: 型名

var a: Int
a = 1
print(a)

let a1: Int = 123
print(a1)

let a2 = 123
print(type(of: a2))

// member equation
let a3 = "Hello, World!"
print(a3.count)
print(a3.starts(with: "Hello"))

//
let original = [1,2,3]
let doubled = original.map({ value in value * 2})
print(doubled)

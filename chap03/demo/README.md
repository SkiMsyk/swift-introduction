# Basic types

## Optional<wrapped>type

This type stands for value to be none or not.

- if you must tolerate `nil`, you can use `Optional<wrapped>`type.
- There is sintax sugar for `Optional<Wrapped>`. That is `Int?` (This meands `Optional<Int>`)
- e.g
    - `Optional<Int>`, `Optional<String>`


## Type inference

列挙方のケース
- If we generate a value of `.some`, Type inference would be possible with value that `.some` has. 

```swift
let some = Optional.some(1)
```

- In the case that `.none` is generated, Type inference would not be possible.
- For type inference, we must fix the variable type in advance.

```swift
let none: Int? = Optional.none // ok
```

## Generate value of `Optional<Wrapped>` type  

This expressions are more general because of simplicity.

```swift
var a: Int?
```

a = nil // .none
a = Optional(1) // .some by an initializer
a = 1 // .some by an assignment

### Generate `.none`

```swift
let optionalInt: Int? = nil
let optionalString: String? = nil
```


## Unwrap: extract a value  

- Arithmetic operations for `Int?`'s may be error. `Int?` type may have `nil`.
- For execution of the operations, we extract values of `Int?` type variables.

1. Optional binding
2. `??` operator
3. Forced unwrap

### Optional biding

format
```swift
if let varName = Optional<wrapped> variable {
    process
}
```

example
```swift
let optionalA = optional("a") // String? type

if let a = optionalA {
    print(type(of: a)) // this program is executed if optionalA has some value (not nil).
}
```
### `??` operator

```swift
let optionalInt: Int? = 1
let int = optionalInt ?? 3 // this is 1
```

```swift
let optionalInt: Int? = nil
let int = optionalInt ?? 3 // this is 3
```

### Forced unwrap  

It is duplicated for many cases.

```swift
let a: Int? = 1
let b: Int? = 1

a! + b! // 2
```

# Optional chain  

This is the way to access methods and property of value without unwrap.


- example for using optional binding

```swift
let optionalDouble = Optional(1.0) // 1
let optionalIsInfinite: Bool?
if let double = optionalDouble {
    optionalIsInfinite = double.isInfinite
}else {
    optionalIsInfinite = nil
}

print(String(describing: optionalIsInfinite))
```

result
```
Optional(false)
```


# Any type

- `Any` type stands for every type.

```swift
let string: Any = "abc"
let int: Any = 123
```
- Any type doesn't have arithmetic operation.


# Tuple

- Tuple type can deal with multiple types as one type.

```swift
var tuple: (Int, String)
```

```swift
var tuple: (Int, String)
tuple = (1, "a")
```

- accessing by index
```swift
let tuple = (1, "a")
let int = tuple.0
let string = tuple.1
```

- accessing by element name

```swift
let tuple = (int: 1, string: "a")
let int = tuple.int
let string = tuple.string
```

- accessign by assignment

```swift
let int: Int
let string: String
(int, string) = (1, "a")
```


```swift
let (int, string) = (1, "a")
```

# Void type

This means empty tuple. (Void is a tuple has 0 elements.)

```swift
() // Void type
```

# Cast

## Upcast

- example: Upcasting from String type to Any type

```swift
let any = "abc" as Any
```

# Type judgement

```swift
let a: Any = 1
let isInt = a is Int
```

# Protocol

## Equatable protocol
Equatable protocol is for verifying equivalence. 
Verifying is executed by `==` operator.

- `==`, `!=`
- Equatable protocol deosn't work for `Any` type.
- Equatable protocol may works `Optional<Wrapped>` type when `Wrapped` type complies with equatable protocol.

## Comparable protocol

- `<`, `>`, `<=`, `>=`
- 

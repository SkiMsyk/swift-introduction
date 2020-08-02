import Foundation

// order comparison between two string
let options = String.CompareOptions.caseInsensitive
let order = "abc".compare("ABC", options: options)
let res: Bool = order == ComparisonResult.orderedSame // true
print(res)

// search in a string
let res1 = "abc".range(of: "bc") // values from 1 to 2
print(type(of:res1))

// Optional<wrapped>
let none = Optional<Int>.none
print(".none: \(String(describing: none))")

let some = Optional<Int>.some(1)
print(".some: \(String(describing: some))")

// generate .none
let optionalInt: Int? = nil
let optionalString: String? = nil

print(type(of: optionalInt), String(describing: optionalInt))
print(type(of: optionalString), String(describing: optionalString))

// Optional chain
let optionalDouble = Optional(1.0) // 1
let optionalIsInfinite: Bool?
if let double = optionalDouble {
    optionalIsInfinite = double.isInfinite
}else {
    optionalIsInfinite = nil
}

print(String(describing: optionalIsInfinite))


//eg2
let optionalDouble2 = Optional(1.0) // Optional(1.0)
let optionalIsInfinite2 = optionalDouble?.isInfinite

print(String(describing: optionalIsInfinite2))


// eg3
let optionalRange = Optional(0..<10)
let containsSeven = optionalRange?.contains(7)

print(String(describing: containsSeven))

// map(_:) and flatMap(_:)
let a61 = Optional(17)
let b61 = a61.map({ value in value * 2})
print(b61)
print(type(of: b61))

let c61 = a61.map({ value in String(value)})
print(c61)

let d61 = Optional("17")
let e61 = d61.flatMap({ value in Int(value)})
print(e61)

let f61 = d61.map({ value in Int(value)})
print(f61)

// Protocol
let doubleRight = 3.9
doubleLeft == doubleRight


var friendlyWelcome = "Hello"
friendlyWelcome = "Bonjour"

let languageName = "Swift"

print("Welcome to", "Paris", separator : " ", terminator : " ")
print("Swift language")


print("this is a string", terminator : " ")

print("The current value of friendlyWelcome is \(friendlyWelcome)")


let meaningOfLife = 42 // Deduce Int
let pi = 3.14159 // inferred to be of type Double
let anotherPi = 3 + 0.14159 // inferred to be of type Double

let minValue = UInt8.min
let maxValue = UInt8.max

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let twoThousand : UInt16 = 2_000
let one : UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourOneFiveNine = 0.14159
let ppi = Double(three) + pointOneFourOneFiveNine
let integerPi = Int(pi)

let turnipsAreDelicious = false
if turnipsAreDelicious { print("Mmm, tasty turnips!") }
else { print("Eww, turnips are horrible.") }

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")

print("The status code is \(http404Error.0)")

let http200Status = (statusCode : 200, description : "Ok")
print("The status code is \(http200Status.statusCode)")

var serverResponseCode : Int? = 404
serverResponseCode = nil

var possibleNumber : Int? = 32
if let actualNumber = possibleNumber{
    print("\(possibleNumber)' has an integer value of \(actualNumber)")
}
else {
    print("32 could not be converted to an intger")
}

let possibleString : String? = "An optional string"
let forcedString : String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString


if let definiteString = assumedString {
    print(definiteString)
}

let age = -3
//assert(age >= 0, "A person's age cannot be less than zero")

let defaultColorName = "red"
var userDefinedColorName : String?
var colorNameToUSe = userDefinedColorName ?? defaultColorName

for index in 1...5{
    print("\(index) times 5 is \(index)*5")
}

let names = ["Anaa", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i+1) is called \(names[i])")
}


for name in names[2...] { // 2… end of the array
    print(name)
}
for name in names[...2] { // 2… end of the array
    print(name)
}
for name in names[..<2] { // 2… end of the array
    print(name)
}

let singleLineString = "These are the same."
let multilineString = """
These are the same.
"""

let lineBreaks = """

 This string starts with a line break. • It also ends with a line break.

 """

var emptyString = ""
if emptyString.isEmpty{ print ("Nothing to see here")}

var variableString = "Horse"
variableString += " and carriage"

for character in "Dog!🐶".characters { print(character) }

let catCharacters : [Character] =  ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)

let string1 = "hello" ; let string2="there"
var welcome = string1 + string2

let exclamationMark: Character = "!"
welcome.append(exclamationMark)

let multiplier = 3
let message = " \(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

let precomposed : Character = "\u{D55C}"
let decomposed : Character = "\u{1112}\u{1161}\u{11AB}"

let eAcute : Character = "\u{E9}"
let combimedAcute : Character = "\u{65}\u{301}"
let enclosedEAcute: Character = "\u{65}\u{20DD}"

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before:greeting.endIndex)]
greeting[greeting.index(after:greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy:7)
greeting[index]
for index in greeting.indices{
    print("\(greeting[index]) ", terminator: " ")
}

var Welcome = "hello"
Welcome.insert("!", at: Welcome.endIndex)
Welcome.insert(contentsOf: " there" , at: Welcome.index(before:Welcome.endIndex))
Welcome.remove(at : Welcome.index(before : Welcome.endIndex))
let range = Welcome.index(Welcome.endIndex, offsetBy : -6)..<Welcome.endIndex
Welcome.removeSubrange(range)

let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal") }

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    print("These two characters are not equivalent") }

let dogString = "Dog!!🐶"

for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: " ") }

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: " ") }

for scalar in dogString.unicodeScalars {
    print("\(scalar.value)", terminator: " ") }

var someInts = [Int]()
print("someInts is of type [Int] with \(someInts.count) items.")

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var shoppingList: [String] = ["Eggs", "Milk"]
for item in shoppingList { print(item) }

for (index, value) in shoppingList.enumerated() { print("Item \(index + 1): \(value)") }

var letters = Set<Character>()
letters.insert("A")

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
print("I have \(favoriteGenres.count) favorite music genres.")
if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")}
favoriteGenres.insert("Jazz")
if let removedGenre = favoriteGenres.remove("Rock") { print("\(removedGenre)? I'm over it.") }

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.") }
else { print("It's too funky in here.") }


for genre in favoriteGenres {
    print("\(genre)", terminator:" ") }

for genre in favoriteGenres.sorted() { print("\(genre)", terminator: " ") }

var oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
oddDigits.union(evenDigits).sorted()
oddDigits.intersection(evenDigits).sorted()
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]
houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)


var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")}

airports["LHR"] = "London"
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)") }

import Foundation



// Arrays, Sets

var fruits = ["Apple", "Pineapple"]
fruits.append("Orange")
fruits.append(contentsOf: ["Mango, Banana"])

print(fruits)


// If we try to get item from non existing index - app will crash

//let fruitAtIndex5 = fruits[5]
//print(fruitAtIndex5)


// Check if index exists

if fruits.indices.contains(2) {
    print("there is index 5")
} else {
    print("there is no index 5")
}

// If we try to get item from non existing index - app will crash

//let fruitAtIndex5 = fruits[5]
//print(fruitAtIndex5)

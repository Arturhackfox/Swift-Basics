import UIKit

// Enum is the same as Struct except we know all cases at runtime.


// If we don't know all potential cases, then we use structs
struct CarModel {
    let brand: CarBrand
    let model: String
}

struct CarBrand {
    let title: String
}

let ford = CarBrand(title: "Ford")
let lamborhini = CarBrand(title: "Lamborghini")
let mercedes = CarBrand(title: "Mercedes")


let car1 = CarModel(brand: ford, model: "fiesta")
let car2 = CarModel(brand: lamborhini, model: "Huracane")
let car3 = CarModel(brand: mercedes, model: "e-class")

print(car1.brand.title)
print(car1.model)



// We create enum now if have only 2  brands
// We do prefer enums when we can use them
// Problem is - we need to know all of these cases (ford, tayota) when we're writing the code
// Enums are stored in memory the same way as Struct but we cannot mutate them
enum CarBrandOption {
    case ford, toyota
    
    var title: String {
        switch self {  // switch current "version", "instance" of CarBrandOption we are using                      right now.
        case .ford:
            return "Ford 🫏"
        case .toyota:
            return "Toyota ⚡️"
        }
    }
}


struct CarModel2 {
    let brand: CarBrandOption
    let model: String
}

let myCar1 = CarModel2(brand: .ford, model: "fiesta")
let myCar2 = CarModel2(brand: .toyota, model: "camry")

print(myCar1.brand.title)
print(myCar2.brand.title)






import Foundation


for x in 0..<5 {
    print(x)
}



let array = ["Alpha", "Beta", "Gama", "Delta", "Epsilon"]

for i in array {
    print(i)
}


struct LessonModel {
    var title: String
    var isFav: Bool
}

let lessons = [
    LessonModel(title: "Algebra", isFav: false),
    LessonModel(title: "English", isFav: true),
    LessonModel(title: "Drawing", isFav: true),
    LessonModel(title: "Chemistry", isFav: false)
]

var favLessons = [LessonModel]()

for i in lessons {
    if i.isFav {
        favLessons.append(i)
    } else {
        print("\(i.title) 🤢")
    }
}

print(favLessons)

// Control flow

for (index, currentValue) in favLessons.enumerated() {
    
    if index == 1 {
        break
    }
    
    print("Index is: \(index) || value: \(currentValue)")
}

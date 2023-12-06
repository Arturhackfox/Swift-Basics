
import Foundation

// Protocol - it's a set of rules, "template", "шаблон"

struct WokerModel: BaseWorker {
    let name: String

    func sayHi() {
        print("My name is \(name), Hello!")
    }
    
}

protocol BaseWorker {
    var name: String { get } //the value read only
    
    func sayHi()
}

var woker1 = WokerModel(name: "Mikle")

print(woker1.name)

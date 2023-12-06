
import Foundation

// all data from view model comes to my contentview screen

class MyViewModel {
    let title: String
    private(set) var showButton: Bool
    
    init(title: String, showButton: Bool){
        self.title = title
        self.showButton = showButton
        print("Object created and initialized to memory")
    }
    
    deinit {
        // this code runs automatically as the object is being removed from memory.
        print("object removed from memory")
    }
    
    func hideButton(){
        showButton = false
    }
}

// Notice that we are using a "let" because:
// The object itself is not changing
// The data inside the object is changing
let vm = MyViewModel(title: "test", showButton: true)
vm.hideButton()  // false




import Foundation


// Immutable struct

struct UserModel1 {
    let name: String
    let isPremium: Bool
    
    func activatePremim() -> UserModel1 {
        UserModel1(name: name, isPremium: true)
    }
}

var user1 = UserModel1(name: "Nick", isPremium: false)
user1.isPremium
user1 = user1.activatePremim()
user1.isPremium



//Mutable struct

struct UserModel2 {
    let name: String
    private(set) var isPremium: Bool
    
    mutating func activatePremium() {
        isPremium = true
    }
}

var user2 = UserModel2(name: "Nick", isPremium: false)
user2.isPremium
user2.activatePremium()
user2.isPremium


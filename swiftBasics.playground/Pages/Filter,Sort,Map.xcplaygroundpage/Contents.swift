
import Foundation

struct UserModel {
    var name: String
    var isPremiun: Bool
    var order: Int
}


var users = [
    UserModel(name: "Arthur", isPremiun: true, order: 3),
    UserModel(name: "Nick", isPremiun: false, order: 1),
    UserModel(name: "Jesica", isPremiun: true, order: 23),
    UserModel(name: "Natalie", isPremiun: false, order: 15)
]

let premiumUsers = users.filter { $0.isPremiun }
print(premiumUsers)


let premiumBadged = premiumUsers.map{ $0.name + "✨" }
print(premiumBadged)

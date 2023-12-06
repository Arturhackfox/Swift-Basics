
import Foundation

var isFruit: [String: Bool] = [
    "Apple": true,
    "Orange": true,
    "Sasuage": false
]

isFruit["Apple"]
isFruit["Sasuage"]


enum Cars {
    case lada, mercedes, ferrari
}

var garage: [Cars: Bool] = [
    .lada: false,
    .mercedes: true,
    .ferrari: false
]

garage[.ferrari]
garage[.mercedes]
garage[.lada]

//
//  Cat.swift
//  Cats
//
//  Created by UPIT on 3.08.21.
//

import SwiftUI

struct Cat: Identifiable {
    var id = UUID()
    var nickname: String
    var breed: String
    
    var imageName: String { return breed }
}

#if DEBUG
let testData = [
    Cat(nickname: "Bella", breed: "Aegean"),
    Cat(nickname: "Kitty", breed: "Abyssinian"),
    Cat(nickname: "Lily", breed: "American Bobtail"),
    Cat(nickname: "Charlie", breed: "American Curl"),
    Cat(nickname: "Lucy", breed: "American Shorthair"),
    Cat(nickname: "Leo", breed: "Arabian Mau"),
    Cat(nickname: "Milo", breed: "Balinese"),
    Cat(nickname: "Jack", breed: "Asian")
]
#endif


//
//  Profile.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 07.09.2021.
//

import Foundation

struct ProfileUser {
    let name: String
    let phoneNumber: String
    let email: String
    let address: CoffeShopAddress

    enum CoffeShopAddress: Int, CaseIterable {
        case timiryazeva
        case calvarijskaya
        case melnikajte
    }
}

class SharedProfile {
    static var shared = SharedProfile()

    var profile: ProfileUser?

    private init() {}
}

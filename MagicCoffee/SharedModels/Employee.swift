//
//  Employee.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 23.08.2021.
//

import Foundation

struct Employee {
    let name: String
    let imageUrl: String?
    let level: Level
    let isAvailable: Bool

    enum Level {
        case low
        case middle
        case high
    }
}


//
//  CoffeeVariety.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 31.08.2021.
//

import Foundation

typealias Countries = [CoffeeCountry]

struct CoffeeCountry: Decodable {
    let name: String
    let varieties: [String]

    static func load() -> Countries? {
        do {
            let countries = try JSONDecoder().decode(Countries.self, from: Data(raw.utf8))
            return countries
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }

    private static let raw: String = """
    [
        {
            "name": "Бразилия",
            "varieties": [
                "Santos",
                "Burbon Santos",
                "Minas",
                "Rio",
                "Canilon",
                "Flat Bit"
            ]
        },
        {
            "name": "Columbia",
            "varieties": [
                "Nescafe",
                "Tchibo",
                "Golden Eagle",
                "Jacobs",
                "Moccona",
                "Starbucks"
            ]
        },
        {
            "name": "Costa Rica",
            "varieties": [
                "costaRica",
                "burbonSantos",
                "minas",
                "rio",
                "canilon",
                "flatBit"
            ]
        },
        {
            "name": "Ямайка",
            "varieties": [
                "yamaica",
                "burbonSantos",
                "minas",
                "rio",
                "canilon",
                "flatBit"
            ]
        }
    ]
    """
}


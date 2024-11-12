//
//  CoffeeCountriesModels.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 26.08.2021.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

enum CoffeeCountries {
    enum Fetch {
        struct Request {}

        struct Response {
            var model: Model
        }

        struct ViewModel {
            var root: CoffeeCountries.RootViewModel
        }
    }

    enum Close {
        struct Request {}

        struct Response {}

        struct ViewModel {}
    }

    enum Buy {
        struct Request {}

        struct Response {}

        struct ViewModel {}
    }

    enum SelectCountry {
        struct Request {
            var index: Int
        }

        struct Response {
            var model: Model
        }

        struct ViewModel {
            var root: CoffeeCountries.RootViewModel
        }
    }

    struct Model {
        var items: Countries
        var selectedCountry: Int?
    }

    struct RootViewModel {
        var countryNameItems: [String]
        var selectedCountry: Int?
    }

    typealias Completion = (Model) -> Void
    typealias EmptyCompletion = () -> Void
}

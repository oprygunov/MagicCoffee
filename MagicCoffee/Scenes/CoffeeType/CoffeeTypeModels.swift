//
//  CoffeeTypeModels.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 26.08.2021.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

enum CoffeeType {
    enum Fetch {
        struct Request {}

        struct Response {
            var model: Model
        }

        struct ViewModel {
            var root: CoffeeType.RootViewModel
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

    enum SelectVariety {
        struct Request {
            var index: Int
        }

        struct Response {
        }

        struct ViewModel {}
    }

    struct Model {
        var items: [String]
    }

    struct RootViewModel {
        var varietyNameItems: [String]
    }

    typealias Completion = (Model) -> Void
    typealias EmptyCompletion = () -> Void
}

//
//  StartupScreenModels.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 08.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

enum StartupScreen {
    enum Fetch {
        struct Request {}

        struct Response {
            var model: Model?
        }

        struct ViewModel {
            var route: Route
        }
    }

    struct Model {
        var hasUser: Bool
        var didLogin: Bool
    }

    enum Route {
        case onboarding
        case login
        case menu
    }

    typealias FetchCompletion = (Result<Model, Error>) -> Void
}
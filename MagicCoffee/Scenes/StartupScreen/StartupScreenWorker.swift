//
//  StartupScreenWorker.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 08.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

final class StartupScreenWorker: StartupScreenWorkingLogic {
    func fetch(_ completion: StartupScreen.FetchCompletion?) {
        let hasUser = !(UserDefaults.standard.string(forKey: "email")?.isEmpty ?? true)
        let didLogin = UserDefaults.standard.bool(forKey: "didLogin")
        completion?(.success(.init(hasUser: hasUser, didLogin: didLogin)))
    }
}

//
//  RegistrationRouter.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 11.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class RegistrationRouter {
    weak var viewController: RegistrationViewController?
    var dataStore: RegistrationDataStore?

    init(viewController: RegistrationViewController, dataStore: RegistrationDataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

extension RegistrationRouter: RegistrationRoutingLogic {
    func login() {
        viewController?.navigationController?.pushViewController(AuthBuilder.build(), animated: true)
    }
    
    func next() {
        viewController?.navigationController?.pushViewController(ForgotPasswordBuilder.build(), animated: true)
    }
    
    func back() {
        viewController?.navigationController?.popViewController(animated: true)
    }
    
    func show() { }
}

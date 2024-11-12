//
//  AuthRouter.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 01.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class AuthRouter {
    weak var viewController: AuthViewController?
    var dataStore: AuthDataStore?

    init(viewController: AuthViewController, dataStore: AuthDataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

extension AuthRouter: AuthRoutingLogic {
    func next() {
        viewController?.navigationController?.pushViewController(TwoFactorVerificationBuilder.build(), animated: true)
    }

    func forgotPassword() {
        viewController?.navigationController?.pushViewController(ForgotPasswordBuilder.build(), animated: true)
    }
    
    func registration() {
        viewController?.navigationController?.pushViewController(RegistrationBuilder.build(), animated: true)
    }
    
    func back() {
        viewController?.navigationController?.popViewController(animated: true)
    }
}

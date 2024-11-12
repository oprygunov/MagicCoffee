//
//  ForgotPasswordRouter.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 11.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class ForgotPasswordRouter {
    weak var viewController: ForgotPasswordViewController?
    var dataStore: ForgotPasswordDataStore?

    init(viewController: ForgotPasswordViewController, dataStore: ForgotPasswordDataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

extension ForgotPasswordRouter: ForgotPasswordRoutingLogic {
    func next() {
        viewController?.navigationController?.pushViewController(AuthBuilder.build(), animated: true)
    }
    func back() {
        viewController?.navigationController?.popViewController(animated: true)
    }
    
    func show() { }
}

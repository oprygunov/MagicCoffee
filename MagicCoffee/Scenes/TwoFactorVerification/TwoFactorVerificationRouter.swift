//
//  TwoFactorVerificationRouter.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 11.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class TwoFactorVerificationRouter {
    weak var viewController: TwoFactorVerificationViewController?
    var dataStore: TwoFactorVerificationDataStore?

    init(viewController: TwoFactorVerificationViewController, dataStore: TwoFactorVerificationDataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

extension TwoFactorVerificationRouter: TwoFactorVerificationRoutingLogic {
    func close() {
        viewController?.navigationController?.popViewController(animated: true)
    }
    
    func next() {
        viewController?.navigationController?.pushViewController(TabbarBuilder.build(), animated: true)
    }
}

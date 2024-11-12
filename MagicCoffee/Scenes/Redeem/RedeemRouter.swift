//
//  RedeemRouter.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 07.09.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class RedeemRouter {
    weak var viewController: RedeemViewController?
    var dataStore: RedeemDataStore?

    init(viewController: RedeemViewController, dataStore: RedeemDataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

extension RedeemRouter: RedeemRoutingLogic {
    func close() {
        viewController?.navigationController?.popViewController(animated: true)
    }
    func buy() {
        viewController?.navigationController?.pushViewController(MyOrderBuilder.build(), animated: true)
    }
}

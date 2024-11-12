//
//  OrderConfirmedRouter.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 15.09.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class OrderConfirmedRouter {
    weak var viewController: OrderConfirmedViewController?
    var dataStore: OrderConfirmedDataStore?

    init(viewController: OrderConfirmedViewController, dataStore: OrderConfirmedDataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

extension OrderConfirmedRouter: OrderConfirmedRoutingLogic {
    func close() {
        viewController?.navigationController?.pushViewController(MenuBuilder.build(), animated: true)
    }
}

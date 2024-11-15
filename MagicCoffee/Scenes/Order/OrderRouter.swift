//
//  OrderRouter.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 13.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class OrderRouter {
    weak var viewController: OrderViewController?
    var dataStore: OrderDataStore?

    init(viewController: OrderViewController, dataStore: OrderDataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

extension OrderRouter: OrderRoutingLogic {
    func show() { }
}

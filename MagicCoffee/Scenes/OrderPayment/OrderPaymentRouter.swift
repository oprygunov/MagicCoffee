//
//  OrderPaymentRouter.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 26.08.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class OrderPaymentRouter {
    weak var viewController: OrderPaymentViewController?
    var dataStore: OrderPaymentDataStore?

    init(viewController: OrderPaymentViewController, dataStore: OrderPaymentDataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

extension OrderPaymentRouter: OrderPaymentRoutingLogic {
    func next() {
        let presenting = viewController?.presentingViewController
        viewController?.dismiss(animated: true) {
            presenting?.present(OrderConfirmedBuilder.build(), animated: true)
        }
    }
}

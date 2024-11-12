//
//  BaristaRouter.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 22.08.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class BaristaRouter {
    weak var viewController: BaristaViewController?
    var dataStore: BaristaDataStore?

    init(
        viewController: BaristaViewController,
        dataStore: BaristaDataStore
    ) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

extension BaristaRouter: BaristaRoutingLogic {
    func close() {
        viewController?.navigationController?.popViewController(animated: true)
    }
    
    func buy() { }

    func select() {
        viewController?.navigationController?.popViewController(animated: true)
    }
}

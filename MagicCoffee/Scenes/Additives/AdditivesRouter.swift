//
//  AdditivesRouter.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 26.08.2021.
//  Copyright (c) 2021. All rights reserved.
//

import UIKit

final class AdditivesRouter {
    weak var viewController: AdditivesViewController?
    var dataStore: AdditivesDataStore?

    init(viewController: AdditivesViewController, dataStore: AdditivesDataStore) {
        self.viewController = viewController
        self.dataStore = dataStore
    }
}

extension AdditivesRouter: AdditivesRoutingLogic {
    func close() {
        viewController?.navigationController?.popViewController(animated: true)
    }

    func buy() {
        viewController?.navigationController?.pushViewController(MyOrderBuilder.build(), animated: true)
    }

    func select() { }
}

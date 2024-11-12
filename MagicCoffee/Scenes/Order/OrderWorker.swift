//
//  OrderWorker.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 13.07.2021.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

final class OrderWorker: OrderWorkingLogic {
    var model: Order.Model = {
        let model = Order.Model(
            currentOrder: [],
            history: []
        )
        return model
    }()

    func fetch(_ completion: Order.FetchCompletion?) {
        completion?(.success(self.model))
    }

    func buy(item: OrderItem, _ completion: Order.FetchCompletion?) {
        var currentOrder = model.currentOrder
        currentOrder.append(item)
        self.model = .init(currentOrder: currentOrder, history: self.model.history)
        completion?(.success(self.model))
    }
}

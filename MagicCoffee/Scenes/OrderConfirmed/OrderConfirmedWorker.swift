//
//  OrderConfirmedWorker.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 15.09.2021.
//  Copyright (c) 2021. All rights reserved.
//

import Foundation

final class OrderConfirmedWorker: OrderConfirmedWorkingLogic {
    func fetch(_ completion: OrderConfirmed.Completion?) {
        guard let completion = completion else { return }
        let model: OrderConfirmed.Model = .init(
            name: "Алексей Петров",
            orderTime: "16:20",
            orderAdress: "г. Нижний Новгород, ул. Тимирязева, 67.")
        completion(model)
    }
}

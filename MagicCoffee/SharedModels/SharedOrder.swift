//
//  Order.swift
//  MagicCoffee
//
//  Created by Oleg Prygunov on 24.08.2021.
//

import Foundation

class SharedOrder {
    static var shared = SharedOrder()

    var currentOrderItem: OrderItem?
    
    var currentOrder: [OrderItem] = []

    private init() {}
}
